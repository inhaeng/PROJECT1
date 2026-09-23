`timescale 1ns/1ps

module tb_uart_top;

reg     CLK;
reg     RST_N;
reg     UART_RX;

wire    UART_TX;


//==================================================
// DUT
//==================================================

uart_top u_uart_top (
    .CLK        (CLK),
    .RST_N      (RST_N),
    .UART_RX    (UART_RX),
    .UART_TX    (UART_TX)
);


//==================================================
// Clock
//==================================================

initial begin
    CLK = 1'b0;
end

always #5 CLK = ~CLK;


//==================================================
// VCD
//==================================================

`ifdef function_sim 

initial begin
    $dumpfile("./dump/uart_top.vcd");
    $dumpvars(0, tb_uart_top);
end

`endif


//==================================================
// Stimulus
//==================================================

initial begin

    RST_N   = 1'b0;
    UART_RX = 1'b0;

    #20;

    RST_N = 1'b1;

    #20;
    UART_RX = 1'b1;

    #20;
    UART_RX = 1'b0;

    #20;
    UART_RX = 1'b1;

    #20;
    UART_RX = 1'b0;

    #20;

    $finish;

end

endmodule
