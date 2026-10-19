`timescale 1ns / 1ps


module tb_uart_rx;

reg         clk;
reg         rst_n;
reg         i_rx;

wire [7:0]  o_rx_data;
wire        o_rx_busy;
wire        o_rx_done;

parameter CLKS_PER_BIT = 417;
parameter CLK_PERIOD   = 20; // 50MHz

always #(CLK_PERIOD/2) clk = ~clk;

uart_rx #(
.CLKS_PER_BIT(CLKS_PER_BIT)
) u_uart_rx (
.clk       (clk),
.rst_n     (rst_n),
.i_rx      (i_rx),
.o_rx_data (o_rx_data),
.o_rx_busy (o_rx_busy),
.o_rx_done (o_rx_done)
);

// Send UART frame: 1 start, 8 data, 1 stop
task send_uart;
input [7:0] data;
integer i;
begin
// START bit
i_rx = 1'b0;
repeat(CLKS_PER_BIT) @(posedge clk);

// DATA bits - LSB first
for (i = 0; i < 8; i = i + 1) begin
@(negedge clk);
i_rx = data[i];
repeat(CLKS_PER_BIT) @(posedge clk);
end

// STOP bit
@(negedge clk);
i_rx = 1'b1;
repeat(CLKS_PER_BIT) @(posedge clk);
end
endtask

initial begin
clk   = 0;
rst_n = 0;
i_rx  = 1;

repeat(5) @(negedge clk);
rst_n = 1;

repeat(5) @(negedge clk);

send_uart(8'h55);
repeat(10) @(negedge clk);

send_uart(8'hA3);
repeat(10) @(negedge clk);

$finish;
end

always @(posedge clk) begin
if (o_rx_done) begin
$display("RX DATA = %h", o_rx_data);
end
end

endmodule