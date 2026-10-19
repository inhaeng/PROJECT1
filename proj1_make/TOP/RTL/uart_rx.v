
`timescale 1ns / 1ps

module uart_rx (
    clk         ,
    rst_n       ,

    i_rx        ,

    o_rx_data   ,
    o_rx_busy   ,
    o_rx_done
);

// port declaration
input           clk         ;
input           rst_n       ;
input           i_rx        ;

output  [7:0]   o_rx_data   ;
output          o_rx_busy   ;
output          o_rx_done   ;

// parameter
parameter CLKS_PER_BIT = 417;

// state parameter
localparam IDLE  = 2'b00;
localparam START = 2'b01;
localparam DATA  = 2'b10;
localparam STOP  = 2'b11;

// internal register
reg [1:0]   r_state     ;

reg [8:0]   r_baud_cnt  ;
reg [2:0]   r_bit_cnt   ;

reg [7:0]   r_rx_data   ;

reg         r_rx_busy   ;
reg         r_rx_done   ;

// RX input synchronizer
reg         r_rx_meta   ;
reg         r_rx_sync   ;

// modeling
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        r_rx_meta <= 1'b1;
        r_rx_sync <= 1'b1;
    end
    else begin
        r_rx_meta <= i_rx;
        r_rx_sync <= r_rx_meta;
    end
end

always @(posedge clk or negedge rst_n) begin

    if (!rst_n) begin

        r_state     <= IDLE;

        r_baud_cnt  <= 9'd0;
        r_bit_cnt   <= 3'd0;

        r_rx_data   <= 8'd0;

        r_rx_busy   <= 1'b0;
        r_rx_done   <= 1'b0;

    end
    else begin

        // Done signal: one clock pulse
        r_rx_done <= 1'b0;

        case (r_state)

            // IDLE: wait for start bit
            IDLE : begin

                r_rx_busy  <= 1'b0;
                r_baud_cnt <= 9'd0;
                r_bit_cnt  <= 3'd0;

                if (r_rx_sync == 1'b0) begin
                    r_rx_busy <= 1'b1;
                    r_state   <= START;
                end

            end

            // START: check start bit at center
            START : begin

                r_rx_busy <= 1'b1;

                if (r_baud_cnt ==
                    (CLKS_PER_BIT / 2) - 1) begin

                    r_baud_cnt <= 9'd0;

                    if (r_rx_sync == 1'b0) begin
                        r_state <= DATA;
                    end
                    else begin
                        r_state   <= IDLE;
                        r_rx_busy <= 1'b0;
                    end

                end
                else begin
                    r_baud_cnt <= r_baud_cnt + 1'b1;
                end

            end

            // DATA: sample 8 bits (LSB first)
            DATA : begin

                r_rx_busy <= 1'b1;

                if (r_baud_cnt == CLKS_PER_BIT - 1) begin

                    r_baud_cnt <= 9'd0;

                    r_rx_data[r_bit_cnt] <= r_rx_sync;

                    if (r_bit_cnt == 3'd7) begin
                        r_bit_cnt <= 3'd0;
                        r_state   <= STOP;
                    end
                    else begin
                        r_bit_cnt <= r_bit_cnt + 1'b1;
                    end

                end
                else begin
                    r_baud_cnt <= r_baud_cnt + 1'b1;
                end

            end

            // STOP: check stop bit
            STOP : begin

                r_rx_busy <= 1'b1;

                if (r_baud_cnt == CLKS_PER_BIT - 1) begin

                    r_baud_cnt <= 9'd0;
                    r_state    <= IDLE;
                    r_rx_busy  <= 1'b0;

                    if (r_rx_sync == 1'b1)
                        r_rx_done <= 1'b1;

                end
                else begin
                    r_baud_cnt <= r_baud_cnt + 1'b1;
                end

            end

            default : begin
                r_state    <= IDLE;
                r_baud_cnt <= 9'd0;
                r_bit_cnt  <= 3'd0;
                r_rx_busy  <= 1'b0;
            end

        endcase

    end

end

// output
assign o_rx_data = r_rx_data;
assign o_rx_busy = r_rx_busy;
assign o_rx_done = r_rx_done;

endmodule
