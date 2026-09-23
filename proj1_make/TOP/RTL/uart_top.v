`timescale 1ns/1ps

module uart_top (

    // External PAD ports
    CLK,
    RST_N,
    UART_RX,
    UART_TX

);


//==================================================
// Port declaration
//==================================================

input   CLK;
input   RST_N;
input   UART_RX;
output  UART_TX;


//==================================================
// Internal signals
//==================================================

wire    w_clk;
wire    w_rst_n;
wire    w_uart_rx;
wire    w_uart_tx;


//==================================================
// Input PAD
//==================================================

PADDI u_pad_clk (
    .PAD (CLK),
    .Y   (w_clk)
);

PADDI u_pad_rst_n (
    .PAD (RST_N),
    .Y   (w_rst_n)
);

PADDI u_pad_uart_rx (
    .PAD (UART_RX),
    .Y   (w_uart_rx)
);

//========= Temporary assign ======================
assign w_uart_tx = w_uart_rx;


//==================================================
// Output PAD
//==================================================

PADDO u_pad_uart_tx (
    .A   (w_uart_tx),
    .PAD (UART_TX)
);


//==================================================
// UART Core
//==================================================

// UART RTL 완성 후 연결
//
// uart u_uart (
//     .clk   (w_clk),
//     .rst_n (w_rst_n),
//     .rx    (w_uart_rx),
//     .tx    (w_uart_tx)
// );


endmodule
