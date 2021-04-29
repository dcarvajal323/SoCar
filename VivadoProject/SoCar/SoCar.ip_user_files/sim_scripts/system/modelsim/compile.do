vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/fifo_generator_v13_2_4
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_data_fifo_v2_0_1
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_fifo_v1_0_13
vlib modelsim_lib/msim/blk_mem_gen_v8_4_3
vlib modelsim_lib/msim/lib_bmg_v1_0_12
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_21
vlib modelsim_lib/msim/axi_vdma_v6_3_7
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_5
vlib modelsim_lib/msim/processing_system7_vip_v1_0_7
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_19
vlib modelsim_lib/msim/axi_data_fifo_v2_1_18
vlib modelsim_lib/msim/axi_crossbar_v2_1_20
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_19

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap fifo_generator_v13_2_4 modelsim_lib/msim/fifo_generator_v13_2_4
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_1 modelsim_lib/msim/axis_data_fifo_v2_0_1
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_13 modelsim_lib/msim/lib_fifo_v1_0_13
vmap blk_mem_gen_v8_4_3 modelsim_lib/msim/blk_mem_gen_v8_4_3
vmap lib_bmg_v1_0_12 modelsim_lib/msim/lib_bmg_v1_0_12
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_21 modelsim_lib/msim/axi_datamover_v5_1_21
vmap axi_vdma_v6_3_7 modelsim_lib/msim/axi_vdma_v6_3_7
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 modelsim_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 modelsim_lib/msim/processing_system7_vip_v1_0_7
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 modelsim_lib/msim/axi_register_slice_v2_1_19
vmap axi_data_fifo_v2_1_18 modelsim_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 modelsim_lib/msim/axi_crossbar_v2_1_20
vmap axi_protocol_converter_v2_1_19 modelsim_lib/msim/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ipshared/40b8/hdl/LineBuffer.vhd" \
"../../../bd/system/ipshared/40b8/hdl/AXI_BayerToRGB.vhd" \
"../../../bd/system/ip/system_AXI_BayerToRGB_1_0/sim/system_AXI_BayerToRGB_1_0.vhd" \
"../../../bd/system/ipshared/30c9/hdl/StoredGammaCoefs.vhd" \
"../../../bd/system/ipshared/30c9/hdl/AXI_GammaCorrection.vhd" \
"../../../bd/system/ip/system_AXI_GammaCorrection_0_0/sim/system_AXI_GammaCorrection_0_0.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/sim/cdc_fifo.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/sim/ila_rxclk.vhd" \
"../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/sim/ila_rxclk_lane.vhd" \
"../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/sim/ila_vidclk.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_1 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/sim/line_buffer.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ipshared/7681/hdl/CRC16_behavioral.vhd" \
"../../../bd/system/ipshared/7681/hdl/DebugLib.vhd" \
"../../../bd/system/ipshared/7681/hdl/ECC.vhd" \
"../../../bd/system/ipshared/7681/hdl/SyncAsync.vhd" \
"../../../bd/system/ipshared/7681/hdl/SyncAsyncReset.vhd" \
"../../../bd/system/ipshared/7681/hdl/LLP.vhd" \
"../../../bd/system/ipshared/7681/hdl/SimpleFIFO.vhd" \
"../../../bd/system/ipshared/7681/hdl/LM.vhd" \
"../../../bd/system/ipshared/7681/hdl/MIPI_CSI2_Rx.vhd" \
"../../../bd/system/ipshared/7681/hdl/MIPI_CSI_2_RX_v1_0_S_AXI_LITE.vhd" \
"../../../bd/system/ipshared/7681/hdl/MIPI_CSI2_RxTop.vhd" \
"../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/sim/system_MIPI_CSI_2_RX_0_0.vhd" \
"../../../bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/sim/ila_sfen_rxclk.vhd" \
"../../../bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/sim/ila_sfen_refclk.vhd" \
"../../../bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/sim/ila_scnn_refclk.vhd" \
"../../../bd/system/ipshared/ead7/hdl/DPHY_Pkg.vhd" \
"../../../bd/system/ipshared/ead7/hdl/DebugLib.vhd" \
"../../../bd/system/ipshared/ead7/hdl/HS_Deserializer.vhd" \
"../../../bd/system/ipshared/ead7/hdl/GlitchFilter.vhd" \
"../../../bd/system/ipshared/ead7/hdl/HS_Clocking.vhd" \
"../../../bd/system/ipshared/ead7/hdl/InputBuffer.vhd" \
"../../../bd/system/ipshared/ead7/hdl/DPHY_LaneSFEN.vhd" \
"../../../bd/system/ipshared/ead7/hdl/DPHY_LaneSCNN.vhd" \
"../../../bd/system/ipshared/ead7/hdl/S_AXI_Lite.vhd" \
"../../../bd/system/ipshared/ead7/hdl/MIPI_DPHY_Receiver.vhd" \
"../../../bd/system/ip/system_MIPI_D_PHY_RX_0_0/sim/system_MIPI_D_PHY_RX_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_13 -64 -93 \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_12 -64 -93 \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/7268/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_21 -64 -93 \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_7 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_7 -64 -93 \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_vdma_0_0/sim/system_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -incr -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_clk_wiz_0_50M_0/sim/system_rst_clk_wiz_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ipshared/5011/src/pwm_gen_module.vhd" \
"../../../bd/system/ipshared/5011/hdl/pwm_gen_v1_0_S00_AXI.vhd" \
"../../../bd/system/ipshared/5011/hdl/pwm_gen_v1_0.vhd" \
"../../../bd/system/ip/system_pwm_gen_0_0_1/sim/system_pwm_gen_0_0.vhd" \
"../../../bd/system/ip/system_pwm_gen_0_1/sim/system_pwm_gen_0_1.vhd" \

vlog -work axi_protocol_converter_v2_1_19 -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../SoCar.srcs/sources_1/bd/system/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/c923" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_rxclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_sfen_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_D_PHY_RX_0_0/hdl/ila_scnn_refclk/hdl/verilog" "+incdir+../../../../SoCar.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

