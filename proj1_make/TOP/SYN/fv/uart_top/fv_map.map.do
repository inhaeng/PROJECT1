
//input ports
add mapped point CLK CLK -type PI PI
add mapped point RST_N RST_N -type PI PI
add mapped point UART_RX UART_RX -type PI PI
add mapped point TX_DATA[7] TX_DATA[7] -type PI PI
add mapped point TX_DATA[6] TX_DATA[6] -type PI PI
add mapped point TX_DATA[5] TX_DATA[5] -type PI PI
add mapped point TX_DATA[4] TX_DATA[4] -type PI PI
add mapped point TX_DATA[3] TX_DATA[3] -type PI PI
add mapped point TX_DATA[2] TX_DATA[2] -type PI PI
add mapped point TX_DATA[1] TX_DATA[1] -type PI PI
add mapped point TX_DATA[0] TX_DATA[0] -type PI PI
add mapped point TX_START TX_START -type PI PI

//output ports
add mapped point UART_TX UART_TX -type PO PO
add mapped point TX_BUSY TX_BUSY -type PO PO
add mapped point TX_DONE TX_DONE -type PO PO
add mapped point RX_DATA[7] RX_DATA[7] -type PO PO
add mapped point RX_DATA[6] RX_DATA[6] -type PO PO
add mapped point RX_DATA[5] RX_DATA[5] -type PO PO
add mapped point RX_DATA[4] RX_DATA[4] -type PO PO
add mapped point RX_DATA[3] RX_DATA[3] -type PO PO
add mapped point RX_DATA[2] RX_DATA[2] -type PO PO
add mapped point RX_DATA[1] RX_DATA[1] -type PO PO
add mapped point RX_DATA[0] RX_DATA[0] -type PO PO
add mapped point RX_BUSY RX_BUSY -type PO PO
add mapped point RX_DONE RX_DONE -type PO PO

//inout ports




//Sequential Pins
add mapped point u_uart_rx/r_rx_busy/q u_uart_rx/r_rx_busy_reg/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_done/q u_uart_rx/r_rx_done_reg/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_sync/q u_uart_rx/r_rx_sync_reg/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_meta/q u_uart_rx/r_rx_meta_reg/Q -type DFF DFF
add mapped point u_uart_rx/r_baud_cnt[0]/q u_uart_rx/r_baud_cnt_reg_0/Q -type DFF DFF
add mapped point u_uart_rx/r_baud_cnt[1]/q u_uart_rx/r_baud_cnt_reg_1/Q -type DFF DFF
add mapped point u_uart_rx/r_baud_cnt[2]/q u_uart_rx/r_baud_cnt_reg_2/Q -type DFF DFF
add mapped point u_uart_rx/r_baud_cnt[3]/q u_uart_rx/r_baud_cnt_reg_3/Q -type DFF DFF
add mapped point u_uart_rx/r_baud_cnt[4]/q u_uart_rx/r_baud_cnt_reg_4/Q -type DFF DFF
add mapped point u_uart_rx/r_baud_cnt[5]/q u_uart_rx/r_baud_cnt_reg_5/Q -type DFF DFF
add mapped point u_uart_rx/r_baud_cnt[6]/q u_uart_rx/r_baud_cnt_reg_6/Q -type DFF DFF
add mapped point u_uart_rx/r_baud_cnt[7]/q u_uart_rx/r_baud_cnt_reg_7/Q -type DFF DFF
add mapped point u_uart_rx/r_baud_cnt[8]/q u_uart_rx/r_baud_cnt_reg_8/Q -type DFF DFF
add mapped point u_uart_rx/r_bit_cnt[0]/q u_uart_rx/r_bit_cnt_reg_0/Q -type DFF DFF
add mapped point u_uart_rx/r_bit_cnt[1]/q u_uart_rx/r_bit_cnt_reg_1/Q -type DFF DFF
add mapped point u_uart_rx/r_bit_cnt[2]/q u_uart_rx/r_bit_cnt_reg_2/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_data[0]/q u_uart_rx/r_rx_data_reg_0/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_data[1]/q u_uart_rx/r_rx_data_reg_1/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_data[2]/q u_uart_rx/r_rx_data_reg_2/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_data[3]/q u_uart_rx/r_rx_data_reg_3/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_data[4]/q u_uart_rx/r_rx_data_reg_4/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_data[5]/q u_uart_rx/r_rx_data_reg_5/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_data[6]/q u_uart_rx/r_rx_data_reg_6/Q -type DFF DFF
add mapped point u_uart_rx/r_rx_data[7]/q u_uart_rx/r_rx_data_reg_7/Q -type DFF DFF
add mapped point u_uart_rx/r_state[0]/q u_uart_rx/r_state_reg_0/Q -type DFF DFF
add mapped point u_uart_rx/r_state[1]/q u_uart_rx/r_state_reg_1/Q -type DFF DFF
add mapped point u_uart_tx/r_tx/q u_uart_tx/r_tx_reg/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_busy/q u_uart_tx/r_tx_busy_reg/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_done/q u_uart_tx/r_tx_done_reg/Q -type DFF DFF
add mapped point u_uart_tx/r_baud_cnt[8]/q u_uart_tx/r_baud_cnt_reg_8/Q -type DFF DFF
add mapped point u_uart_tx/r_baud_cnt[7]/q u_uart_tx/r_baud_cnt_reg_7/Q -type DFF DFF
add mapped point u_uart_tx/r_baud_cnt[6]/q u_uart_tx/r_baud_cnt_reg_6/Q -type DFF DFF
add mapped point u_uart_tx/r_baud_cnt[5]/q u_uart_tx/r_baud_cnt_reg_5/Q -type DFF DFF
add mapped point u_uart_tx/r_baud_cnt[4]/q u_uart_tx/r_baud_cnt_reg_4/Q -type DFF DFF
add mapped point u_uart_tx/r_baud_cnt[3]/q u_uart_tx/r_baud_cnt_reg_3/Q -type DFF DFF
add mapped point u_uart_tx/r_state[0]/q u_uart_tx/r_state_reg_0/Q -type DFF DFF
add mapped point u_uart_tx/r_state[1]/q u_uart_tx/r_state_reg_1/Q -type DFF DFF
add mapped point u_uart_tx/r_baud_cnt[2]/q u_uart_tx/r_baud_cnt_reg_2/Q -type DFF DFF
add mapped point u_uart_tx/r_bit_cnt[1]/q u_uart_tx/r_bit_cnt_reg_1/Q -type DFF DFF
add mapped point u_uart_tx/r_bit_cnt[2]/q u_uart_tx/r_bit_cnt_reg_2/Q -type DFF DFF
add mapped point u_uart_tx/r_bit_cnt[0]/q u_uart_tx/r_bit_cnt_reg_0/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_data[2]/q u_uart_tx/r_tx_data_reg_2/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_data[1]/q u_uart_tx/r_tx_data_reg_1/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_data[0]/q u_uart_tx/r_tx_data_reg_0/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_data[3]/q u_uart_tx/r_tx_data_reg_3/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_data[4]/q u_uart_tx/r_tx_data_reg_4/Q -type DFF DFF
add mapped point u_uart_tx/r_baud_cnt[1]/q u_uart_tx/r_baud_cnt_reg_1/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_data[5]/q u_uart_tx/r_tx_data_reg_5/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_data[6]/q u_uart_tx/r_tx_data_reg_6/Q -type DFF DFF
add mapped point u_uart_tx/r_tx_data[7]/q u_uart_tx/r_tx_data_reg_7/Q -type DFF DFF
add mapped point u_uart_tx/r_baud_cnt[0]/q u_uart_tx/r_baud_cnt_reg_0/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
