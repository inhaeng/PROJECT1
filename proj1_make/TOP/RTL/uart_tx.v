`timescale 1ns / 1ps

module uart_tx (
    //port list
    clk             ,
    rst_n           ,

    i_tx_data       ,
    i_tx_start      ,

    o_tx            ,
    o_tx_busy       ,
    o_tx_done    
);

// port declaration
input           clk         ;
input           rst_n       ;
input   [7:0]   i_tx_data   ;
input           i_tx_start  ;

output          o_tx        ;
output          o_tx_busy   ;
output          o_tx_done   ;

// parameter
parameter CLKS_PER_BIT    =   417;

// state parameter
localparam IDLE = 2'b00;
localparam START = 2'b01;
localparam DATA = 2'b10;
localparam STOP = 2'b11;

// internal register

reg     [1:0]   r_state     ;

reg     [8:0]   r_baud_cnt  ;
reg     [2:0]   r_bit_cnt   ;

reg     [7:0]   r_tx_data   ;

reg             r_tx        ;
reg             r_tx_busy   ;
reg             r_tx_done   ;


// modeling
always @(posedge clk or negedge rst_n) begin

    if( ~rst_n ) begin

        r_state     <= IDLE     ;

        r_baud_cnt  <= 9'd0     ;
        r_bit_cnt   <= 3'd0     ;

        r_tx_data   <= 8'd0     ;

        r_tx        <= 1'b1     ;
        r_tx_busy   <= 1'b0     ;
        r_tx_done   <= 1'b0     ;

    end
    else begin

        case( r_state )

            // ------------------------------------------------
            // IDLE
            // UART line stays HIGH
            // Wait for i_tx_start
            // ------------------------------------------------

            IDLE : begin

                r_tx        <= 1'b1     ;
                r_tx_busy   <= 1'b0     ;
                r_tx_done   <= 1'b0     ;

                r_baud_cnt  <= 9'd0     ;
                r_bit_cnt   <= 3'd0     ;

                if( i_tx_start ) begin

                    r_tx_data   <= i_tx_data  ;
                    r_tx_busy   <= 1'b1       ;
                    r_state     <= START      ;

                end

            end


            // ------------------------------------------------
            // START BIT
            // TX = 0 for one bit period
            // ------------------------------------------------

            START : begin

                r_tx        <= 1'b0     ;
                r_tx_busy   <= 1'b1     ;
                r_tx_done   <= 1'b0     ;

                if( r_baud_cnt == CLKS_PER_BIT - 1 ) begin

                    r_baud_cnt  <= 9'd0 ;
                    r_state     <= DATA ;

                end
                else begin

                    r_baud_cnt  <= r_baud_cnt + 1'b1;

                end

            end


            // ------------------------------------------------
            // DATA
            // Send 8-bit data
            // LSB first
            // ------------------------------------------------

            DATA : begin

                r_tx        <= r_tx_data[r_bit_cnt] ;
                r_tx_busy   <= 1'b1                 ;
                r_tx_done   <= 1'b0                 ;

                if( r_baud_cnt == CLKS_PER_BIT - 1 ) begin

                    r_baud_cnt <= 9'd0;

                    if( r_bit_cnt == 3'd7 ) begin

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


            // ------------------------------------------------
            // STOP BIT
            // TX = 1 for one bit period
            // ------------------------------------------------

            STOP : begin

                r_tx        <= 1'b1     ;
                r_tx_busy   <= 1'b1     ;
                r_tx_done   <= 1'b0     ;

                if( r_baud_cnt == CLKS_PER_BIT - 1 ) begin

                    r_baud_cnt  <= 9'd0     ;

                    r_tx_busy   <= 1'b0     ;
                    r_tx_done   <= 1'b1     ;

                    r_state     <= IDLE     ;

                end
                else begin

                    r_baud_cnt <= r_baud_cnt + 1'b1;

                end

            end


            // ------------------------------------------------
            // DEFAULT
            // ------------------------------------------------

            default : begin

                r_state     <= IDLE     ;

                r_baud_cnt  <= 9'd0     ;
                r_bit_cnt   <= 3'd0     ;

                r_tx        <= 1'b1     ;
                r_tx_busy   <= 1'b0     ;
                r_tx_done   <= 1'b0     ;

            end

        endcase

    end

end



// output

assign o_tx      = r_tx      ;
assign o_tx_busy = r_tx_busy ;
assign o_tx_done = r_tx_done ;

endmodule