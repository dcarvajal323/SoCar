
m
Command: %s
53*	vivadotcl2<
(route_design -directive RuntimeOptimized2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
32default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
g
Using Router directive '%s'.
20*	routeflow2$
RuntimeOptimized2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
32default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: baf60ffe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2552.453 ; gain = 19.039 ; free physical = 2181 ; free virtual = 69822default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: baf60ffe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2572.445 ; gain = 39.031 ; free physical = 2150 ; free virtual = 69512default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: baf60ffe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2582.445 ; gain = 49.031 ; free physical = 2138 ; free virtual = 69392default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: baf60ffe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2582.445 ; gain = 49.031 ; free physical = 2138 ; free virtual = 69392default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 215fd8c10
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:36 ; elapsed = 00:00:23 . Memory (MB): peak = 2611.570 ; gain = 78.156 ; free physical = 2128 ; free virtual = 69292default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-1.234 | TNS=-2.422 | WHS=-0.359 | THS=-192.754|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.5.1 Update Timing | Checksum: 1aeb4ad4f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:46 ; elapsed = 00:00:27 . Memory (MB): peak = 2611.570 ; gain = 78.156 ; free physical = 2123 ; free virtual = 69242default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-1.234 | TNS=-4.847 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 277c217c8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:46 ; elapsed = 00:00:27 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2123 ; free virtual = 69242default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 1ee0f1d55
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:46 ; elapsed = 00:00:27 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2123 ; free virtual = 69242default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
B
-Phase 3 Initial Routing | Checksum: b8844dc9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:52 ; elapsed = 00:00:30 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2122 ; free virtual = 69232default:defaulth px? 
?	
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
22default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|          dphy_hs_clock_p |          dphy_hs_clock_p |              system_i/MIPI_D_PHY_RX_0/U0/DataLaneGen[1].DPHY_LaneSFEN_X/HSDeserializerX/Deserializer/DDLY|
|          dphy_hs_clock_p |          dphy_hs_clock_p |              system_i/MIPI_D_PHY_RX_0/U0/DataLaneGen[0].DPHY_LaneSFEN_X/HSDeserializerX/Deserializer/DDLY|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-1.233 | TNS=-2.872 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 16bea2cb2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:12 ; elapsed = 00:00:41 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2117 ; free virtual = 69192default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-1.233 | TNS=-2.872 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1486da097
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:13 ; elapsed = 00:00:42 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2115 ; free virtual = 69172default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1486da097
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:13 ; elapsed = 00:00:42 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2115 ; free virtual = 69172default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 12655008e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:13 ; elapsed = 00:00:42 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2117 ; free virtual = 69182default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 12655008e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:13 ; elapsed = 00:00:42 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2117 ; free virtual = 69182default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 12655008e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:14 ; elapsed = 00:00:42 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2117 ; free virtual = 69182default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1301fed1c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:17 ; elapsed = 00:00:44 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2117 ; free virtual = 69182default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-2.422 | TNS=-5.073 | WHS=-1.070 | THS=-2.099 |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 17f0539de
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:17 ; elapsed = 00:00:44 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2116 ; free virtual = 69182default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: c8f4e41e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:17 ; elapsed = 00:00:44 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2116 ; free virtual = 69182default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1214f1ff3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:17 ; elapsed = 00:00:44 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2116 ; free virtual = 69182default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1214f1ff3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:17 ; elapsed = 00:00:44 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2116 ; free virtual = 69172default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
D
/Phase 9 Depositing Routes | Checksum: ca3ffee9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:20 ; elapsed = 00:00:47 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2101 ; free virtual = 69022default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 10.1 Update Timing | Checksum: 435e2305
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:23 ; elapsed = 00:00:48 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2115 ; free virtual = 69162default:defaulth px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=-2.422 | TNS=-5.073 | WHS=-1.070 | THS=-2.099 |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
F
1Phase 10 Post Router Timing | Checksum: 435e2305
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:23 ; elapsed = 00:00:48 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2115 ; free virtual = 69162default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:23 ; elapsed = 00:00:48 . Memory (MB): peak = 2627.570 ; gain = 94.156 ; free physical = 2134 ; free virtual = 69352default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
972default:default2
792default:default2
142default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:01:312default:default2
00:00:522default:default2
2627.5702default:default2
112.0002default:default2
21342default:default2
69352default:defaultZ17-722h px? 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2627.5702default:default2
0.0002default:default2
21342default:default2
69352default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:062default:default2
00:00:022default:default2
2627.5702default:default2
0.0002default:default2
20842default:default2
69192default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2f
R/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.runs/impl_1/system_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:112default:default2
00:00:072default:default2
2627.5702default:default2
0.0002default:default2
21232default:default2
69332default:defaultZ17-722h px? 
?
%s4*runtcl2?
Executing : report_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
rreport_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
32default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
V/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.runs/impl_1/system_wrapper_drc_routed.rptV/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.runs/impl_1/system_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:162default:default2
00:00:072default:default2
2679.1682default:default2
51.5982default:default2
21122default:default2
69222default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file system_wrapper_methodology_drc_routed.rpt -pb system_wrapper_methodology_drc_routed.pb -rpx system_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file system_wrapper_methodology_drc_routed.rpt -pb system_wrapper_methodology_drc_routed.pb -rpx system_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
?User defined clock exists on pin %s%s%s%s%s%s and will prevent any subsequent automatic derivation of generated clocks on that pin. If the user defined clock specifies '-add', any existing auto-derived clocks on that pin are retained.
3*timing2?
Hsystem_i/video_dynclk/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst/CLKOUT0Hsystem_i/video_dynclk/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst/CLKOUT02default:default2
 [See 2default:default2?
Z/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.srcs/constrs_1/imports/constraints/timing.xdcZ/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.srcs/constrs_1/imports/constraints/timing.xdc2default:default2
:2default:default2
992default:default2
]2default:default8Z38-3h px? 
?
?User defined clock exists on pin %s%s%s%s%s%s and will prevent any subsequent automatic derivation of generated clocks on that pin. If the user defined clock specifies '-add', any existing auto-derived clocks on that pin are retained.
3*timing2l
*system_i/DVIClocking_0/U0/PixelClkBuffer/O*system_i/DVIClocking_0/U0/PixelClkBuffer/O2default:default2
 [See 2default:default2?
Z/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.srcs/constrs_1/imports/constraints/timing.xdcZ/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.srcs/constrs_1/imports/constraints/timing.xdc2default:default2
:2default:default2
17172default:default2
]2default:default8Z38-3h px? 
Y
$Running Methodology with %s threads
74*drc2
32default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
b/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.runs/impl_1/system_wrapper_methodology_drc_routed.rptb/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.runs/impl_1/system_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:302default:default2
00:00:132default:default2
2716.7892default:default2
37.6212default:default2
20982default:default2
69092default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
?User defined clock exists on pin %s%s%s%s%s%s and will prevent any subsequent automatic derivation of generated clocks on that pin. If the user defined clock specifies '-add', any existing auto-derived clocks on that pin are retained.
3*timing2?
Hsystem_i/video_dynclk/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst/CLKOUT0Hsystem_i/video_dynclk/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst/CLKOUT02default:default2
 [See 2default:default2?
Z/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.srcs/constrs_1/imports/constraints/timing.xdcZ/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.srcs/constrs_1/imports/constraints/timing.xdc2default:default2
:2default:default2
992default:default2
]2default:default8Z38-3h px? 
?
?User defined clock exists on pin %s%s%s%s%s%s and will prevent any subsequent automatic derivation of generated clocks on that pin. If the user defined clock specifies '-add', any existing auto-derived clocks on that pin are retained.
3*timing2l
*system_i/DVIClocking_0/U0/PixelClkBuffer/O*system_i/DVIClocking_0/U0/PixelClkBuffer/O2default:default2
 [See 2default:default2?
Z/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.srcs/constrs_1/imports/constraints/timing.xdcZ/home/ramsey/SoCar/VivadoProject/SoCar/SoCar.srcs/constrs_1/imports/constraints/timing.xdc2default:default2
:2default:default2
17172default:default2
]2default:default8Z38-3h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1102default:default2
842default:default2
142default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:142default:default2
00:00:082default:default2
2716.7892default:default2
0.0002default:default2
20602default:default2
68812default:defaultZ17-722h px? 
?
%s4*runtcl2}
iExecuting : report_route_status -file system_wrapper_route_status.rpt -pb system_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file system_wrapper_timing_summary_routed.rpt -pb system_wrapper_timing_summary_routed.pb -rpx system_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
32default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2k
WExecuting : report_incremental_reuse -file system_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2k
WExecuting : report_clock_utilization -file system_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file system_wrapper_bus_skew_routed.rpt -pb system_wrapper_bus_skew_routed.pb -rpx system_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
32default:defaultZ38-191h px? 


End Record