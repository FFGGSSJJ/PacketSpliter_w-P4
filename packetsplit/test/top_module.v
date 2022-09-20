// The module is designed for the test with P4 IP core 
// DO NOT add this file into project file as it is useless

`timescale 1ns / 1ps

module TopP4 #(
    parameter TDATA_NUM_BYTES         = 64,
    parameter TUSER_WIDTH             = 0,
    parameter TID_WIDTH               = 0,
    parameter TDEST_WIDTH             = 0,

    // this parameter is depending on the port length
    parameter USER_META_DATA_WIDTH    = 9,

    parameter NUM_USER_EXTERNS        = 0,
    parameter USER_EXTERN_IN_WIDTH    = 0,
    parameter USER_EXTERN_OUT_WIDTH   = 0,

    // AXI slave interface parameters
    parameter S_AXI_DATA_WIDTH        = 32,
    parameter S_AXI_ADDR_WIDTH        = 0,

    // AXI master interface parameters
    parameter M_AXI_HBM_DATA_WIDTH    = 256,
    parameter M_AXI_HBM_ADDR_WIDTH    = 33,
    parameter M_AXI_HBM_ID_WIDTH      = 6,
    parameter M_AXI_HBM_RESP_WIDTH    = 2
) (
    input   wire                                  clk,
    input   wire                                  rst,

    // Metedata ports
    input   wire [USER_META_DATA_WIDTH-1:0]       user_metadata_in,
    input   wire                                  user_metadata_in_valid,
    output  wire [USER_META_DATA_WIDTH-1:0]       user_metadata_out,
    output  wire                                  user_metadata_out_valid,
    // AXI slave interface ports (input)
    input   wire [TDATA_NUM_BYTES*8 - 1:0]        s_axis_if_tx_tdata,     
    input   wire [TDATA_NUM_BYTES - 1:0]          s_axis_if_tx_tkeep,
    input   wire                                  s_axis_if_tx_tvalid,
    input   wire                                  s_axis_if_tx_tlast,
    output  wire                                  s_axis_if_tx_tready,
    // AXI master interface ports
    output  wire [TDATA_NUM_BYTES*8 - 1:0]        m_axis_if_tx_tdata,
    output  wire [TDATA_NUM_BYTES - 1:0]          m_axis_if_tx_tkeep,
    output  wire                                  m_axis_if_tx_tvalid,
    output  wire                                  m_axis_if_tx_tlast,
    input   wire                                  m_axis_if_tx_tready
);
    reg                                  clk_reg;
    reg [USER_META_DATA_WIDTH-1:0]       user_metadata_in_reg;
    reg                                  user_metadata_in_valid_reg;

    reg [TDATA_NUM_BYTES*8 - 1:0]        s_axis_if_tx_tdata_reg; 
    reg [TDATA_NUM_BYTES - 1:0]          s_axis_if_tx_tkeep_reg;
    reg                                  s_axis_if_tx_tvalid_reg;
    reg                                  s_axis_if_tx_tlast_reg;

    reg                                  m_axis_if_tx_tready_reg;    
    
    // simulation
    initial begin
        $monitor("Time = %0t clk = %0d user_meta_out = %0d", $time, clk_reg, user_metadata_out);
        clk_reg = 0;
        #5  clk_reg <= 1;
            user_metadata_in_reg <= 9'b0;
            user_metadata_in_valid_reg <= 1'b1;
            s_axis_if_tx_tdata_reg <= 512'h79f29860f32125f2052c4ae1080046270045fd3b6acf41010ffdbe741803c0a80301e37452ad;
            s_axis_if_tx_tkeep_reg <= 0;
            s_axis_if_tx_tvalid_reg <= 1;
            s_axis_if_tx_tlast_reg <= 1;
            m_axis_if_tx_tready_reg <= 0;
        #5  m_axis_if_tx_tready_reg <= 1;
    end
    
    vitis_net_p4_0
    p4_pkt_split_inst (
        .s_axis_aclk(clk_reg),
        .s_axis_aresetn(rst),
        .user_metadata_in(user_metadata_in_reg),
        .user_metadata_in_valid(user_metadata_in_valid_reg),
        .user_metadata_out(user_metadata_out),
        .user_metadata_out_valid(user_metadata_out_valid),

        .s_axis_tdata(s_axis_if_tx_tdata_reg),
        .s_axis_tkeep(s_axis_if_tx_tkeep_reg),
        .s_axis_tvalid(s_axis_if_tx_tvalid_reg),
        .s_axis_tlast(s_axis_if_tx_tlast_reg),
        .s_axis_tready(s_axis_if_tx_tready),

        .m_axis_tdata(m_axis_if_tx_tdata),
        .m_axis_tkeep(m_axis_if_tx_tkeep),
        .m_axis_tvalid(m_axis_if_tx_tvalid),
        .m_axis_tlast(m_axis_if_tx_tlast),
        .m_axis_tready(m_axis_if_tx_tready_reg)
    );
 



endmodule