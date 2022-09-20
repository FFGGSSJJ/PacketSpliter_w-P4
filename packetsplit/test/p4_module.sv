// This module is just for ports and parameter references
// DO NOT add this module into the project file as it is useless
module vitis_net_p4_0 #(
   parameter TDATA_NUM_BYTES         = 64,
   parameter TUSER_WIDTH             = 0,
   parameter TID_WIDTH               = 0,
   parameter TDEST_WIDTH             = 0,
   parameter USER_META_DATA_WIDTH    = 9,
   parameter NUM_USER_EXTERNS        = 0,
   parameter USER_EXTERN_IN_WIDTH    = 0,
   parameter USER_EXTERN_OUT_WIDTH   = 0,
   parameter S_AXI_DATA_WIDTH        = 32,
   parameter S_AXI_ADDR_WIDTH        = 0,
   parameter M_AXI_HBM_DATA_WIDTH    = 256,
   parameter M_AXI_HBM_ADDR_WIDTH    = 33,
   parameter M_AXI_HBM_ID_WIDTH      = 6,
   parameter M_AXI_HBM_RESP_WIDTH    = 2
) (
   // clocks & resets
   input  logic                              s_axis_aclk,
   input  logic                              s_axis_aresetn,
   // Metadata
   input  logic [USER_META_DATA_WIDTH-1:0]   user_metadata_in,
   input  logic                              user_metadata_in_valid,
   output logic [USER_META_DATA_WIDTH-1:0]   user_metadata_out,
   output logic                              user_metadata_out_valid,
   // AXI Master port
   output logic [TDATA_NUM_BYTES*8-1:0]      m_axis_tdata,
   output logic [TDATA_NUM_BYTES-1:0]        m_axis_tkeep,
   output logic                              m_axis_tvalid,
   output logic                              m_axis_tlast,
   input  logic                              m_axis_tready,
   // AXI Slave port
   input  logic [TDATA_NUM_BYTES*8-1:0]      s_axis_tdata,
   input  logic [TDATA_NUM_BYTES-1:0]        s_axis_tkeep,
   input  logic                              s_axis_tvalid,
   input  logic                              s_axis_tlast,
   output logic                              s_axis_tready
);
   // vitis_net_p4_0_top is automatically generated in the ip src folder
   vitis_net_p4_0_top inst(.*);

endmodule