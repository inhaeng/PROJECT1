`timescale 1ns / 1ps

module uart_tx_tb;


// input

reg             clk         ;
reg             rst_n       ;

reg     [7:0]   i_tx_data   ;
reg             i_tx_start  ;


// output

wire            o_tx        ;
wire            o_tx_busy   ;
wire            o_tx_done   ;


// DUT

uart_tx #(
    .CLKS_PER_BIT(417)
)
u_uart_tx(
    .clk        (clk        ),
    .rst_n      (rst_n      ),

    .i_tx_data  (i_tx_data  ),
    .i_tx_start (i_tx_start ),

    .o_tx       (o_tx       ),
    .o_tx_busy  (o_tx_busy  ),
    .o_tx_done  (o_tx_done  )
);


// 48 MHz clock
// 1 / 48 MHz = 20.833 ns

always begin

    #10.416
    clk = ~clk;

end


// stimulus

initial begin

    clk         = 1'b0;
    rst_n       = 1'b0;

    i_tx_data   = 8'h00;
    i_tx_start  = 1'b0;


    // reset

    #100;

    rst_n = 1'b1;


    // wait

    #100;


    // send ASCII 'A'
    // 8'h41 = 0100_0001

    @(posedge clk);

    i_tx_data  <= 8'h41;
    i_tx_start <= 1'b1;


    // tx_start = 1 for one clock

    @(posedge clk);

    i_tx_start <= 1'b0;


    // wait until transmission complete

    @(posedge o_tx_done);


    // some delay

    #1000;


    $finish;

end


endmodule