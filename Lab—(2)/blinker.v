// File: blinker.v
// Generated by MyHDL 0.11
// Date: Tue Dec  1 19:21:55 2020


`timescale 1ns/10ps

module blinker (
    clk_i,
    led_o
);
// Inputs:
//   clk_i:  This is a clock signal input.
//   length: This is the number of bits in the counter that generates the led_o output.
// Outputs:
//   led_o:  This is an output signal that drives an LED on and off.

input clk_i;
output led_o;
wire led_o;

wire [21:0] cnt;
wire [21:0] k_one;
wire [21:0] k_next_cnt;
reg k_k_k_q_o;
reg k_k_chunk_insts_21_q_o;
reg k_k_chunk_insts_12_q_o;
reg k_k_chunk_insts_20_q_o;
reg k_k_chunk_insts_19_q_o;
reg k_k_chunk_insts_18_q_o;
reg k_k_chunk_insts_17_q_o;
reg k_k_chunk_insts_16_q_o;
reg k_k_chunk_insts_15_q_o;
reg k_k_chunk_insts_14_q_o;
reg k_k_chunk_insts_13_q_o;
reg k_k_chunk_insts_11_q_o;
reg k_k_chunk_insts_1_q_o;
reg k_k_chunk_insts_0_q_o;
reg k_k_chunk_insts_10_q_o;
reg k_k_chunk_insts_9_q_o;
reg k_k_chunk_insts_5_q_o;
reg k_k_chunk_insts_8_q_o;
reg k_k_chunk_insts_7_q_o;
reg k_k_chunk_insts_6_q_o;
reg k_k_chunk_insts_4_q_o;
reg k_k_chunk_insts_3_q_o;
wire [21:0] k_k_chunk_insts_3_chunk_insts_2_a;
wire [22:0] k_chunk_insts_0_c;
wire k_chunk_insts_0_chunk_insts_11_s_o;
wire k_chunk_insts_0_chunk_insts_11_c_o;
wire k_chunk_insts_0_chunk_insts_10_s_o;
wire k_chunk_insts_0_chunk_insts_10_c_o;
wire k_chunk_insts_0_chunk_insts_14_s_o;
wire k_chunk_insts_0_chunk_insts_14_c_o;
wire k_chunk_insts_0_chunk_insts_18_s_o;
wire k_chunk_insts_0_chunk_insts_18_c_o;
wire k_chunk_insts_0_k_s_o;
wire k_chunk_insts_0_k_c_o;
wire k_chunk_insts_0_chunk_insts_22_s_o;
wire k_chunk_insts_0_chunk_insts_22_c_o;
wire k_chunk_insts_0_chunk_insts_21_s_o;
wire k_chunk_insts_0_chunk_insts_21_c_o;
wire k_chunk_insts_0_chunk_insts_20_s_o;
wire k_chunk_insts_0_chunk_insts_20_c_o;
wire k_chunk_insts_0_chunk_insts_19_s_o;
wire k_chunk_insts_0_chunk_insts_19_c_o;
wire k_chunk_insts_0_chunk_insts_17_s_o;
wire k_chunk_insts_0_chunk_insts_17_c_o;
wire k_chunk_insts_0_chunk_insts_16_s_o;
wire k_chunk_insts_0_chunk_insts_16_c_o;
wire k_chunk_insts_0_chunk_insts_15_s_o;
wire k_chunk_insts_0_chunk_insts_15_c_o;
wire k_chunk_insts_0_chunk_insts_9_s_o;
wire k_chunk_insts_0_chunk_insts_9_c_o;
wire k_chunk_insts_0_chunk_insts_13_s_o;
wire k_chunk_insts_0_chunk_insts_13_c_o;
wire k_chunk_insts_0_chunk_insts_12_s_o;
wire k_chunk_insts_0_chunk_insts_12_c_o;
wire k_chunk_insts_0_chunk_insts_8_s_o;
wire k_chunk_insts_0_chunk_insts_8_c_o;
wire k_chunk_insts_0_chunk_insts_1_s_o;
wire k_chunk_insts_0_chunk_insts_1_c_o;
wire k_chunk_insts_0_chunk_insts_4_s_o;
wire k_chunk_insts_0_chunk_insts_4_c_o;
wire k_chunk_insts_0_chunk_insts_0_s_o;
wire k_chunk_insts_0_chunk_insts_0_c_o;
wire k_chunk_insts_0_chunk_insts_2_s_o;
wire k_chunk_insts_0_chunk_insts_2_c_o;
wire k_chunk_insts_0_chunk_insts_6_s_o;
wire k_chunk_insts_0_chunk_insts_6_c_o;
wire k_chunk_insts_0_chunk_insts_5_s_o;
wire k_chunk_insts_0_chunk_insts_5_c_o;
wire [21:0] k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a;
wire [22:0] k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a;

assign k_one = 22'd1;
assign k_k_chunk_insts_3_chunk_insts_2_a[21] = k_k_k_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[20] = k_k_chunk_insts_21_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[19] = k_k_chunk_insts_12_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[18] = k_k_chunk_insts_20_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[17] = k_k_chunk_insts_19_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[16] = k_k_chunk_insts_18_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[15] = k_k_chunk_insts_17_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[14] = k_k_chunk_insts_16_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[13] = k_k_chunk_insts_15_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[12] = k_k_chunk_insts_14_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[11] = k_k_chunk_insts_13_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[10] = k_k_chunk_insts_11_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[9] = k_k_chunk_insts_1_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[8] = k_k_chunk_insts_0_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[7] = k_k_chunk_insts_10_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[6] = k_k_chunk_insts_9_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[5] = k_k_chunk_insts_5_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[4] = k_k_chunk_insts_8_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[3] = k_k_chunk_insts_7_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[2] = k_k_chunk_insts_6_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[1] = k_k_chunk_insts_4_q_o;
assign k_k_chunk_insts_3_chunk_insts_2_a[0] = k_k_chunk_insts_3_q_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[21] = k_chunk_insts_0_chunk_insts_11_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[20] = k_chunk_insts_0_chunk_insts_10_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[19] = k_chunk_insts_0_chunk_insts_14_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[18] = k_chunk_insts_0_chunk_insts_18_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[17] = k_chunk_insts_0_k_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[16] = k_chunk_insts_0_chunk_insts_22_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[15] = k_chunk_insts_0_chunk_insts_21_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[14] = k_chunk_insts_0_chunk_insts_20_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[13] = k_chunk_insts_0_chunk_insts_19_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[12] = k_chunk_insts_0_chunk_insts_17_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[11] = k_chunk_insts_0_chunk_insts_16_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[10] = k_chunk_insts_0_chunk_insts_15_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[9] = k_chunk_insts_0_chunk_insts_9_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[8] = k_chunk_insts_0_chunk_insts_13_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[7] = k_chunk_insts_0_chunk_insts_12_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[6] = k_chunk_insts_0_chunk_insts_8_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[5] = k_chunk_insts_0_chunk_insts_1_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[4] = k_chunk_insts_0_chunk_insts_4_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[3] = k_chunk_insts_0_chunk_insts_0_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[2] = k_chunk_insts_0_chunk_insts_2_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[1] = k_chunk_insts_0_chunk_insts_6_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a[0] = k_chunk_insts_0_chunk_insts_5_s_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[22] = k_chunk_insts_0_chunk_insts_11_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[21] = k_chunk_insts_0_chunk_insts_10_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[20] = k_chunk_insts_0_chunk_insts_14_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[19] = k_chunk_insts_0_chunk_insts_18_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[18] = k_chunk_insts_0_k_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[17] = k_chunk_insts_0_chunk_insts_22_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[16] = k_chunk_insts_0_chunk_insts_21_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[15] = k_chunk_insts_0_chunk_insts_20_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[14] = k_chunk_insts_0_chunk_insts_19_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[13] = k_chunk_insts_0_chunk_insts_17_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[12] = k_chunk_insts_0_chunk_insts_16_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[11] = k_chunk_insts_0_chunk_insts_15_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[10] = k_chunk_insts_0_chunk_insts_9_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[9] = k_chunk_insts_0_chunk_insts_13_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[8] = k_chunk_insts_0_chunk_insts_12_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[7] = k_chunk_insts_0_chunk_insts_8_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[6] = k_chunk_insts_0_chunk_insts_1_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[5] = k_chunk_insts_0_chunk_insts_4_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[4] = k_chunk_insts_0_chunk_insts_0_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[3] = k_chunk_insts_0_chunk_insts_2_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[2] = k_chunk_insts_0_chunk_insts_6_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[1] = k_chunk_insts_0_chunk_insts_5_c_o;
assign k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a[0] = 0;


assign led_o = cnt[(22 - 1)];



assign k_chunk_insts_0_chunk_insts_0_s_o = ((k_one[3] ^ cnt[3]) ^ k_chunk_insts_0_c[3]);
assign k_chunk_insts_0_chunk_insts_0_c_o = (((k_one[3] & cnt[3]) | (k_one[3] & k_chunk_insts_0_c[3])) | (cnt[3] & k_chunk_insts_0_c[3]));



assign k_chunk_insts_0_chunk_insts_1_s_o = ((k_one[5] ^ cnt[5]) ^ k_chunk_insts_0_c[5]);
assign k_chunk_insts_0_chunk_insts_1_c_o = (((k_one[5] & cnt[5]) | (k_one[5] & k_chunk_insts_0_c[5])) | (cnt[5] & k_chunk_insts_0_c[5]));



assign k_chunk_insts_0_chunk_insts_2_s_o = ((k_one[2] ^ cnt[2]) ^ k_chunk_insts_0_c[2]);
assign k_chunk_insts_0_chunk_insts_2_c_o = (((k_one[2] & cnt[2]) | (k_one[2] & k_chunk_insts_0_c[2])) | (cnt[2] & k_chunk_insts_0_c[2]));



assign k_next_cnt = k_chunk_insts_0_chunk_insts_5_chunk_insts_3_a;



assign k_chunk_insts_0_chunk_insts_4_s_o = ((k_one[4] ^ cnt[4]) ^ k_chunk_insts_0_c[4]);
assign k_chunk_insts_0_chunk_insts_4_c_o = (((k_one[4] & cnt[4]) | (k_one[4] & k_chunk_insts_0_c[4])) | (cnt[4] & k_chunk_insts_0_c[4]));



assign k_chunk_insts_0_chunk_insts_5_s_o = ((k_one[0] ^ cnt[0]) ^ k_chunk_insts_0_c[0]);
assign k_chunk_insts_0_chunk_insts_5_c_o = (((k_one[0] & cnt[0]) | (k_one[0] & k_chunk_insts_0_c[0])) | (cnt[0] & k_chunk_insts_0_c[0]));



assign k_chunk_insts_0_chunk_insts_6_s_o = ((k_one[1] ^ cnt[1]) ^ k_chunk_insts_0_c[1]);
assign k_chunk_insts_0_chunk_insts_6_c_o = (((k_one[1] & cnt[1]) | (k_one[1] & k_chunk_insts_0_c[1])) | (cnt[1] & k_chunk_insts_0_c[1]));



assign k_chunk_insts_0_c = k_chunk_insts_0_chunk_insts_5_chunk_insts_7_a;



assign k_chunk_insts_0_chunk_insts_8_s_o = ((k_one[6] ^ cnt[6]) ^ k_chunk_insts_0_c[6]);
assign k_chunk_insts_0_chunk_insts_8_c_o = (((k_one[6] & cnt[6]) | (k_one[6] & k_chunk_insts_0_c[6])) | (cnt[6] & k_chunk_insts_0_c[6]));



assign k_chunk_insts_0_chunk_insts_9_s_o = ((k_one[9] ^ cnt[9]) ^ k_chunk_insts_0_c[9]);
assign k_chunk_insts_0_chunk_insts_9_c_o = (((k_one[9] & cnt[9]) | (k_one[9] & k_chunk_insts_0_c[9])) | (cnt[9] & k_chunk_insts_0_c[9]));



assign k_chunk_insts_0_chunk_insts_10_s_o = ((k_one[20] ^ cnt[20]) ^ k_chunk_insts_0_c[20]);
assign k_chunk_insts_0_chunk_insts_10_c_o = (((k_one[20] & cnt[20]) | (k_one[20] & k_chunk_insts_0_c[20])) | (cnt[20] & k_chunk_insts_0_c[20]));



assign k_chunk_insts_0_chunk_insts_11_s_o = ((k_one[21] ^ cnt[21]) ^ k_chunk_insts_0_c[21]);
assign k_chunk_insts_0_chunk_insts_11_c_o = (((k_one[21] & cnt[21]) | (k_one[21] & k_chunk_insts_0_c[21])) | (cnt[21] & k_chunk_insts_0_c[21]));



assign k_chunk_insts_0_chunk_insts_12_s_o = ((k_one[7] ^ cnt[7]) ^ k_chunk_insts_0_c[7]);
assign k_chunk_insts_0_chunk_insts_12_c_o = (((k_one[7] & cnt[7]) | (k_one[7] & k_chunk_insts_0_c[7])) | (cnt[7] & k_chunk_insts_0_c[7]));



assign k_chunk_insts_0_chunk_insts_13_s_o = ((k_one[8] ^ cnt[8]) ^ k_chunk_insts_0_c[8]);
assign k_chunk_insts_0_chunk_insts_13_c_o = (((k_one[8] & cnt[8]) | (k_one[8] & k_chunk_insts_0_c[8])) | (cnt[8] & k_chunk_insts_0_c[8]));



assign k_chunk_insts_0_chunk_insts_14_s_o = ((k_one[19] ^ cnt[19]) ^ k_chunk_insts_0_c[19]);
assign k_chunk_insts_0_chunk_insts_14_c_o = (((k_one[19] & cnt[19]) | (k_one[19] & k_chunk_insts_0_c[19])) | (cnt[19] & k_chunk_insts_0_c[19]));



assign k_chunk_insts_0_chunk_insts_15_s_o = ((k_one[10] ^ cnt[10]) ^ k_chunk_insts_0_c[10]);
assign k_chunk_insts_0_chunk_insts_15_c_o = (((k_one[10] & cnt[10]) | (k_one[10] & k_chunk_insts_0_c[10])) | (cnt[10] & k_chunk_insts_0_c[10]));



assign k_chunk_insts_0_chunk_insts_16_s_o = ((k_one[11] ^ cnt[11]) ^ k_chunk_insts_0_c[11]);
assign k_chunk_insts_0_chunk_insts_16_c_o = (((k_one[11] & cnt[11]) | (k_one[11] & k_chunk_insts_0_c[11])) | (cnt[11] & k_chunk_insts_0_c[11]));



assign k_chunk_insts_0_chunk_insts_17_s_o = ((k_one[12] ^ cnt[12]) ^ k_chunk_insts_0_c[12]);
assign k_chunk_insts_0_chunk_insts_17_c_o = (((k_one[12] & cnt[12]) | (k_one[12] & k_chunk_insts_0_c[12])) | (cnt[12] & k_chunk_insts_0_c[12]));



assign k_chunk_insts_0_chunk_insts_18_s_o = ((k_one[18] ^ cnt[18]) ^ k_chunk_insts_0_c[18]);
assign k_chunk_insts_0_chunk_insts_18_c_o = (((k_one[18] & cnt[18]) | (k_one[18] & k_chunk_insts_0_c[18])) | (cnt[18] & k_chunk_insts_0_c[18]));



assign k_chunk_insts_0_chunk_insts_19_s_o = ((k_one[13] ^ cnt[13]) ^ k_chunk_insts_0_c[13]);
assign k_chunk_insts_0_chunk_insts_19_c_o = (((k_one[13] & cnt[13]) | (k_one[13] & k_chunk_insts_0_c[13])) | (cnt[13] & k_chunk_insts_0_c[13]));



assign k_chunk_insts_0_chunk_insts_20_s_o = ((k_one[14] ^ cnt[14]) ^ k_chunk_insts_0_c[14]);
assign k_chunk_insts_0_chunk_insts_20_c_o = (((k_one[14] & cnt[14]) | (k_one[14] & k_chunk_insts_0_c[14])) | (cnt[14] & k_chunk_insts_0_c[14]));



assign k_chunk_insts_0_chunk_insts_21_s_o = ((k_one[15] ^ cnt[15]) ^ k_chunk_insts_0_c[15]);
assign k_chunk_insts_0_chunk_insts_21_c_o = (((k_one[15] & cnt[15]) | (k_one[15] & k_chunk_insts_0_c[15])) | (cnt[15] & k_chunk_insts_0_c[15]));



assign k_chunk_insts_0_chunk_insts_22_s_o = ((k_one[16] ^ cnt[16]) ^ k_chunk_insts_0_c[16]);
assign k_chunk_insts_0_chunk_insts_22_c_o = (((k_one[16] & cnt[16]) | (k_one[16] & k_chunk_insts_0_c[16])) | (cnt[16] & k_chunk_insts_0_c[16]));



assign k_chunk_insts_0_k_s_o = ((k_one[17] ^ cnt[17]) ^ k_chunk_insts_0_c[17]);
assign k_chunk_insts_0_k_c_o = (((k_one[17] & cnt[17]) | (k_one[17] & k_chunk_insts_0_c[17])) | (cnt[17] & k_chunk_insts_0_c[17]));


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_0_q_o <= k_next_cnt[8];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_1_q_o <= k_next_cnt[9];
end



assign cnt = k_k_chunk_insts_3_chunk_insts_2_a;


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_3_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_3_q_o <= k_next_cnt[0];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_4_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_4_q_o <= k_next_cnt[1];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_5_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_5_q_o <= k_next_cnt[5];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_6_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_6_q_o <= k_next_cnt[2];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_7_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_7_q_o <= k_next_cnt[3];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_8_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_8_q_o <= k_next_cnt[4];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_9_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_9_q_o <= k_next_cnt[6];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_10_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_10_q_o <= k_next_cnt[7];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_11_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_11_q_o <= k_next_cnt[10];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_12_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_12_q_o <= k_next_cnt[19];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_13_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_13_q_o <= k_next_cnt[11];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_14_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_14_q_o <= k_next_cnt[12];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_15_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_15_q_o <= k_next_cnt[13];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_16_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_16_q_o <= k_next_cnt[14];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_17_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_17_q_o <= k_next_cnt[15];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_18_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_18_q_o <= k_next_cnt[16];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_19_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_19_q_o <= k_next_cnt[17];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_20_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_20_q_o <= k_next_cnt[18];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_21_LOC_INSTS_CHUNK_INSTS_K
    k_k_chunk_insts_21_q_o <= k_next_cnt[20];
end


always @(posedge clk_i) begin: BLINKER_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K_LOC_INSTS_CHUNK_INSTS_K
    k_k_k_q_o <= k_next_cnt[21];
end

endmodule
