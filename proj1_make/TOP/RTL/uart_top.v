
`timescale 1ns / 1ps

module uart_top (
    CLK,
    RST_N,

    UART_RX,
    UART_TX,

    TX_DATA,
    TX_START,
    TX_BUSY,
    TX_DONE,

    RX_DATA,
    RX_BUSY,
    RX_DONE
);

//==================================================
// Port declaration
//==================================================

input           CLK;
input           RST_N;

input           UART_RX;
output          UART_TX;

input   [7:0]   TX_DATA;
input           TX_START;
output          TX_BUSY;
output          TX_DONE;

output  [7:0]   RX_DATA;
output          RX_BUSY;
output          RX_DONE;


//==================================================
// Internal signals
//==================================================

wire            w_clk;
wire            w_rst_n;

wire            w_uart_rx;
wire            w_uart_tx;

wire    [7:0]   w_tx_data;
wire            w_tx_start;
wire            w_tx_busy;
wire            w_tx_done;

wire    [7:0]   w_rx_data;
wire            w_rx_busy;
wire            w_rx_done;


//==================================================
// Input PAD : Clock / Reset / RX
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


//==================================================
// Input PAD : TX Control
//==================================================

PADDI u_pad_tx_start (
    .PAD (TX_START),
    .Y   (w_tx_start)
);

genvar i;

generate
    for (i = 0; i < 8; i = i + 1) begin : GEN_TX_DATA_PAD

        PADDI u_pad_tx_data (
            .PAD (TX_DATA[i]),
            .Y   (w_tx_data[i])
        );

    end
endgenerate


//==================================================
// UART TX Core
//==================================================

uart_tx #(
    .CLKS_PER_BIT(417)
) u_uart_tx (

    .clk        (w_clk),
    .rst_n      (w_rst_n),

    .i_tx_data  (w_tx_data),
    .i_tx_start (w_tx_start),

    .o_tx       (w_uart_tx),
    .o_tx_busy  (w_tx_busy),
    .o_tx_done  (w_tx_done)

);


//==================================================
// UART RX Core
//==================================================

uart_rx #(
    .CLKS_PER_BIT(417)
) u_uart_rx (

    .clk        (w_clk),
    .rst_n      (w_rst_n),

    .i_rx       (w_uart_rx),

    .o_rx_data  (w_rx_data),
    .o_rx_busy  (w_rx_busy),
    .o_rx_done  (w_rx_done)

);


//==================================================
// Output PAD : UART TX
//==================================================

PADDO u_pad_uart_tx (
    .A   (w_uart_tx),
    .PAD (UART_TX)
);


//==================================================
// Output PAD : TX Status
//==================================================

PADDO u_pad_tx_busy (
    .A   (w_tx_busy),
    .PAD (TX_BUSY)
);

PADDO u_pad_tx_done (
    .A   (w_tx_done),
    .PAD (TX_DONE)
);


//==================================================
// Output PAD : RX Data / Status
//==================================================

generate
    for (i = 0; i < 8; i = i + 1) begin : GEN_RX_DATA_PAD

        PADDO u_pad_rx_data (
            .A   (w_rx_data[i]),
            .PAD (RX_DATA[i])
        );

    end
endgenerate

PADDO u_pad_rx_busy (
    .A   (w_rx_busy),
    .PAD (RX_BUSY)
);

PADDO u_pad_rx_done (
    .A   (w_rx_done),
    .PAD (RX_DONE)
);

endmodule
