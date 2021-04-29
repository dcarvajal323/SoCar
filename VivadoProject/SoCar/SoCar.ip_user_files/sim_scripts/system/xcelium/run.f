-makelib xcelium_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ipshared/40b8/hdl/LineBuffer.vhd" \
  "../../../bd/system/ipshared/40b8/hdl/AXI_BayerToRGB.vhd" \
  "../../../bd/system/ip/system_AXI_BayerToRGB_1_0/sim/system_AXI_BayerToRGB_1_0.vhd" \
  "../../../bd/system/ipshared/30c9/hdl/StoredGammaCoefs.vhd" \
  "../../../bd/system/ipshared/30c9/hdl/AXI_GammaCorrection.vhd" \
  "../../../bd/system/ip/system_AXI_GammaCorrection_0_0/sim/system_AXI_GammaCorrection_0_0.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/cdc_fifo/sim/cdc_fifo.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk/sim/ila_rxclk.vhd" \
  "../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_rxclk_lane/sim/ila_rxclk_lane.vhd" \
  "../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/ila_vidclk/sim/ila_vidclk.vhd" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_data_fifo_v2_0_1 \
  "../../../../SoCar.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/hdl/axis_data_fifo_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_MIPI_CSI_2_RX_0_0/hdl/line_buffer/sim/line_buffer.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_clk_wiz_0_50M_0/sim/system_rst_clk_wiz_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_20 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_DVIClocking_0_0_1/sim/system_DVIClocking_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_13 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/4dac/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_12 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/7268/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_21 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/e644/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_7 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_7 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/ec9e/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_vdma_0_2/sim/system_axi_vdma_0_2.vhd" \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/d57c/src/ClockGen.vhd" \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/d57c/src/SyncAsync.vhd" \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/d57c/src/SyncAsyncReset.vhd" \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/d57c/src/DVI_Constants.vhd" \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/d57c/src/OutputSERDES.vhd" \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/d57c/src/TMDS_Encoder.vhd" \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/d57c/src/rgb2dvi.vhd" \
  "../../../bd/system/ip/system_rgb2dvi_0_0_1/sim/system_rgb2dvi_0_0.vhd" \
  "../../../bd/system/ip/system_rst_vid_clk_dyn_0_1/sim/system_rst_vid_clk_dyn_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_tc_v6_1_13 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/v_axi4s_vid_out_v4_0_10 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_v_axi4s_vid_out_0_0_1/sim/system_v_axi4s_vid_out_0_0.v" \
  "../../../bd/system/ip/system_video_dynclk_0_1/system_video_dynclk_0_mmcm_pll_drp.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_video_dynclk_0_1/proc_common_v3_00_a/hdl/src/vhdl/system_video_dynclk_0_conv_funs_pkg.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/proc_common_v3_00_a/hdl/src/vhdl/system_video_dynclk_0_proc_common_pkg.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/proc_common_v3_00_a/hdl/src/vhdl/system_video_dynclk_0_ipif_pkg.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/proc_common_v3_00_a/hdl/src/vhdl/system_video_dynclk_0_family_support.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/proc_common_v3_00_a/hdl/src/vhdl/system_video_dynclk_0_family.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/proc_common_v3_00_a/hdl/src/vhdl/system_video_dynclk_0_soft_reset.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/proc_common_v3_00_a/hdl/src/vhdl/system_video_dynclk_0_pselect_f.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_video_dynclk_0_address_decoder.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_video_dynclk_0_slave_attachment.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/axi_lite_ipif_v1_01_a/hdl/src/vhdl/system_video_dynclk_0_axi_lite_ipif.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/system_video_dynclk_0_clk_wiz_drp.vhd" \
  "../../../bd/system/ip/system_video_dynclk_0_1/system_video_dynclk_0_axi_clk_config.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_video_dynclk_0_1/system_video_dynclk_0_clk_wiz.v" \
  "../../../bd/system/ip/system_video_dynclk_0_1/system_video_dynclk_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_vtg_0_1/sim/system_vtg_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_3 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xlconcat_0_0_1/sim/system_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ipshared/5011/src/pwm_gen_module.vhd" \
  "../../../bd/system/ipshared/5011/hdl/pwm_gen_v1_0_S00_AXI.vhd" \
  "../../../bd/system/ipshared/5011/hdl/pwm_gen_v1_0.vhd" \
  "../../../bd/system/ip/system_pwm_gen_0_0_1/sim/system_pwm_gen_0_0.vhd" \
  "../../../bd/system/ip/system_pwm_gen_1_0_1/sim/system_pwm_gen_1_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../SoCar.srcs/sources_1/bd/system/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
  "../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
  "../../../bd/system/ip/system_auto_pc_2_1/sim/system_auto_pc_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/sim/system.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

