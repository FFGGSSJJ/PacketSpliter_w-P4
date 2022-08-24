# Buglog Report

##### 2022.08.24

###### bigserver Vivado environment issue: <u>Unable to locate the VitisNetP4 IP</u>

- Description

`/tools/Xilinx/Vivado/2022.1/bin/unwrapped/lnx64.o/p4c-vitisnet.tcl` contains `VITIS_NET_P4_IP_VERSION` to specify VitisNetP4 IP version as `vitis_net_p4_v1_0`, 

while under `/tools/Xilinx/Vivado/2022.1/data/ip/xilinx/` only contains `vitis_net_p4_v1_1`

- Solution

change `VITIS_NET_P4_IP_VERSION` from `vitis_net_p4_v1_0` to `vitis_net_p4_v1_1`.