// File: record_play.v
// Generated by MyHDL 0.11
// Date: Tue Dec  1 23:24:07 2020


`timescale 1ns/10ps

module record_play (
    clk_i,
    button_a,
    button_b,
    leds_o
);
// Sample value on button B input, store in RAM, and playback by turning LEDs on/off.
// Inputs:
//     clk_i:    Clock input.
//     button_a: Button A input. High when pressed. Controls record/play operation.
//     button_b: Button B input. High when pressed. Used to input samples for controlling LEDs.
// Outputs:
//     leds_o:   LED outputs.

input clk_i;
input button_a;
input button_b;
output [4:0] leds_o;
reg [4:0] leds_o;

reg [2:0] state;
reg do_sample;
reg wr;
reg [10:0] addr;
reg [0:0] data_o;
reg [0:0] data_i;
reg [10:0] end_addr;
reg reset;
reg [16:0] chunk_insts_0_cntr;
reg [0:0] chunk_insts_1_cntr;
reg [0:0] k_mem [0:2048-1];



always @(posedge clk_i) begin: RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_K
    chunk_insts_0_cntr <= (chunk_insts_0_cntr + 1);
    do_sample <= 0;
    if ((chunk_insts_0_cntr == 119999)) begin
        do_sample <= 1;
        chunk_insts_0_cntr <= 0;
    end
end


always @(posedge clk_i) begin: RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_K
    if ((chunk_insts_1_cntr < 1)) begin
        chunk_insts_1_cntr <= (chunk_insts_1_cntr + 1);
        reset <= 1;
    end
    else begin
        reset <= 0;
    end
end


always @(posedge clk_i) begin: RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_2
    wr <= 0;
    if (reset) begin
        state <= 0;
    end
    else if (do_sample) begin
        case (state)
            'h0: begin
                leds_o <= 21;
                if ((button_a == 1)) begin
                    state <= 1;
                end
            end
            'h1: begin
                leds_o <= 26;
                if ((button_a == 0)) begin
                    addr <= 0;
                    data_i <= button_b;
                    wr <= 1;
                    state <= 2;
                end
            end
            'h2: begin
                addr <= (addr + 1);
                data_i <= button_b;
                wr <= 1;
                leds_o <= {1, button_b, button_b, button_b, button_b};
                if ((button_a == 1)) begin
                    end_addr <= (addr + 1);
                    state <= 3;
                end
            end
            'h3: begin
                leds_o <= 16;
                if ((button_a == 0)) begin
                    addr <= 0;
                    state <= 4;
                end
            end
            'h4: begin
                leds_o <= {1, data_o[0], data_o[0], data_o[0], data_o[0]};
                addr <= (addr + 1);
                if ((addr == end_addr)) begin
                    addr <= 0;
                end
                if ((button_a == 1)) begin
                    state <= 1;
                end
            end
        endcase
    end
end


always @(posedge clk_i) begin: RECORD_PLAY_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K
    if (wr) begin
        k_mem[addr] <= data_i;
    end
    else begin
        data_o <= k_mem[addr];
    end
end

endmodule
