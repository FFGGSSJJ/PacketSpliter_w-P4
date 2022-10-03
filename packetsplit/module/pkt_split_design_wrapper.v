// This wrapper is generated from the P4 block design.
// It has been added to the corundum project
// This file is for the connection reference


//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Mon Oct  3 07:43:52 2022
//Host        : bigserver running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target pkt_split_design_wrapper.bd
//Design      : pkt_split_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pkt_split_design_wrapper
   (m_axis_0_tdata,
    m_axis_0_tkeep,
    m_axis_0_tlast,
    m_axis_0_tready,
    m_axis_0_tvalid,
    s_axis_0_tdata,
    s_axis_0_tkeep,
    s_axis_0_tlast,
    s_axis_0_tready,
    s_axis_0_tvalid,
    s_axis_aclk_0,
    s_axis_aresetn_0,
    user_metadata_in_0,
    user_metadata_in_valid_0,
    user_metadata_out_0,
    user_metadata_out_valid_0);
  output [511:0]m_axis_0_tdata;
  output [63:0]m_axis_0_tkeep;
  output m_axis_0_tlast;
  input m_axis_0_tready;
  output m_axis_0_tvalid;
  input [511:0]s_axis_0_tdata;
  input [63:0]s_axis_0_tkeep;
  input s_axis_0_tlast;
  output s_axis_0_tready;
  input s_axis_0_tvalid;
  input s_axis_aclk_0;
  input s_axis_aresetn_0;
  input [8:0]user_metadata_in_0;
  input user_metadata_in_valid_0;
  output [8:0]user_metadata_out_0;
  output user_metadata_out_valid_0;

  wire [511:0]m_axis_0_tdata;
  wire [63:0]m_axis_0_tkeep;
  wire m_axis_0_tlast;
  wire m_axis_0_tready;
  wire m_axis_0_tvalid;
  wire [511:0]s_axis_0_tdata;
  wire [63:0]s_axis_0_tkeep;
  wire s_axis_0_tlast;
  wire s_axis_0_tready;
  wire s_axis_0_tvalid;
  wire s_axis_aclk_0;
  wire s_axis_aresetn_0;
  wire [8:0]user_metadata_in_0;
  wire user_metadata_in_valid_0;
  wire [8:0]user_metadata_out_0;
  wire user_metadata_out_valid_0;

  pkt_split_design pkt_split_design_i
       (.m_axis_0_tdata(m_axis_0_tdata),
        .m_axis_0_tkeep(m_axis_0_tkeep),
        .m_axis_0_tlast(m_axis_0_tlast),
        .m_axis_0_tready(m_axis_0_tready),
        .m_axis_0_tvalid(m_axis_0_tvalid),
        .s_axis_0_tdata(s_axis_0_tdata),
        .s_axis_0_tkeep(s_axis_0_tkeep),
        .s_axis_0_tlast(s_axis_0_tlast),
        .s_axis_0_tready(s_axis_0_tready),
        .s_axis_0_tvalid(s_axis_0_tvalid),
        .s_axis_aclk_0(s_axis_aclk_0),
        .s_axis_aresetn_0(s_axis_aresetn_0),
        .user_metadata_in_0(user_metadata_in_0),
        .user_metadata_in_valid_0(user_metadata_in_valid_0),
        .user_metadata_out_0(user_metadata_out_0),
        .user_metadata_out_valid_0(user_metadata_out_valid_0));
endmodule
