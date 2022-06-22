// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ExecAddrGen_Templated_1ul_16ul_0ul_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_V_V_TDATA,
        in_V_V_TVALID,
        in_V_V_TREADY,
        out_V_V_TDATA,
        out_V_V_TVALID,
        out_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] in_V_V_TDATA;
input   in_V_V_TVALID;
output   in_V_V_TREADY;
output  [47:0] out_V_V_TDATA;
output   out_V_V_TVALID;
input   out_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [127:0] in_V_V_0_data_out;
wire    in_V_V_0_vld_in;
wire    in_V_V_0_vld_out;
wire    in_V_V_0_ack_in;
reg    in_V_V_0_ack_out;
reg   [127:0] in_V_V_0_payload_A;
reg   [127:0] in_V_V_0_payload_B;
reg    in_V_V_0_sel_rd;
reg    in_V_V_0_sel_wr;
wire    in_V_V_0_sel;
wire    in_V_V_0_load_A;
wire    in_V_V_0_load_B;
reg   [1:0] in_V_V_0_state;
wire    in_V_V_0_state_cmp_full;
reg   [47:0] out_V_V_1_data_out;
reg    out_V_V_1_vld_in;
wire    out_V_V_1_vld_out;
wire    out_V_V_1_ack_in;
wire    out_V_V_1_ack_out;
reg   [47:0] out_V_V_1_payload_A;
reg   [47:0] out_V_V_1_payload_B;
reg    out_V_V_1_sel_rd;
reg    out_V_V_1_sel_wr;
wire    out_V_V_1_sel;
wire    out_V_V_1_load_A;
wire    out_V_V_1_load_B;
reg   [1:0] out_V_V_1_state;
wire    out_V_V_1_state_cmp_full;
reg    in_V_V_TDATA_blk_n;
reg    out_V_V_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln109_reg_300;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln109_reg_300_pp0_iter1_reg;
reg   [15:0] ExecAddr_rhsAddr_V_read_assign_reg_79;
reg   [15:0] ExecAddr_lhsAddr_V_read_assign_reg_88;
reg   [15:0] p_083_0_reg_97;
reg   [127:0] tmp_V_1_reg_260;
reg    ap_block_state1;
wire   [15:0] addr_rhsAddr_V_fu_118_p4;
reg   [0:0] lhs_V_2_reg_275;
reg   [0:0] addr_negate_V_reg_280;
reg   [0:0] lhs_V_1_reg_285;
wire   [15:0] add_ln109_fu_162_p2;
reg   [15:0] add_ln109_reg_290;
wire   [16:0] lhs_V_fu_168_p1;
reg   [16:0] lhs_V_reg_295;
wire   [0:0] icmp_ln109_fu_172_p2;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
wire   [15:0] i_V_fu_177_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [41:0] p_Result_s_fu_227_p8;
reg   [41:0] p_Result_s_reg_309;
wire   [15:0] addr_lhsAddr_V_1_fu_244_p2;
wire   [15:0] addr_rhsAddr_V_1_fu_250_p2;
wire   [47:0] zext_ln163_fu_256_p1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_block_pp0_stage0_01001;
wire   [15:0] ins_numTiles_V_fu_128_p4;
wire   [16:0] rhs_V_fu_183_p1;
wire   [16:0] ret_V_fu_187_p2;
wire   [0:0] rhs_V_1_fu_198_p2;
wire   [0:0] ret_V_2_fu_209_p2;
wire   [1:0] tmp_1_fu_218_p4;
wire   [4:0] addr_shift_V_fu_214_p1;
wire   [0:0] ret_V_4_fu_204_p2;
wire   [0:0] addr_last_V_fu_192_p2;
wire    ap_CS_fsm_state5;
reg    ap_block_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 in_V_V_0_sel_rd = 1'b0;
#0 in_V_V_0_sel_wr = 1'b0;
#0 in_V_V_0_state = 2'd0;
#0 out_V_V_1_sel_rd = 1'b0;
#0 out_V_V_1_sel_wr = 1'b0;
#0 out_V_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (in_V_V_0_vld_out == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (in_V_V_0_vld_out == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        in_V_V_0_sel_rd <= 1'b0;
    end else begin
        if (((in_V_V_0_ack_out == 1'b1) & (in_V_V_0_vld_out == 1'b1))) begin
            in_V_V_0_sel_rd <= ~in_V_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        in_V_V_0_sel_wr <= 1'b0;
    end else begin
        if (((in_V_V_0_ack_in == 1'b1) & (in_V_V_0_vld_in == 1'b1))) begin
            in_V_V_0_sel_wr <= ~in_V_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        in_V_V_0_state <= 2'd0;
    end else begin
        if ((((in_V_V_0_state == 2'd2) & (in_V_V_0_vld_in == 1'b0)) | ((in_V_V_0_state == 2'd3) & (in_V_V_0_vld_in == 1'b0) & (in_V_V_0_ack_out == 1'b1)))) begin
            in_V_V_0_state <= 2'd2;
        end else if ((((in_V_V_0_state == 2'd1) & (in_V_V_0_ack_out == 1'b0)) | ((in_V_V_0_state == 2'd3) & (in_V_V_0_ack_out == 1'b0) & (in_V_V_0_vld_in == 1'b1)))) begin
            in_V_V_0_state <= 2'd1;
        end else if (((~((in_V_V_0_vld_in == 1'b0) & (in_V_V_0_ack_out == 1'b1)) & ~((in_V_V_0_ack_out == 1'b0) & (in_V_V_0_vld_in == 1'b1)) & (in_V_V_0_state == 2'd3)) | ((in_V_V_0_state == 2'd1) & (in_V_V_0_ack_out == 1'b1)) | ((in_V_V_0_state == 2'd2) & (in_V_V_0_vld_in == 1'b1)))) begin
            in_V_V_0_state <= 2'd3;
        end else begin
            in_V_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_V_V_1_ack_out == 1'b1) & (out_V_V_1_vld_out == 1'b1))) begin
            out_V_V_1_sel_rd <= ~out_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((out_V_V_1_ack_in == 1'b1) & (out_V_V_1_vld_in == 1'b1))) begin
            out_V_V_1_sel_wr <= ~out_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_V_V_1_state <= 2'd0;
    end else begin
        if ((((out_V_V_1_state == 2'd2) & (out_V_V_1_vld_in == 1'b0)) | ((out_V_V_1_state == 2'd3) & (out_V_V_1_vld_in == 1'b0) & (out_V_V_1_ack_out == 1'b1)))) begin
            out_V_V_1_state <= 2'd2;
        end else if ((((out_V_V_1_state == 2'd1) & (out_V_V_TREADY == 1'b0)) | ((out_V_V_1_state == 2'd3) & (out_V_V_TREADY == 1'b0) & (out_V_V_1_vld_in == 1'b1)))) begin
            out_V_V_1_state <= 2'd1;
        end else if (((~((out_V_V_1_vld_in == 1'b0) & (out_V_V_1_ack_out == 1'b1)) & ~((out_V_V_TREADY == 1'b0) & (out_V_V_1_vld_in == 1'b1)) & (out_V_V_1_state == 2'd3)) | ((out_V_V_1_state == 2'd1) & (out_V_V_1_ack_out == 1'b1)) | ((out_V_V_1_state == 2'd2) & (out_V_V_1_vld_in == 1'b1)))) begin
            out_V_V_1_state <= 2'd3;
        end else begin
            out_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln109_fu_172_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ExecAddr_lhsAddr_V_read_assign_reg_88 <= addr_lhsAddr_V_1_fu_244_p2;
    end else if ((~((ap_start == 1'b0) | (in_V_V_0_vld_out == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ExecAddr_lhsAddr_V_read_assign_reg_88 <= {{in_V_V_0_data_out[86:71]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln109_fu_172_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ExecAddr_rhsAddr_V_read_assign_reg_79 <= addr_rhsAddr_V_1_fu_250_p2;
    end else if ((~((ap_start == 1'b0) | (in_V_V_0_vld_out == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        ExecAddr_rhsAddr_V_read_assign_reg_79 <= {{in_V_V_0_data_out[102:87]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln109_fu_172_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_083_0_reg_97 <= i_V_fu_177_p2;
    end else if ((~((ap_start == 1'b0) | (in_V_V_0_vld_out == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        p_083_0_reg_97 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (in_V_V_0_vld_out == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln109_reg_290 <= add_ln109_fu_162_p2;
        addr_negate_V_reg_280 <= in_V_V_0_data_out[32'd120];
        lhs_V_1_reg_285 <= in_V_V_0_data_out[32'd121];
        lhs_V_2_reg_275 <= in_V_V_0_data_out[32'd119];
        lhs_V_reg_295[15 : 0] <= lhs_V_fu_168_p1[15 : 0];
        tmp_V_1_reg_260 <= in_V_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln109_reg_300 <= icmp_ln109_fu_172_p2;
        icmp_ln109_reg_300_pp0_iter1_reg <= icmp_ln109_reg_300;
    end
end

always @ (posedge ap_clk) begin
    if ((in_V_V_0_load_A == 1'b1)) begin
        in_V_V_0_payload_A <= in_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((in_V_V_0_load_B == 1'b1)) begin
        in_V_V_0_payload_B <= in_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((out_V_V_1_load_A == 1'b1)) begin
        out_V_V_1_payload_A <= zext_ln163_fu_256_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((out_V_V_1_load_B == 1'b1)) begin
        out_V_V_1_payload_B <= zext_ln163_fu_256_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln109_fu_172_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Result_s_reg_309[35 : 0] <= p_Result_s_fu_227_p8[35 : 0];
p_Result_s_reg_309[41 : 40] <= p_Result_s_fu_227_p8[41 : 40];
    end
end

always @ (*) begin
    if ((icmp_ln109_fu_172_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((~((out_V_V_1_state == 2'd1) | ((out_V_V_1_state == 2'd3) & (out_V_V_TREADY == 1'b0))) & (1'b1 == ap_CS_fsm_state5)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((out_V_V_1_state == 2'd1) | ((out_V_V_1_state == 2'd3) & (out_V_V_TREADY == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (in_V_V_0_vld_out == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        in_V_V_0_ack_out = 1'b1;
    end else begin
        in_V_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((in_V_V_0_sel == 1'b1)) begin
        in_V_V_0_data_out = in_V_V_0_payload_B;
    end else begin
        in_V_V_0_data_out = in_V_V_0_payload_A;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        in_V_V_TDATA_blk_n = in_V_V_0_state[1'd0];
    end else begin
        in_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((out_V_V_1_sel == 1'b1)) begin
        out_V_V_1_data_out = out_V_V_1_payload_B;
    end else begin
        out_V_V_1_data_out = out_V_V_1_payload_A;
    end
end

always @ (*) begin
    if (((icmp_ln109_reg_300 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_V_1_vld_in = 1'b1;
    end else begin
        out_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln109_reg_300_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln109_reg_300 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        out_V_V_TDATA_blk_n = out_V_V_1_state[1'd1];
    end else begin
        out_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (in_V_V_0_vld_out == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln109_fu_172_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln109_fu_172_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((out_V_V_1_state == 2'd1) | ((out_V_V_1_state == 2'd3) & (out_V_V_TREADY == 1'b0))) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln109_fu_162_p2 = (addr_rhsAddr_V_fu_118_p4 + ins_numTiles_V_fu_128_p4);

assign addr_last_V_fu_192_p2 = ((ret_V_fu_187_p2 == 17'd1) ? 1'b1 : 1'b0);

assign addr_lhsAddr_V_1_fu_244_p2 = (ExecAddr_lhsAddr_V_read_assign_reg_88 + 16'd1);

assign addr_rhsAddr_V_1_fu_250_p2 = (ExecAddr_rhsAddr_V_read_assign_reg_79 + 16'd1);

assign addr_rhsAddr_V_fu_118_p4 = {{in_V_V_0_data_out[102:87]}};

assign addr_shift_V_fu_214_p1 = ret_V_2_fu_209_p2;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state4_io)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state4_io)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (in_V_V_0_vld_out == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((icmp_ln109_reg_300 == 1'd0) & (out_V_V_1_ack_in == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = ((icmp_ln109_reg_300_pp0_iter1_reg == 1'd0) & (out_V_V_1_ack_in == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5 = ((out_V_V_1_state == 2'd1) | ((out_V_V_1_state == 2'd3) & (out_V_V_TREADY == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_V_fu_177_p2 = (p_083_0_reg_97 + 16'd1);

assign icmp_ln109_fu_172_p2 = ((ExecAddr_rhsAddr_V_read_assign_reg_79 == add_ln109_reg_290) ? 1'b1 : 1'b0);

assign in_V_V_0_ack_in = in_V_V_0_state[1'd1];

assign in_V_V_0_load_A = (in_V_V_0_state_cmp_full & ~in_V_V_0_sel_wr);

assign in_V_V_0_load_B = (in_V_V_0_state_cmp_full & in_V_V_0_sel_wr);

assign in_V_V_0_sel = in_V_V_0_sel_rd;

assign in_V_V_0_state_cmp_full = ((in_V_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign in_V_V_0_vld_in = in_V_V_TVALID;

assign in_V_V_0_vld_out = in_V_V_0_state[1'd0];

assign in_V_V_TREADY = in_V_V_0_state[1'd1];

assign ins_numTiles_V_fu_128_p4 = {{in_V_V_0_data_out[118:103]}};

assign lhs_V_fu_168_p1 = ins_numTiles_V_fu_128_p4;

assign out_V_V_1_ack_in = out_V_V_1_state[1'd1];

assign out_V_V_1_ack_out = out_V_V_TREADY;

assign out_V_V_1_load_A = (out_V_V_1_state_cmp_full & ~out_V_V_1_sel_wr);

assign out_V_V_1_load_B = (out_V_V_1_state_cmp_full & out_V_V_1_sel_wr);

assign out_V_V_1_sel = out_V_V_1_sel_rd;

assign out_V_V_1_state_cmp_full = ((out_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign out_V_V_1_vld_out = out_V_V_1_state[1'd0];

assign out_V_V_TDATA = out_V_V_1_data_out;

assign out_V_V_TVALID = out_V_V_1_state[1'd0];

assign p_Result_s_fu_227_p8 = {{{{{{{tmp_1_fu_218_p4}, {addr_shift_V_fu_214_p1}}, {addr_negate_V_reg_280}}, {ret_V_4_fu_204_p2}}, {addr_last_V_fu_192_p2}}, {ExecAddr_rhsAddr_V_read_assign_reg_79}}, {ExecAddr_lhsAddr_V_read_assign_reg_88}};

assign ret_V_2_fu_209_p2 = (rhs_V_1_fu_198_p2 & lhs_V_2_reg_275);

assign ret_V_4_fu_204_p2 = (rhs_V_1_fu_198_p2 & lhs_V_1_reg_285);

assign ret_V_fu_187_p2 = (lhs_V_reg_295 - rhs_V_fu_183_p1);

assign rhs_V_1_fu_198_p2 = ((p_083_0_reg_97 == 16'd0) ? 1'b1 : 1'b0);

assign rhs_V_fu_183_p1 = p_083_0_reg_97;

assign tmp_1_fu_218_p4 = {{tmp_V_1_reg_260[123:122]}};

assign zext_ln163_fu_256_p1 = p_Result_s_reg_309;

always @ (posedge ap_clk) begin
    lhs_V_reg_295[16] <= 1'b0;
    p_Result_s_reg_309[39:36] <= 4'b0000;
end

endmodule //ExecAddrGen_Templated_1ul_16ul_0ul_s