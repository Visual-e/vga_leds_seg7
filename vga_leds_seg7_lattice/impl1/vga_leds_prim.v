// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Thu Nov 23 22:13:56 2017
//
// Verilog Description of module vga_leds
//

module vga_leds (CLK50MHZ, KEY0, KEY1, LED, hsync, vsync, r, g, 
            b) /* synthesis syn_module_defined=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(2[8:16])
    input CLK50MHZ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(3[15:23])
    input KEY0;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(4[15:19])
    input KEY1;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(5[15:19])
    output [7:0]LED;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(6[21:24])
    output hsync;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(8[16:21])
    output vsync;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(9[16:21])
    output [3:0]r;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(12[21:22])
    output [3:0]g;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(13[21:22])
    output [3:0]b;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(14[21:22])
    
    wire CLK50MHZ_c /* synthesis is_clock=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(3[15:23])
    wire w_clk_video /* synthesis SET_AS_NETWORK=w_clk_video, is_clock=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(17[6:17])
    
    wire GND_net, KEY0_c, KEY1_c, n38, hsync_c, vsync_c, r_c, 
        r_c_1, r_c_0, g_c, g_c_1, g_c_0, b_c_1, b_c_0, w_locked;
    wire [47:0]counter;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(27[11:18])
    
    wire n28, n173, n205, w_locked_N_2, VCC_net, n170, n193, n36, 
        n188, n190, n189, n184, n3193, n3192, n3191, n3190, 
        n3189, n187, n178, n3188, n26, n3187, n3186, n3185, 
        n198, n3184, n199, n169, n201, n168, n200, n167, n3183, 
        n166, n197, n196, n202, n3202, n191, n3201, n177, n3200, 
        n3199, n192, n30, n3198, n179, n39, n171, n29, n180, 
        n3197, n32, n175, n31, n185, n40, n3196, n194, n186, 
        n33, n183, n27, n37, n176, n172, n204, n181, n3195, 
        n203, n3194, n182, n35, n174, n34, n195;
    
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB LED_pad_6 (.I(GND_net), .O(LED[6]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(6[21:24])
    FD1P3AX counter_303_389__i0 (.D(n205), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n40)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i0.GSR = "ENABLED";
    LUT4 w_locked_I_0_1_lut (.A(w_locked), .Z(w_locked_N_2)) /* synthesis lut_function=(!(A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(38[11:20])
    defparam w_locked_I_0_1_lut.init = 16'h5555;
    CCU2D counter_303_389_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3191), .COUT(n3192), .S0(n188), .S1(n187));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_19.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3190), .COUT(n3191), .S0(n190), .S1(n189));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_17.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_15 (.A0(n27), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n26), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3189), .COUT(n3190), .S0(n192), .S1(n191));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_15.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_13 (.A0(n29), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n28), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3188), .COUT(n3189), .S0(n194), .S1(n193));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_13.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_11 (.A0(n31), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n30), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3187), .COUT(n3188), .S0(n196), .S1(n195));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_11.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_9 (.A0(n33), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n32), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3186), .COUT(n3187), .S0(n198), .S1(n197));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_9.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_7 (.A0(n35), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n34), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3185), .COUT(n3186), .S0(n200), .S1(n199));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_7.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_5 (.A0(n37), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n36), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3184), .COUT(n3185), .S0(n202), .S1(n201));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_5.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_3 (.A0(n39), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n38), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3183), .COUT(n3184), .S0(n204), .S1(n203));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_3.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n40), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3183), .S1(n205));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_1.INIT0 = 16'hF000;
    defparam counter_303_389_add_4_1.INIT1 = 16'h0555;
    defparam counter_303_389_add_4_1.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_1.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_41 (.A0(counter[39]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3202), .S0(n166));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_41.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_41.INIT1 = 16'h0000;
    defparam counter_303_389_add_4_41.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_41.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_39 (.A0(counter[37]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[38]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3201), .COUT(n3202), .S0(n168), .S1(n167));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_39.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_39.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_39.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_39.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_37 (.A0(counter[35]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[36]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3200), .COUT(n3201), .S0(n170), .S1(n169));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_37.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_37.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_37.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_37.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_35 (.A0(counter[33]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[34]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3199), .COUT(n3200), .S0(n172), .S1(n171));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_35.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_35.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_35.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_35.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[32]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3198), .COUT(n3199), .S0(n174), .S1(n173));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_33.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_33.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_33.INJECT1_1 = "NO";
    OB LED_pad_5 (.I(GND_net), .O(LED[5]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(6[21:24])
    CCU2D counter_303_389_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3197), .COUT(n3198), .S0(n176), .S1(n175));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_31.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3196), .COUT(n3197), .S0(n178), .S1(n177));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_29.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3195), .COUT(n3196), .S0(n180), .S1(n179));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_27.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3194), .COUT(n3195), .S0(n182), .S1(n181));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_25.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_303_389_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3193), .COUT(n3194), .S0(n184), .S1(n183));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_23.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_23.INJECT1_1 = "NO";
    FD1P3AX counter_303_389__i39 (.D(n166), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[39])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i39.GSR = "ENABLED";
    CCU2D counter_303_389_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3192), .COUT(n3193), .S0(n186), .S1(n185));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_303_389_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_303_389_add_4_21.INJECT1_0 = "NO";
    defparam counter_303_389_add_4_21.INJECT1_1 = "NO";
    FD1P3AX counter_303_389__i38 (.D(n167), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[38])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i38.GSR = "ENABLED";
    FD1P3AX counter_303_389__i37 (.D(n168), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[37])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i37.GSR = "ENABLED";
    FD1P3AX counter_303_389__i36 (.D(n169), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[36])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i36.GSR = "ENABLED";
    FD1P3AX counter_303_389__i35 (.D(n170), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[35])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i35.GSR = "ENABLED";
    FD1P3AX counter_303_389__i34 (.D(n171), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[34])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i34.GSR = "ENABLED";
    FD1P3AX counter_303_389__i33 (.D(n172), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[33])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i33.GSR = "ENABLED";
    FD1P3AX counter_303_389__i32 (.D(n173), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[32])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i32.GSR = "ENABLED";
    FD1P3AX counter_303_389__i31 (.D(n174), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i31.GSR = "ENABLED";
    FD1P3AX counter_303_389__i30 (.D(n175), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i30.GSR = "ENABLED";
    FD1P3AX counter_303_389__i29 (.D(n176), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i29.GSR = "ENABLED";
    FD1P3AX counter_303_389__i28 (.D(n177), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i28.GSR = "ENABLED";
    FD1P3AX counter_303_389__i27 (.D(n178), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i27.GSR = "ENABLED";
    FD1P3AX counter_303_389__i26 (.D(n179), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i26.GSR = "ENABLED";
    FD1P3AX counter_303_389__i25 (.D(n180), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i25.GSR = "ENABLED";
    FD1P3AX counter_303_389__i24 (.D(n181), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i24.GSR = "ENABLED";
    FD1P3AX counter_303_389__i23 (.D(n182), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i23.GSR = "ENABLED";
    FD1P3AX counter_303_389__i22 (.D(n183), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i22.GSR = "ENABLED";
    FD1P3AX counter_303_389__i21 (.D(n184), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i21.GSR = "ENABLED";
    FD1P3AX counter_303_389__i20 (.D(n185), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i20.GSR = "ENABLED";
    FD1P3AX counter_303_389__i19 (.D(n186), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i19.GSR = "ENABLED";
    FD1P3AX counter_303_389__i18 (.D(n187), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i18.GSR = "ENABLED";
    FD1P3AX counter_303_389__i17 (.D(n188), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i17.GSR = "ENABLED";
    FD1P3AX counter_303_389__i16 (.D(n189), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i16.GSR = "ENABLED";
    FD1P3AX counter_303_389__i15 (.D(n190), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i15.GSR = "ENABLED";
    FD1P3AX counter_303_389__i14 (.D(n191), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n26)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i14.GSR = "ENABLED";
    FD1P3AX counter_303_389__i13 (.D(n192), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n27)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i13.GSR = "ENABLED";
    FD1P3AX counter_303_389__i12 (.D(n193), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n28)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i12.GSR = "ENABLED";
    FD1P3AX counter_303_389__i11 (.D(n194), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n29)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i11.GSR = "ENABLED";
    FD1P3AX counter_303_389__i10 (.D(n195), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n30)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i10.GSR = "ENABLED";
    FD1P3AX counter_303_389__i9 (.D(n196), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n31)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i9.GSR = "ENABLED";
    FD1P3AX counter_303_389__i8 (.D(n197), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n32)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i8.GSR = "ENABLED";
    FD1P3AX counter_303_389__i7 (.D(n198), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n33)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i7.GSR = "ENABLED";
    FD1P3AX counter_303_389__i6 (.D(n199), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n34)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i6.GSR = "ENABLED";
    FD1P3AX counter_303_389__i5 (.D(n200), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n35)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i5.GSR = "ENABLED";
    FD1P3AX counter_303_389__i4 (.D(n201), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n36)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i4.GSR = "ENABLED";
    FD1P3AX counter_303_389__i3 (.D(n202), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n37)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i3.GSR = "ENABLED";
    FD1P3AX counter_303_389__i2 (.D(n203), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n38)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i2.GSR = "ENABLED";
    FD1P3AX counter_303_389__i1 (.D(n204), .SP(KEY1_c), .CK(w_clk_video), 
            .Q(n39)) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(34[14:23])
    defparam counter_303_389__i1.GSR = "ENABLED";
    IB KEY1_pad (.I(KEY1), .O(KEY1_c));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(5[15:19])
    IB KEY0_pad (.I(KEY0), .O(KEY0_c));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(4[15:19])
    IB CLK50MHZ_pad (.I(CLK50MHZ), .O(CLK50MHZ_c));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(3[15:23])
    OB b_pad_0 (.I(b_c_0), .O(b[0]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(14[21:22])
    OB b_pad_1 (.I(b_c_1), .O(b[1]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(14[21:22])
    OB b_pad_2 (.I(GND_net), .O(b[2]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(14[21:22])
    OB b_pad_3 (.I(GND_net), .O(b[3]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(14[21:22])
    OB g_pad_0 (.I(g_c_0), .O(g[0]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(13[21:22])
    OB g_pad_1 (.I(g_c_1), .O(g[1]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(13[21:22])
    OB g_pad_2 (.I(g_c), .O(g[2]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(13[21:22])
    OB g_pad_3 (.I(g_c), .O(g[3]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(13[21:22])
    OB r_pad_0 (.I(r_c_0), .O(r[0]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(12[21:22])
    OB r_pad_1 (.I(r_c_1), .O(r[1]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(12[21:22])
    OB r_pad_2 (.I(r_c), .O(r[2]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(12[21:22])
    OB r_pad_3 (.I(r_c), .O(r[3]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(12[21:22])
    OB vsync_pad (.I(vsync_c), .O(vsync));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(9[16:21])
    OB hsync_pad (.I(hsync_c), .O(hsync));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(8[16:21])
    OB LED_pad_0 (.I(GND_net), .O(LED[0]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(6[21:24])
    OB LED_pad_1 (.I(GND_net), .O(LED[1]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(6[21:24])
    OB LED_pad_2 (.I(GND_net), .O(LED[2]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(6[21:24])
    OB LED_pad_3 (.I(GND_net), .O(LED[3]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(6[21:24])
    OB LED_pad_4 (.I(GND_net), .O(LED[4]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(6[21:24])
    GSR GSR_INST (.GSR(KEY0_c));
    OB LED_pad_7 (.I(GND_net), .O(LED[7]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(6[21:24])
    main_pll main_pll_inst (.CLK50MHZ_c(CLK50MHZ_c), .w_clk_video(w_clk_video), 
            .w_locked(w_locked), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(21[10] 25[5])
    VLO i1 (.Z(GND_net));
    display r_3__I_0 (.vsync_c(vsync_c), .w_clk_video(w_clk_video), .\counter[15] (counter[15]), 
            .hsync_c(hsync_c), .\counter[24] (counter[24]), .\counter[23] (counter[23]), 
            .g_c(g_c), .r_c_0(r_c_0), .r_c(r_c), .\counter[22] (counter[22]), 
            .\counter[21] (counter[21]), .g_c_0(g_c_0), .\counter[16] (counter[16]), 
            .g_c_1(g_c_1), .b_c_1(b_c_1), .\counter[20] (counter[20]), 
            .\counter[19] (counter[19]), .r_c_1(r_c_1), .b_c_0(b_c_0), 
            .\counter[18] (counter[18]), .\counter[31] (counter[31]), .\counter[30] (counter[30]), 
            .\counter[29] (counter[29]), .\counter[28] (counter[28]), .\counter[27] (counter[27]), 
            .\counter[26] (counter[26]), .\counter[25] (counter[25]), .\counter[17] (counter[17]), 
            .\counter[39] (counter[39]), .\counter[38] (counter[38]), .\counter[37] (counter[37]), 
            .\counter[36] (counter[36]), .\counter[35] (counter[35]), .\counter[34] (counter[34]), 
            .\counter[33] (counter[33]), .\counter[32] (counter[32]), .w_locked_N_2(w_locked_N_2), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(37[9] 48[6])
    TSALL TSALL_INST (.TSALL(GND_net));
    VHI i4201 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module main_pll
//

module main_pll (CLK50MHZ_c, w_clk_video, w_locked, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input CLK50MHZ_c;
    output w_clk_video;
    output w_locked;
    input GND_net;
    
    wire CLK50MHZ_c /* synthesis is_clock=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(3[15:23])
    wire w_clk_video /* synthesis SET_AS_NETWORK=w_clk_video, is_clock=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(17[6:17])
    
    wire CLKFB_t;
    
    EHXPLLJ PLLInst_0 (.CLKI(CLK50MHZ_c), .CLKFB(CLKFB_t), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(w_clk_video), .LOCK(w_locked), 
            .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOP="75.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=10, LSE_RCOL=5, LSE_LLINE=21, LSE_RLINE=25 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(21[10] 25[5])
    defparam PLLInst_0.CLKI_DIV = 2;
    defparam PLLInst_0.CLKFB_DIV = 3;
    defparam PLLInst_0.CLKOP_DIV = 7;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 6;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "INT_DIVA";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module display
//

module display (vsync_c, w_clk_video, \counter[15] , hsync_c, \counter[24] , 
            \counter[23] , g_c, r_c_0, r_c, \counter[22] , \counter[21] , 
            g_c_0, \counter[16] , g_c_1, b_c_1, \counter[20] , \counter[19] , 
            r_c_1, b_c_0, \counter[18] , \counter[31] , \counter[30] , 
            \counter[29] , \counter[28] , \counter[27] , \counter[26] , 
            \counter[25] , \counter[17] , \counter[39] , \counter[38] , 
            \counter[37] , \counter[36] , \counter[35] , \counter[34] , 
            \counter[33] , \counter[32] , w_locked_N_2, GND_net) /* synthesis syn_module_defined=1 */ ;
    output vsync_c;
    input w_clk_video;
    input \counter[15] ;
    output hsync_c;
    input \counter[24] ;
    input \counter[23] ;
    output g_c;
    output r_c_0;
    output r_c;
    input \counter[22] ;
    input \counter[21] ;
    output g_c_0;
    input \counter[16] ;
    output g_c_1;
    output b_c_1;
    input \counter[20] ;
    input \counter[19] ;
    output r_c_1;
    output b_c_0;
    input \counter[18] ;
    input \counter[31] ;
    input \counter[30] ;
    input \counter[29] ;
    input \counter[28] ;
    input \counter[27] ;
    input \counter[26] ;
    input \counter[25] ;
    input \counter[17] ;
    input \counter[39] ;
    input \counter[38] ;
    input \counter[37] ;
    input \counter[36] ;
    input \counter[35] ;
    input \counter[34] ;
    input \counter[33] ;
    input \counter[32] ;
    input w_locked_N_2;
    input GND_net;
    
    wire w_clk_video /* synthesis SET_AS_NETWORK=w_clk_video, is_clock=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(17[6:17])
    wire w_hsync /* synthesis is_clock=1, SET_AS_NETWORK=\r_3__I_0/w_hsync */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(24[6:13])
    
    wire w_vsync;
    wire [2:0]n1856;
    wire [2:0]n1868;
    
    wire n4087;
    wire [2:0]n1872;
    
    wire r_vsync_;
    wire [6:0]seg7_0;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(127[10:16])
    wire [7:0]seg7_0_6__N_157;
    wire [6:0]seg7_1;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(128[10:16])
    wire [7:0]seg7_1_6__N_164;
    wire [2:0]n2113;
    
    wire n3226, n1537;
    wire [2:0]color_2__N_214;
    wire [23:0]segments_fixed;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(57[25:39])
    wire [7:0]seg7_4_6__N_185;
    wire [15:0]red_leds_fixed;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(55[23:37])
    wire [7:0]seg7_3_6__N_178;
    wire [15:0]green_leds_fixed;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(56[25:41])
    wire [6:0]seg7_5;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(132[10:16])
    wire [6:0]seg7_4;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(131[10:16])
    
    wire h_seg_line4, n4565;
    wire [2:0]n737;
    wire [6:0]seg7_2;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(129[10:16])
    wire [7:0]seg7_2_6__N_171;
    wire [6:0]seg7_3;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(130[10:16])
    wire [7:0]seg7_5_6__N_192;
    wire [2:0]color_fixed;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(314[10:21])
    wire [2:0]color;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(144[10:15])
    wire [2:0]n1168;
    wire [31:0]n826;
    
    wire vr_seg_line2;
    wire [2:0]n1184;
    
    wire n4558, n4562;
    wire [2:0]n1188;
    wire [2:0]n1164;
    wire [2:0]n1192;
    
    wire n4574;
    wire [11:0]w_pixel_count;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    
    wire n3775, red_leds_fixed_15__N_208, n4580, n3834, n4583, n4586, 
        h_seg_line0, n8, vr_seg_line3;
    wire [2:0]n1840;
    wire [31:0]n1498;
    
    wire n4550;
    wire [2:0]n1196;
    wire [2:0]n1836;
    wire [2:0]n1864;
    
    wire n4553;
    wire [2:0]n1180;
    
    wire n4549;
    wire [2:0]n1200;
    
    wire color_2__N_205, n4560, n4386, vl_seg_line2, n4579, n43, 
        n4414, n4591, n4569, n4446, n3831, n4447, n4592, n4568, 
        n1431, n759, n1206, n1534, vl_seg_line0, n3910, n3252, 
        n4556, n5, n4571, n40, n4570, n4566, n4559, n2367, n4564, 
        vl_seg_line1, vl_seg_line4, vl_seg_line5;
    wire [2:0]n1160;
    wire [2:0]n1172;
    wire [2:0]n1176;
    
    wire n4578, n16;
    wire [2:0]n1844;
    wire [2:0]n1848;
    
    wire n4561, n4072;
    wire [2:0]n1832;
    
    wire n4226, n4548, n4448;
    wire [2:0]n2081;
    
    wire n27, n4596, n16_adj_386, n4587, n14, n3916;
    wire [11:0]w_line_count;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(28[12:24])
    
    wire n4445, n4;
    wire [2:0]n2085;
    
    wire h_seg_line1, n30, n4588, n4600;
    wire [2:0]n1860;
    
    wire n29, n4584, n4593, n4594, n4577, n4572, n3902, n1530, 
        n534, n4223, n3821, n2455, n1503, n2461, n938, n4589, 
        n4163, n4164;
    wire [3:0]led_idx;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(78[11:18])
    wire [31:0]current_red_led_N_256;
    
    wire n4576, color_2__N_220;
    wire [2:0]n1421;
    wire [2:0]n1425;
    
    wire n4449, n4385, n4384, n4178, n4179;
    wire [31:0]color_2__N_211;
    
    wire n4159, n4160, n4590;
    wire [2:0]n2105;
    wire [2:0]n2109;
    wire [2:0]n741;
    wire [2:0]n745;
    
    wire n4581, n4413;
    wire [2:0]n1417;
    wire [2:0]n1413;
    wire [2:0]n1409;
    
    wire h_seg_line3, n4567;
    wire [2:0]color_2__N_199;
    wire [2:0]n1852;
    
    wire n4173, n4161, n4162, n4151, n4152, n4153, n4154, n4155, 
        n4156, n4157, n4158, n7, n4166, n4167, n4171, n4169, 
        n4172, n4168, n4551, n2363, n4170, n4023, n3880, n4563, 
        n1514, n12, n2311, n3795, n4069, n4557, n4035, n4412, 
        n4585, n4573, n4555, n4174, n4175, n4176, n4177, n4599, 
        n4552, n4582, n10, n3771, n4554, n4031, n1504, n2427, 
        n4_adj_387, n4597, n14_adj_388, n2423;
    
    FD1S3AX r_vsync_212 (.D(w_vsync), .CK(w_clk_video), .Q(vsync_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam r_vsync_212.GSR = "DISABLED";
    L6MUX21 mux_183_i2 (.D0(n1856[1]), .D1(n1868[1]), .SD(n4087), .Z(n1872[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    FD1S3AX r_vsync__213 (.D(vsync_c), .CK(w_clk_video), .Q(r_vsync_)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam r_vsync__213.GSR = "DISABLED";
    FD1S3AX seg7_0_i0 (.D(seg7_0_6__N_157[0]), .CK(w_clk_video), .Q(seg7_0[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_0_i0.GSR = "DISABLED";
    FD1S3AX seg7_1_i0 (.D(seg7_1_6__N_164[0]), .CK(w_clk_video), .Q(seg7_1[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_1_i0.GSR = "DISABLED";
    PFUMX mux_203_i3 (.BLUT(n2113[2]), .ALUT(n3226), .C0(n1537), .Z(color_2__N_214[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 segments_fixed_16__bdd_4_lut (.A(segments_fixed[16]), .B(segments_fixed[19]), 
         .C(segments_fixed[17]), .D(segments_fixed[18]), .Z(seg7_4_6__N_185[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam segments_fixed_16__bdd_4_lut.init = 16'hf67d;
    LUT4 red_leds_fixed_13__bdd_4_lut (.A(red_leds_fixed[13]), .B(red_leds_fixed[12]), 
         .C(red_leds_fixed[15]), .D(red_leds_fixed[14]), .Z(seg7_3_6__N_178[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam red_leds_fixed_13__bdd_4_lut.init = 16'hb7f1;
    LUT4 green_leds_fixed_8__bdd_4_lut (.A(green_leds_fixed[8]), .B(segments_fixed[5]), 
         .C(segments_fixed[4]), .D(segments_fixed[6]), .Z(seg7_1_6__N_164[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam green_leds_fixed_8__bdd_4_lut.init = 16'hbdee;
    LUT4 mux_110_i1_4_lut (.A(seg7_5[0]), .B(seg7_4[0]), .C(h_seg_line4), 
         .D(n4565), .Z(n737[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(179[3] 182[12])
    defparam mux_110_i1_4_lut.init = 16'hcac0;
    FD1S3AX seg7_2_i0 (.D(seg7_2_6__N_171[0]), .CK(w_clk_video), .Q(seg7_2[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_2_i0.GSR = "DISABLED";
    FD1S3AX seg7_3_i0 (.D(seg7_3_6__N_178[0]), .CK(w_clk_video), .Q(seg7_3[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_3_i0.GSR = "DISABLED";
    FD1S3AX seg7_4_i0 (.D(seg7_4_6__N_185[0]), .CK(w_clk_video), .Q(seg7_4[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_4_i0.GSR = "DISABLED";
    FD1S3AX seg7_5_i0 (.D(seg7_5_6__N_192[0]), .CK(w_clk_video), .Q(seg7_5[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_5_i0.GSR = "DISABLED";
    FD1S3AX color_fixed_i0 (.D(color[0]), .CK(w_clk_video), .Q(color_fixed[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(315[8] 316[21])
    defparam color_fixed_i0.GSR = "DISABLED";
    LUT4 segments_fixed_5__bdd_4_lut_4090 (.A(segments_fixed[5]), .B(green_leds_fixed[8]), 
         .C(segments_fixed[6]), .D(segments_fixed[4]), .Z(seg7_1_6__N_164[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam segments_fixed_5__bdd_4_lut_4090.init = 16'h671f;
    PFUMX mux_137_i2 (.BLUT(n1168[1]), .ALUT(n826[1]), .C0(vr_seg_line2), 
          .Z(n1184[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 red_leds_fixed_11__bdd_4_lut (.A(red_leds_fixed[11]), .B(red_leds_fixed[9]), 
         .C(green_leds_fixed[9]), .D(red_leds_fixed[10]), .Z(seg7_2_6__N_171[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam red_leds_fixed_11__bdd_4_lut.init = 16'hbdee;
    LUT4 i3900_3_lut_4_lut (.A(n4558), .B(n4562), .C(n1188[0]), .D(n1164[0]), 
         .Z(n1192[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(195[3] 222[12])
    defparam i3900_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_110_i2_4_lut (.A(seg7_5[0]), .B(seg7_4[0]), .C(h_seg_line4), 
         .D(n4565), .Z(n737[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(179[3] 182[12])
    defparam mux_110_i2_4_lut.init = 16'h3530;
    LUT4 n12_bdd_4_lut (.A(n4574), .B(w_pixel_count[8]), .C(w_pixel_count[7]), 
         .D(w_pixel_count[6]), .Z(n3775)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n12_bdd_4_lut.init = 16'h0008;
    FD1P3AX green_leds_fixed_i0_i0 (.D(\counter[15] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(green_leds_fixed[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam green_leds_fixed_i0_i0.GSR = "DISABLED";
    PFUMX mux_183_i1 (.BLUT(n1856[0]), .ALUT(n1868[0]), .C0(n4087), .Z(n1872[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 red_leds_fixed_9__bdd_4_lut (.A(red_leds_fixed[9]), .B(green_leds_fixed[9]), 
         .C(red_leds_fixed[11]), .D(red_leds_fixed[10]), .Z(seg7_2_6__N_171[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam red_leds_fixed_9__bdd_4_lut.init = 16'hb7f1;
    LUT4 i1_2_lut_rep_71_3_lut_4_lut (.A(n4574), .B(w_pixel_count[6]), .C(n4580), 
         .D(w_pixel_count[7]), .Z(n4558)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_71_3_lut_4_lut.init = 16'h0080;
    LUT4 red_leds_fixed_1__bdd_4_lut_4094 (.A(red_leds_fixed[1]), .B(segments_fixed[3]), 
         .C(segments_fixed[2]), .D(segments_fixed[0]), .Z(seg7_0_6__N_157[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam red_leds_fixed_1__bdd_4_lut_4094.init = 16'h671f;
    LUT4 i2_2_lut_4_lut (.A(n3834), .B(n4583), .C(n4586), .D(h_seg_line0), 
         .Z(n8)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;
    defparam i2_2_lut_4_lut.init = 16'hff08;
    LUT4 green_leds_fixed_9__bdd_4_lut (.A(green_leds_fixed[9]), .B(red_leds_fixed[11]), 
         .C(red_leds_fixed[10]), .D(red_leds_fixed[9]), .Z(seg7_2_6__N_171[4])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam green_leds_fixed_9__bdd_4_lut.init = 16'hddc5;
    LUT4 segments_fixed_21__bdd_4_lut (.A(segments_fixed[21]), .B(segments_fixed[20]), 
         .C(segments_fixed[23]), .D(segments_fixed[22]), .Z(seg7_5_6__N_192[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam segments_fixed_21__bdd_4_lut.init = 16'hb7f1;
    LUT4 i1_4_lut_4_lut (.A(n4574), .B(w_pixel_count[6]), .C(w_pixel_count[7]), 
         .D(n4586), .Z(vr_seg_line3)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0020;
    FD1S3AX r_hsync_211 (.D(w_hsync), .CK(w_clk_video), .Q(hsync_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam r_hsync_211.GSR = "DISABLED";
    LUT4 segments_fixed_3__bdd_4_lut (.A(segments_fixed[3]), .B(red_leds_fixed[1]), 
         .C(segments_fixed[0]), .D(segments_fixed[2]), .Z(seg7_0_6__N_157[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam segments_fixed_3__bdd_4_lut.init = 16'hbdee;
    PFUMX mux_179_i2 (.BLUT(n1840[1]), .ALUT(n1498[1]), .C0(vr_seg_line2), 
          .Z(n1856[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    L6MUX21 mux_140_i2 (.D0(n1184[1]), .D1(n1192[1]), .SD(n4550), .Z(n1196[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 red_leds_fixed_11__bdd_4_lut_4087 (.A(red_leds_fixed[11]), .B(red_leds_fixed[9]), 
         .C(green_leds_fixed[9]), .D(red_leds_fixed[10]), .Z(seg7_2_6__N_171[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam red_leds_fixed_11__bdd_4_lut_4087.init = 16'h3ee7;
    LUT4 segments_fixed_4__bdd_4_lut_4099 (.A(segments_fixed[4]), .B(green_leds_fixed[8]), 
         .C(segments_fixed[6]), .D(segments_fixed[5]), .Z(seg7_1_6__N_164[4])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam segments_fixed_4__bdd_4_lut_4099.init = 16'hddc5;
    LUT4 red_leds_fixed_13__bdd_4_lut_4079 (.A(red_leds_fixed[13]), .B(red_leds_fixed[15]), 
         .C(red_leds_fixed[14]), .D(red_leds_fixed[12]), .Z(seg7_3_6__N_178[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam red_leds_fixed_13__bdd_4_lut_4079.init = 16'h671f;
    LUT4 red_leds_fixed_15__bdd_4_lut_4072 (.A(red_leds_fixed[15]), .B(red_leds_fixed[13]), 
         .C(red_leds_fixed[12]), .D(red_leds_fixed[14]), .Z(seg7_3_6__N_178[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam red_leds_fixed_15__bdd_4_lut_4072.init = 16'h3ee7;
    PFUMX mux_182_i2 (.BLUT(n1836[1]), .ALUT(n1864[1]), .C0(n4553), .Z(n1868[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 segments_fixed_5__bdd_4_lut (.A(segments_fixed[5]), .B(segments_fixed[4]), 
         .C(green_leds_fixed[8]), .D(segments_fixed[6]), .Z(seg7_1_6__N_164[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam segments_fixed_5__bdd_4_lut.init = 16'hb7f1;
    LUT4 segments_fixed_23__bdd_4_lut (.A(segments_fixed[23]), .B(segments_fixed[21]), 
         .C(segments_fixed[20]), .D(segments_fixed[22]), .Z(seg7_5_6__N_192[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam segments_fixed_23__bdd_4_lut.init = 16'hbdee;
    L6MUX21 mux_141_i1 (.D0(n1180[0]), .D1(n1196[0]), .SD(n4549), .Z(n1200[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 segments_fixed_20__bdd_4_lut (.A(segments_fixed[20]), .B(segments_fixed[23]), 
         .C(segments_fixed[22]), .D(segments_fixed[21]), .Z(seg7_5_6__N_192[4])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam segments_fixed_20__bdd_4_lut.init = 16'hddc5;
    LUT4 segments_fixed_0__bdd_4_lut_4104 (.A(segments_fixed[0]), .B(segments_fixed[3]), 
         .C(segments_fixed[2]), .D(red_leds_fixed[1]), .Z(seg7_0_6__N_157[4])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam segments_fixed_0__bdd_4_lut_4104.init = 16'hddc5;
    LUT4 i3894_3_lut_4_lut (.A(color_2__N_205), .B(n4560), .C(n4386), 
         .D(n737[1]), .Z(n2113[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(225[2] 311[11])
    defparam i3894_3_lut_4_lut.init = 16'hf1e0;
    LUT4 red_leds_fixed_1__bdd_4_lut (.A(red_leds_fixed[1]), .B(segments_fixed[0]), 
         .C(segments_fixed[3]), .D(segments_fixed[2]), .Z(seg7_0_6__N_157[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam red_leds_fixed_1__bdd_4_lut.init = 16'hb7f1;
    LUT4 mux_132_i2_3_lut (.A(seg7_3[5]), .B(seg7_2[5]), .C(vl_seg_line2), 
         .Z(n1164[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(216[3] 222[12])
    defparam mux_132_i2_3_lut.init = 16'h3535;
    LUT4 n10_bdd_4_lut (.A(n4579), .B(w_pixel_count[5]), .C(w_pixel_count[7]), 
         .D(w_pixel_count[6]), .Z(n43)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam n10_bdd_4_lut.init = 16'h0020;
    LUT4 i3892_3_lut_4_lut (.A(color_2__N_205), .B(n4560), .C(n4414), 
         .D(n737[0]), .Z(n2113[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(225[2] 311[11])
    defparam i3892_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_3_lut_rep_82_4_lut (.A(w_pixel_count[7]), .B(n4591), .C(n4586), 
         .D(n3834), .Z(n4569)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i2_3_lut_rep_82_4_lut.init = 16'h0800;
    LUT4 b_c_bdd_2_lut_4085 (.A(n4446), .B(n3831), .Z(n4447)) /* synthesis lut_function=(A (B)) */ ;
    defparam b_c_bdd_2_lut_4085.init = 16'h8888;
    LUT4 i2_4_lut (.A(n4592), .B(n4568), .C(w_pixel_count[8]), .D(w_pixel_count[7]), 
         .Z(vr_seg_line2)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i2_4_lut.init = 16'h0400;
    LUT4 i1254_3_lut (.A(n1431), .B(n759), .C(n1206), .Z(n1534)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam i1254_3_lut.init = 16'hcdcd;
    FD1P3AX green_leds_fixed_i0_i9 (.D(\counter[24] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(green_leds_fixed[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam green_leds_fixed_i0_i9.GSR = "DISABLED";
    FD1P3AX green_leds_fixed_i0_i8 (.D(\counter[23] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(green_leds_fixed[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam green_leds_fixed_i0_i8.GSR = "DISABLED";
    LUT4 segments_fixed_4__bdd_4_lut (.A(segments_fixed[4]), .B(green_leds_fixed[8]), 
         .C(segments_fixed[5]), .D(segments_fixed[6]), .Z(seg7_1_6__N_164[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam segments_fixed_4__bdd_4_lut.init = 16'hf67d;
    LUT4 i3_4_lut (.A(n4558), .B(n4592), .C(vl_seg_line0), .D(n3910), 
         .Z(n3252)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3_4_lut.init = 16'hfbfa;
    LUT4 i2_2_lut (.A(n4556), .B(n3775), .Z(n3910)) /* synthesis lut_function=(A+(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n4586), .B(n5), .C(n4571), .D(n43), .Z(n40)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i1_4_lut.init = 16'h5554;
    LUT4 i1_4_lut_4_lut_adj_23 (.A(w_pixel_count[7]), .B(n4591), .C(n4570), 
         .D(n4586), .Z(vl_seg_line2)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i1_4_lut_4_lut_adj_23.init = 16'h0020;
    LUT4 i1_4_lut_adj_24 (.A(n4566), .B(w_pixel_count[5]), .C(n4559), 
         .D(n4570), .Z(n5)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i1_4_lut_adj_24.init = 16'hbbba;
    LUT4 i1_4_lut_rep_69 (.A(n2367), .B(n4564), .C(w_pixel_count[8]), 
         .D(n4592), .Z(n4556)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1_4_lut_rep_69.init = 16'h5f40;
    LUT4 i1_2_lut_4_lut (.A(n2367), .B(n4564), .C(w_pixel_count[8]), .D(n4592), 
         .Z(vl_seg_line1)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0040;
    LUT4 mux_131_i1_4_lut (.A(seg7_5[5]), .B(seg7_4[5]), .C(vl_seg_line4), 
         .D(vl_seg_line5), .Z(n1160[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(219[3] 222[12])
    defparam mux_131_i1_4_lut.init = 16'hcac0;
    LUT4 mux_135_i2_3_lut_4_lut (.A(n4586), .B(n4566), .C(seg7_4[1]), 
         .D(n1172[1]), .Z(n1176[1])) /* synthesis lut_function=(A (D)+!A !(B (C)+!B !(D))) */ ;
    defparam mux_135_i2_3_lut_4_lut.init = 16'hbf04;
    LUT4 i415_3_lut_4_lut (.A(n4578), .B(w_pixel_count[5]), .C(w_pixel_count[6]), 
         .D(w_pixel_count[7]), .Z(n16)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i415_3_lut_4_lut.init = 16'hfff8;
    LUT4 segments_fixed_0__bdd_4_lut (.A(segments_fixed[0]), .B(segments_fixed[3]), 
         .C(red_leds_fixed[1]), .D(segments_fixed[2]), .Z(seg7_0_6__N_157[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam segments_fixed_0__bdd_4_lut.init = 16'hf67d;
    LUT4 mux_177_i2_3_lut_4_lut (.A(n4586), .B(n4566), .C(seg7_4[2]), 
         .D(n1844[1]), .Z(n1848[1])) /* synthesis lut_function=(A (D)+!A !(B (C)+!B !(D))) */ ;
    defparam mux_177_i2_3_lut_4_lut.init = 16'hbf04;
    LUT4 mux_177_i1_3_lut_4_lut (.A(n4586), .B(n4566), .C(seg7_4[2]), 
         .D(n1844[0]), .Z(n1848[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_177_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 i3956_2_lut_3_lut_4_lut (.A(n4586), .B(n4566), .C(vl_seg_line0), 
         .D(n4561), .Z(n4072)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i3956_2_lut_3_lut_4_lut.init = 16'hfff4;
    PFUMX mux_140_i1 (.BLUT(n1184[0]), .ALUT(n1192[0]), .C0(n4550), .Z(n1196[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 mux_135_i1_3_lut_4_lut (.A(n4586), .B(n4566), .C(seg7_4[1]), 
         .D(n1172[0]), .Z(n1176[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_135_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_173_i1_4_lut (.A(seg7_5[4]), .B(seg7_4[4]), .C(vl_seg_line4), 
         .D(vl_seg_line5), .Z(n1832[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(282[3] 285[12])
    defparam mux_173_i1_4_lut.init = 16'hcac0;
    LUT4 i3954_2_lut_rep_61_3_lut_4_lut (.A(n4566), .B(n4580), .C(n1431), 
         .D(n4226), .Z(n4548)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i3954_2_lut_rep_61_3_lut_4_lut.init = 16'hfff8;
    LUT4 mux_173_i2_4_lut (.A(seg7_5[4]), .B(seg7_4[4]), .C(vl_seg_line4), 
         .D(vl_seg_line5), .Z(n1832[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(282[3] 285[12])
    defparam mux_173_i2_4_lut.init = 16'h3530;
    LUT4 n29_bdd_3_lut_4060_4_lut (.A(n4566), .B(n4580), .C(seg7_0[2]), 
         .D(seg7_1[2]), .Z(n4448)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n29_bdd_3_lut_4060_4_lut.init = 16'hf780;
    LUT4 i443_2_lut_rep_83_3_lut (.A(n4579), .B(w_pixel_count[5]), .C(w_pixel_count[6]), 
         .Z(n4570)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i443_2_lut_rep_83_3_lut.init = 16'he0e0;
    LUT4 i45_3_lut (.A(n2081[1]), .B(seg7_0[3]), .C(h_seg_line0), .Z(n27)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(311[3:11])
    defparam i45_3_lut.init = 16'h3a3a;
    LUT4 i1_3_lut_3_lut_4_lut (.A(n4596), .B(w_pixel_count[2]), .C(w_pixel_count[3]), 
         .D(w_pixel_count[4]), .Z(n3834)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h0ffe;
    LUT4 mux_138_i1_3_lut_4_lut (.A(n4566), .B(n4580), .C(seg7_0[1]), 
         .D(seg7_1[1]), .Z(n1188[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_138_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i438_2_lut_3_lut_4_lut (.A(n4579), .B(w_pixel_count[5]), .C(w_pixel_count[7]), 
         .D(w_pixel_count[6]), .Z(n16_adj_386)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i438_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i3961_4_lut (.A(n4587), .B(n14), .C(n3916), .D(w_line_count[7]), 
         .Z(n1431)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(225[2] 311[11])
    defparam i3961_4_lut.init = 16'hfbff;
    LUT4 n29_bdd_3_lut_4053 (.A(n2081[0]), .B(h_seg_line0), .C(seg7_0[3]), 
         .Z(n4445)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n29_bdd_3_lut_4053.init = 16'he2e2;
    LUT4 i445_4_lut (.A(w_line_count[5]), .B(w_line_count[6]), .C(n4), 
         .D(w_line_count[4]), .Z(n14)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i445_4_lut.init = 16'heccc;
    LUT4 mux_138_i2_3_lut_4_lut (.A(n4566), .B(n4580), .C(seg7_0[1]), 
         .D(seg7_1[1]), .Z(n1188[1])) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (D))) */ ;
    defparam mux_138_i2_3_lut_4_lut.init = 16'h087f;
    LUT4 i44_3_lut (.A(n2085[1]), .B(seg7_1[3]), .C(h_seg_line1), .Z(n30)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(311[3:11])
    defparam i44_3_lut.init = 16'h3a3a;
    LUT4 i411_2_lut_rep_77_3_lut_4_lut (.A(n4579), .B(w_pixel_count[5]), 
         .C(w_pixel_count[7]), .D(w_pixel_count[6]), .Z(n4564)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i411_2_lut_rep_77_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3576_4_lut (.A(n4588), .B(n4600), .C(w_line_count[5]), .D(w_line_count[4]), 
         .Z(n3916)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i3576_4_lut.init = 16'ha8a0;
    LUT4 mux_180_i2_3_lut_4_lut (.A(n4566), .B(n4580), .C(seg7_0[2]), 
         .D(seg7_1[2]), .Z(n1860[1])) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (D))) */ ;
    defparam mux_180_i2_3_lut_4_lut.init = 16'h087f;
    LUT4 i2_3_lut_rep_92_4_lut (.A(n4596), .B(w_pixel_count[2]), .C(w_pixel_count[3]), 
         .D(w_pixel_count[4]), .Z(n4579)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_92_4_lut.init = 16'he000;
    LUT4 i43_3_lut (.A(n2085[0]), .B(seg7_1[3]), .C(h_seg_line1), .Z(n29)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(311[3:11])
    defparam i43_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_91_4_lut (.A(n4596), .B(w_pixel_count[2]), .C(w_pixel_count[3]), 
         .D(w_pixel_count[4]), .Z(n4578)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_91_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_25 (.A(n4580), .B(n4584), .C(n16), .D(n4593), 
         .Z(h_seg_line1)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_4_lut_adj_25.init = 16'h0020;
    LUT4 i3565_2_lut_rep_90_3_lut_4_lut (.A(w_pixel_count[8]), .B(n4592), 
         .C(n4594), .D(w_pixel_count[3]), .Z(n4577)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3565_2_lut_rep_90_3_lut_4_lut.init = 16'hfeee;
    LUT4 i4_4_lut (.A(w_pixel_count[6]), .B(n4580), .C(n4572), .D(n3902), 
         .Z(h_seg_line0)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i470_2_lut_rep_81_3_lut (.A(n4579), .B(w_pixel_count[5]), .C(w_pixel_count[6]), 
         .Z(n4568)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i470_2_lut_rep_81_3_lut.init = 16'h8080;
    LUT4 i3950_2_lut_rep_66_3_lut_4_lut (.A(n4566), .B(n4580), .C(n1431), 
         .D(n4562), .Z(n4553)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i3950_2_lut_rep_66_3_lut_4_lut.init = 16'hfff8;
    LUT4 i1257_4_lut (.A(n1530), .B(n534), .C(n1534), .D(n1206), .Z(n1537)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;
    defparam i1257_4_lut.init = 16'hcfce;
    LUT4 i3952_2_lut_3_lut_4_lut (.A(n4566), .B(n4580), .C(n1431), .D(n4223), 
         .Z(n4087)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i3952_2_lut_3_lut_4_lut.init = 16'hfff8;
    LUT4 i1250_4_lut (.A(n4587), .B(n1431), .C(n3821), .D(n2455), .Z(n1530)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(248[2] 311[11])
    defparam i1250_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_79_3_lut_4_lut (.A(n4579), .B(w_pixel_count[5]), .C(w_pixel_count[7]), 
         .D(w_pixel_count[6]), .Z(n4566)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_79_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_adj_26 (.A(n4587), .B(n1503), .C(n2461), .D(w_line_count[7]), 
         .Z(n534)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_26.init = 16'h0400;
    LUT4 i1_4_lut_adj_27 (.A(w_line_count[3]), .B(n938), .C(w_line_count[4]), 
         .D(n4589), .Z(n1503)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_27.init = 16'hfcec;
    L6MUX21 i3823 (.D0(n4163), .D1(n4164), .SD(led_idx[3]), .Z(current_red_led_N_256[0]));
    LUT4 mux_131_i2_4_lut (.A(seg7_5[5]), .B(seg7_4[5]), .C(vl_seg_line4), 
         .D(vl_seg_line5), .Z(n1160[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(219[3] 222[12])
    defparam mux_131_i2_4_lut.init = 16'h3530;
    LUT4 i663_2_lut (.A(w_line_count[5]), .B(w_line_count[6]), .Z(n938)) /* synthesis lut_function=(A+(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(162[29:48])
    defparam i663_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(n4564), .B(n4593), .C(n4586), .D(w_pixel_count[5]), 
         .Z(vl_seg_line5)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i2_3_lut_4_lut.init = 16'h0002;
    LUT4 segments_fixed_21__bdd_4_lut_4096 (.A(segments_fixed[21]), .B(segments_fixed[23]), 
         .C(segments_fixed[22]), .D(segments_fixed[20]), .Z(seg7_5_6__N_192[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam segments_fixed_21__bdd_4_lut_4096.init = 16'h671f;
    LUT4 i1_2_lut_rep_84_3_lut (.A(n4579), .B(w_pixel_count[5]), .C(w_pixel_count[6]), 
         .Z(n4571)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_84_3_lut.init = 16'h0808;
    LUT4 i2_2_lut_rep_74_3_lut_4_lut (.A(n4579), .B(w_pixel_count[5]), .C(n4576), 
         .D(w_pixel_count[6]), .Z(n4561)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_2_lut_rep_74_3_lut_4_lut.init = 16'h0008;
    LUT4 i3996_2_lut_rep_73 (.A(color_2__N_220), .B(h_seg_line0), .Z(n4560)) /* synthesis lut_function=(A+(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(225[2] 311[11])
    defparam i3996_2_lut_rep_73.init = 16'heeee;
    LUT4 mux_156_i2_3_lut (.A(n1421[1]), .B(seg7_0[6]), .C(h_seg_line0), 
         .Z(n1425[1])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(230[3] 245[12])
    defparam mux_156_i2_3_lut.init = 16'h3a3a;
    PFUMX i4054 (.BLUT(n4448), .ALUT(n4447), .C0(n1431), .Z(n4449));
    LUT4 mux_176_i2_3_lut_4_lut (.A(n4576), .B(n4571), .C(seg7_5[2]), 
         .D(seg7_0[4]), .Z(n1844[1])) /* synthesis lut_function=(!(A (D)+!A (B (C)+!B (D)))) */ ;
    defparam mux_176_i2_3_lut_4_lut.init = 16'h04bf;
    PFUMX i4027 (.BLUT(n4385), .ALUT(n4384), .C0(color_2__N_205), .Z(n4386));
    L6MUX21 i3838 (.D0(n4178), .D1(n4179), .SD(led_idx[3]), .Z(color_2__N_211[0]));
    LUT4 mux_134_i2_3_lut_4_lut (.A(n4576), .B(n4571), .C(seg7_5[1]), 
         .D(seg7_0[5]), .Z(n1172[1])) /* synthesis lut_function=(!(A (D)+!A (B (C)+!B (D)))) */ ;
    defparam mux_134_i2_3_lut_4_lut.init = 16'h04bf;
    L6MUX21 i3821 (.D0(n4159), .D1(n4160), .SD(n4590), .Z(n4163));
    LUT4 mux_176_i1_3_lut_4_lut (.A(n4576), .B(n4571), .C(seg7_5[2]), 
         .D(seg7_0[4]), .Z(n1844[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_176_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_134_i1_3_lut_4_lut (.A(n4576), .B(n4571), .C(seg7_5[1]), 
         .D(seg7_0[5]), .Z(n1172[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam mux_134_i1_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_201_i1_3_lut (.A(n2105[0]), .B(n1425[0]), .C(n1206), .Z(n2109[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(248[2] 311[11])
    defparam mux_201_i1_3_lut.init = 16'hcaca;
    LUT4 mux_112_i1_3_lut (.A(n741[0]), .B(seg7_1[0]), .C(h_seg_line1), 
         .Z(n745[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(173[3] 182[12])
    defparam mux_112_i1_3_lut.init = 16'hcaca;
    LUT4 mux_156_i1_3_lut (.A(n1421[0]), .B(seg7_0[6]), .C(h_seg_line0), 
         .Z(n1425[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(230[3] 245[12])
    defparam mux_156_i1_3_lut.init = 16'hcaca;
    LUT4 color_2__N_211_0__bdd_4_lut_4140 (.A(color_2__N_220), .B(n4581), 
         .C(seg7_0[0]), .D(current_red_led_N_256[0]), .Z(n4413)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;
    defparam color_2__N_211_0__bdd_4_lut_4140.init = 16'hd850;
    LUT4 mux_155_i1_3_lut (.A(n1417[0]), .B(seg7_1[6]), .C(h_seg_line1), 
         .Z(n1421[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(233[3] 245[12])
    defparam mux_155_i1_3_lut.init = 16'hcaca;
    LUT4 segments_fixed_19__bdd_4_lut_4056 (.A(segments_fixed[19]), .B(segments_fixed[17]), 
         .C(segments_fixed[16]), .D(segments_fixed[18]), .Z(seg7_4_6__N_185[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam segments_fixed_19__bdd_4_lut_4056.init = 16'h3ee7;
    LUT4 mux_154_i1_3_lut (.A(n1413[0]), .B(seg7_2[6]), .C(n4569), .Z(n1417[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(236[3] 245[12])
    defparam mux_154_i1_3_lut.init = 16'hcaca;
    LUT4 mux_153_i1_3_lut (.A(n1409[0]), .B(seg7_3[6]), .C(h_seg_line3), 
         .Z(n1413[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(239[3] 245[12])
    defparam mux_153_i1_3_lut.init = 16'hcaca;
    LUT4 mux_112_i2_3_lut (.A(n741[1]), .B(seg7_1[0]), .C(h_seg_line1), 
         .Z(n745[1])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(173[3] 182[12])
    defparam mux_112_i2_3_lut.init = 16'h3a3a;
    LUT4 mux_152_i1_4_lut (.A(seg7_5[6]), .B(seg7_4[6]), .C(h_seg_line4), 
         .D(n4565), .Z(n1409[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(242[3] 245[12])
    defparam mux_152_i1_4_lut.init = 16'hcac0;
    LUT4 color_2__I_4_i1_3_lut_4_lut (.A(color_2__N_205), .B(n4567), .C(color_2__N_214[0]), 
         .D(n1200[0]), .Z(color_2__N_199[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(162[2] 311[11])
    defparam color_2__I_4_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_200_i2_3_lut_4_lut (.A(n1431), .B(n4549), .C(n1872[1]), .D(n1852[1]), 
         .Z(n2105[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(288[2] 311[11])
    defparam mux_200_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_155_i2_3_lut (.A(n1417[1]), .B(seg7_1[6]), .C(h_seg_line1), 
         .Z(n1421[1])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(233[3] 245[12])
    defparam mux_155_i2_3_lut.init = 16'h3a3a;
    LUT4 mux_154_i2_3_lut (.A(n1413[1]), .B(seg7_2[6]), .C(n4569), .Z(n1417[1])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(236[3] 245[12])
    defparam mux_154_i2_3_lut.init = 16'h3a3a;
    LUT4 segments_fixed_17__bdd_4_lut_4057 (.A(segments_fixed[17]), .B(segments_fixed[19]), 
         .C(segments_fixed[18]), .D(segments_fixed[16]), .Z(seg7_4_6__N_185[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam segments_fixed_17__bdd_4_lut_4057.init = 16'h671f;
    LUT4 i3831_3_lut_3_lut (.A(w_pixel_count[5]), .B(red_leds_fixed[14]), 
         .C(red_leds_fixed[13]), .Z(n4173)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3831_3_lut_3_lut.init = 16'he4e4;
    L6MUX21 i3822 (.D0(n4161), .D1(n4162), .SD(n4590), .Z(n4164));
    LUT4 red_leds_fixed_15__I_2_2_lut (.A(r_vsync_), .B(vsync_c), .Z(red_leds_fixed_15__N_208)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(65[6:37])
    defparam red_leds_fixed_15__I_2_2_lut.init = 16'h4444;
    LUT4 mux_153_i2_3_lut (.A(n1409[1]), .B(seg7_3[6]), .C(h_seg_line3), 
         .Z(n1413[1])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(239[3] 245[12])
    defparam mux_153_i2_3_lut.init = 16'h3a3a;
    LUT4 mux_175_i1_3_lut (.A(seg7_1[4]), .B(seg7_3[2]), .C(vr_seg_line3), 
         .Z(n1840[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(276[3] 285[12])
    defparam mux_175_i1_3_lut.init = 16'hcaca;
    LUT4 i3809_3_lut_3_lut (.A(w_pixel_count[5]), .B(red_leds_fixed[1]), 
         .C(segments_fixed[0]), .Z(n4151)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3809_3_lut_3_lut.init = 16'he4e4;
    LUT4 mux_152_i2_4_lut (.A(seg7_5[6]), .B(seg7_4[6]), .C(h_seg_line4), 
         .D(n4565), .Z(n1409[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(242[3] 245[12])
    defparam mux_152_i2_4_lut.init = 16'h3530;
    LUT4 i3810_3_lut_3_lut (.A(w_pixel_count[5]), .B(segments_fixed[3]), 
         .C(segments_fixed[2]), .Z(n4152)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3810_3_lut_3_lut.init = 16'he4e4;
    LUT4 red_leds_fixed_9__bdd_4_lut_4088 (.A(red_leds_fixed[9]), .B(red_leds_fixed[11]), 
         .C(red_leds_fixed[10]), .D(green_leds_fixed[9]), .Z(seg7_2_6__N_171[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam red_leds_fixed_9__bdd_4_lut_4088.init = 16'h671f;
    LUT4 i3811_3_lut_3_lut (.A(w_pixel_count[5]), .B(segments_fixed[5]), 
         .C(segments_fixed[4]), .Z(n4153)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3811_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3812_3_lut_3_lut (.A(w_pixel_count[5]), .B(green_leds_fixed[8]), 
         .C(segments_fixed[6]), .Z(n4154)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3812_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3813_3_lut_3_lut (.A(w_pixel_count[5]), .B(red_leds_fixed[9]), 
         .C(green_leds_fixed[9]), .Z(n4155)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3813_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3814_3_lut_3_lut (.A(w_pixel_count[5]), .B(red_leds_fixed[11]), 
         .C(red_leds_fixed[10]), .Z(n4156)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3814_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3815_3_lut_3_lut (.A(w_pixel_count[5]), .B(red_leds_fixed[13]), 
         .C(red_leds_fixed[12]), .Z(n4157)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3815_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3816_3_lut_3_lut (.A(w_pixel_count[5]), .B(red_leds_fixed[15]), 
         .C(red_leds_fixed[14]), .Z(n4158)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3816_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_4_lut_adj_28 (.A(n4577), .B(n16), .C(n4593), .D(h_seg_line3), 
         .Z(n7)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_28.init = 16'hff04;
    LUT4 i3824_3_lut_3_lut (.A(w_pixel_count[5]), .B(segments_fixed[0]), 
         .C(green_leds_fixed[0]), .Z(n4166)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3824_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3825_3_lut_3_lut (.A(w_pixel_count[5]), .B(segments_fixed[2]), 
         .C(red_leds_fixed[1]), .Z(n4167)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3825_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3829_3_lut_3_lut (.A(w_pixel_count[5]), .B(red_leds_fixed[10]), 
         .C(red_leds_fixed[9]), .Z(n4171)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3829_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3827_3_lut_3_lut (.A(w_pixel_count[5]), .B(segments_fixed[6]), 
         .C(segments_fixed[5]), .Z(n4169)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3827_3_lut_3_lut.init = 16'he4e4;
    LUT4 i3830_3_lut_3_lut (.A(w_pixel_count[5]), .B(red_leds_fixed[12]), 
         .C(red_leds_fixed[11]), .Z(n4172)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3830_3_lut_3_lut.init = 16'he4e4;
    LUT4 color_2__I_4_i3_4_lut (.A(color_2__N_214[2]), .B(current_red_led_N_256[0]), 
         .C(color_2__N_220), .D(n4581), .Z(color_2__N_199[2])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(162[2] 311[11])
    defparam color_2__I_4_i3_4_lut.init = 16'h3a0a;
    LUT4 i3826_3_lut_3_lut (.A(w_pixel_count[5]), .B(segments_fixed[4]), 
         .C(segments_fixed[3]), .Z(n4168)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3826_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1765_2_lut (.A(color_fixed[0]), .B(color_fixed[1]), .Z(g_c)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(320[2] 361[9])
    defparam i1765_2_lut.init = 16'h2222;
    LUT4 i3937_3_lut (.A(color_fixed[2]), .B(color_fixed[1]), .C(color_fixed[0]), 
         .Z(r_c_0)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(320[2] 361[9])
    defparam i3937_3_lut.init = 16'hebeb;
    LUT4 i1_3_lut (.A(color_fixed[0]), .B(color_fixed[2]), .C(color_fixed[1]), 
         .Z(r_c)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(320[2] 361[9])
    defparam i1_3_lut.init = 16'h2828;
    LUT4 mux_141_i2_3_lut_4_lut (.A(n4558), .B(n4226), .C(n1196[1]), .D(n1180[1]), 
         .Z(n1200[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam mux_141_i2_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_203_i1 (.BLUT(n745[0]), .ALUT(n2113[0]), .C0(n4551), .Z(color_2__N_214[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 i33_4_lut (.A(segments_fixed[23]), .B(segments_fixed[21]), .C(segments_fixed[20]), 
         .D(segments_fixed[22]), .Z(seg7_5_6__N_192[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(106[2] 123[9])
    defparam i33_4_lut.init = 16'h3ee7;
    LUT4 segments_fixed_19__bdd_4_lut (.A(segments_fixed[19]), .B(segments_fixed[17]), 
         .C(segments_fixed[16]), .D(segments_fixed[18]), .Z(seg7_4_6__N_185[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam segments_fixed_19__bdd_4_lut.init = 16'hbdee;
    LUT4 i1_4_lut_adj_29 (.A(n4592), .B(n2363), .C(n16_adj_386), .D(w_pixel_count[8]), 
         .Z(vl_seg_line0)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_29.init = 16'h1000;
    LUT4 i3828_3_lut_3_lut (.A(w_pixel_count[5]), .B(green_leds_fixed[9]), 
         .C(green_leds_fixed[8]), .Z(n4170)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3828_3_lut_3_lut.init = 16'he4e4;
    L6MUX21 color_2__I_0_i2 (.D0(n2109[1]), .D1(color_2__N_199[1]), .SD(n4023), 
            .Z(color[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 i9_1_lut_rep_103 (.A(w_pixel_count[7]), .Z(n4590)) /* synthesis lut_function=(!(A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i9_1_lut_rep_103.init = 16'h5555;
    PFUMX color_2__I_0_i1 (.BLUT(n2109[0]), .ALUT(color_2__N_199[0]), .C0(n4023), 
          .Z(color[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 i2_4_lut_4_lut (.A(w_pixel_count[7]), .B(n4591), .C(n4570), .D(n4586), 
         .Z(vl_seg_line4)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i2_4_lut_4_lut.init = 16'h0010;
    LUT4 segments_fixed_17__bdd_4_lut (.A(segments_fixed[17]), .B(segments_fixed[16]), 
         .C(segments_fixed[19]), .D(segments_fixed[18]), .Z(seg7_4_6__N_185[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam segments_fixed_17__bdd_4_lut.init = 16'hb7f1;
    PFUMX mux_201_i2 (.BLUT(n2105[1]), .ALUT(n1425[1]), .C0(n1206), .Z(n2109[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 segments_fixed_16__bdd_4_lut_4080 (.A(segments_fixed[16]), .B(segments_fixed[19]), 
         .C(segments_fixed[18]), .D(segments_fixed[17]), .Z(seg7_4_6__N_185[4])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam segments_fixed_16__bdd_4_lut_4080.init = 16'hddc5;
    FD1P3AX segments_fixed_i0_i6 (.D(\counter[22] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i6.GSR = "DISABLED";
    LUT4 i1605_3_lut_3_lut (.A(w_pixel_count[7]), .B(w_pixel_count[9]), 
         .C(w_pixel_count[8]), .Z(n3880)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i1605_3_lut_3_lut.init = 16'hecec;
    LUT4 i2007_2_lut_rep_104 (.A(w_pixel_count[5]), .B(w_pixel_count[6]), 
         .Z(n4591)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2007_2_lut_rep_104.init = 16'h8888;
    LUT4 i2078_2_lut_3_lut (.A(w_pixel_count[5]), .B(w_pixel_count[6]), 
         .C(w_pixel_count[7]), .Z(n2363)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i2078_2_lut_3_lut.init = 16'hf8f8;
    LUT4 mux_18_Mux_2_i15_4_lut (.A(segments_fixed[22]), .B(segments_fixed[20]), 
         .C(segments_fixed[23]), .D(segments_fixed[21]), .Z(seg7_5_6__N_192[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B+(C+!(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(106[2] 123[9])
    defparam mux_18_Mux_2_i15_4_lut.init = 16'h5edf;
    FD1P3AX segments_fixed_i0_i5 (.D(\counter[21] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i5.GSR = "DISABLED";
    PFUMX color_2__I_4_i2 (.BLUT(n1200[1]), .ALUT(color_2__N_214[1]), .C0(n4563), 
          .Z(color_2__N_199[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 i2_4_lut_adj_30 (.A(n1514), .B(n12), .C(n2311), .D(w_line_count[6]), 
         .Z(color_2__N_205)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_30.init = 16'h0400;
    LUT4 i1_2_lut_rep_96_3_lut (.A(w_pixel_count[5]), .B(w_pixel_count[6]), 
         .C(w_pixel_count[7]), .Z(n4583)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_96_3_lut.init = 16'h8080;
    LUT4 i2031_2_lut (.A(w_line_count[4]), .B(w_line_count[5]), .Z(n2311)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2031_2_lut.init = 16'heeee;
    LUT4 i14_4_lut_3_lut (.A(color_fixed[1]), .B(color_fixed[2]), .C(color_fixed[0]), 
         .Z(g_c_0)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(320[2] 361[9])
    defparam i14_4_lut_3_lut.init = 16'hdbdb;
    FD1P3AX segments_fixed_i0_i0 (.D(\counter[16] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i0.GSR = "DISABLED";
    PFUMX mux_136_i2 (.BLUT(n1160[1]), .ALUT(n1176[1]), .C0(n4072), .Z(n1180[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 i14_3_lut_3_lut (.A(color_fixed[1]), .B(color_fixed[2]), .C(color_fixed[0]), 
         .Z(g_c_1)) /* synthesis lut_function=(A (B+!(C))+!A (C)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(320[2] 361[9])
    defparam i14_3_lut_3_lut.init = 16'hdada;
    LUT4 i3_4_lut_adj_31 (.A(w_line_count[5]), .B(w_line_count[6]), .C(n1514), 
         .D(n3795), .Z(color_2__N_220)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_31.init = 16'h0800;
    L6MUX21 mux_200_i1 (.D0(n1852[0]), .D1(n1872[0]), .SD(n4548), .Z(n2105[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 i2_2_lut_3_lut (.A(color_fixed[0]), .B(color_fixed[1]), .C(color_fixed[2]), 
         .Z(b_c_1)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(320[2] 361[9])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_4_lut_adj_32 (.A(n4586), .B(w_pixel_count[7]), .C(n4591), 
         .D(n3834), .Z(h_seg_line4)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_32.init = 16'h1000;
    FD1P3AX segments_fixed_i0_i4 (.D(\counter[20] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i4.GSR = "DISABLED";
    FD1P3AX segments_fixed_i0_i3 (.D(\counter[19] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i3.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(color_fixed[0]), .B(color_fixed[1]), .C(color_fixed[2]), 
         .Z(r_c_1)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(320[2] 361[9])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i13_4_lut_3_lut (.A(color_fixed[1]), .B(color_fixed[2]), .C(color_fixed[0]), 
         .Z(b_c_0)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(320[2] 361[9])
    defparam i13_4_lut_3_lut.init = 16'h8181;
    LUT4 i555_2_lut_rep_105 (.A(w_pixel_count[9]), .B(w_pixel_count[10]), 
         .Z(n4592)) /* synthesis lut_function=(A+(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(87[40:62])
    defparam i555_2_lut_rep_105.init = 16'heeee;
    LUT4 i2_3_lut_rep_78_4_lut (.A(n4586), .B(n4584), .C(n4593), .D(n16), 
         .Z(n4565)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_rep_78_4_lut.init = 16'h0100;
    LUT4 color_2__N_211_0__bdd_2_lut_4036_3_lut_4_lut (.A(w_pixel_count[9]), 
         .B(w_pixel_count[10]), .C(color_2__N_211[0]), .D(w_pixel_count[4]), 
         .Z(n4384)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(87[40:62])
    defparam color_2__N_211_0__bdd_2_lut_4036_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_75_3_lut (.A(w_pixel_count[9]), .B(w_pixel_count[10]), 
         .C(n3775), .Z(n4562)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(87[40:62])
    defparam i1_2_lut_rep_75_3_lut.init = 16'h1010;
    LUT4 mux_17_Mux_2_i15_4_lut (.A(segments_fixed[18]), .B(segments_fixed[16]), 
         .C(segments_fixed[19]), .D(segments_fixed[17]), .Z(seg7_4_6__N_185[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B+(C+!(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(106[2] 123[9])
    defparam mux_17_Mux_2_i15_4_lut.init = 16'h5edf;
    LUT4 i3943_2_lut_rep_63_3_lut_4_lut (.A(w_pixel_count[7]), .B(n4568), 
         .C(n4223), .D(n4580), .Z(n4550)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3943_2_lut_rep_63_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i3946_2_lut_rep_62_3_lut_4_lut (.A(w_pixel_count[7]), .B(n4568), 
         .C(n4226), .D(n4580), .Z(n4549)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3946_2_lut_rep_62_3_lut_4_lut.init = 16'hf4f0;
    FD1S3IX color_fixed_i2 (.D(color_2__N_199[2]), .CK(w_clk_video), .CD(color_2__N_205), 
            .Q(color_fixed[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(315[8] 316[21])
    defparam color_fixed_i2.GSR = "DISABLED";
    LUT4 i3945_4_lut (.A(n4562), .B(vr_seg_line2), .C(vr_seg_line3), .D(n4069), 
         .Z(n4226)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(189[3] 222[12])
    defparam i3945_4_lut.init = 16'hfffe;
    LUT4 i3727_4_lut (.A(n4557), .B(n4561), .C(vl_seg_line0), .D(n4035), 
         .Z(n4069)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(201[3] 222[12])
    defparam i3727_4_lut.init = 16'h0001;
    LUT4 i3561_2_lut_rep_89_3_lut_4_lut (.A(w_pixel_count[9]), .B(w_pixel_count[10]), 
         .C(w_pixel_count[7]), .D(w_pixel_count[8]), .Z(n4576)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(87[40:62])
    defparam i3561_2_lut_rep_89_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3693_4_lut (.A(vl_seg_line1), .B(vl_seg_line2), .C(n4586), .D(n43), 
         .Z(n4035)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(273[3] 285[12])
    defparam i3693_4_lut.init = 16'h1011;
    LUT4 color_2__N_211_0__bdd_2_lut_3_lut_4_lut (.A(w_pixel_count[9]), .B(w_pixel_count[10]), 
         .C(color_2__N_211[0]), .D(w_pixel_count[4]), .Z(n4412)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(87[40:62])
    defparam color_2__N_211_0__bdd_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 segments_fixed_20__bdd_4_lut_4095 (.A(segments_fixed[20]), .B(segments_fixed[23]), 
         .C(segments_fixed[21]), .D(segments_fixed[22]), .Z(seg7_5_6__N_192[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam segments_fixed_20__bdd_4_lut_4095.init = 16'hf67d;
    LUT4 i401_2_lut_rep_85_4_lut (.A(w_pixel_count[4]), .B(w_pixel_count[3]), 
         .C(n4585), .D(w_pixel_count[5]), .Z(n4572)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i401_2_lut_rep_85_4_lut.init = 16'hfe00;
    FD1S3AX color_fixed_i1 (.D(color[1]), .CK(w_clk_video), .Q(color_fixed[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(315[8] 316[21])
    defparam color_fixed_i1.GSR = "DISABLED";
    FD1S3AX seg7_5_i6 (.D(seg7_5_6__N_192[6]), .CK(w_clk_video), .Q(seg7_5[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_5_i6.GSR = "DISABLED";
    FD1S3AX seg7_5_i5 (.D(seg7_5_6__N_192[5]), .CK(w_clk_video), .Q(seg7_5[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_5_i5.GSR = "DISABLED";
    FD1S3AX seg7_5_i4 (.D(seg7_5_6__N_192[4]), .CK(w_clk_video), .Q(seg7_5[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_5_i4.GSR = "DISABLED";
    FD1S3AX seg7_5_i3 (.D(seg7_5_6__N_192[3]), .CK(w_clk_video), .Q(seg7_5[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_5_i3.GSR = "DISABLED";
    FD1S3AX seg7_5_i2 (.D(seg7_5_6__N_192[2]), .CK(w_clk_video), .Q(seg7_5[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_5_i2.GSR = "DISABLED";
    FD1S3AX seg7_5_i1 (.D(seg7_5_6__N_192[1]), .CK(w_clk_video), .Q(seg7_5[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_5_i1.GSR = "DISABLED";
    FD1S3AX seg7_4_i6 (.D(seg7_4_6__N_185[6]), .CK(w_clk_video), .Q(seg7_4[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_4_i6.GSR = "DISABLED";
    FD1S3AX seg7_4_i5 (.D(seg7_4_6__N_185[5]), .CK(w_clk_video), .Q(seg7_4[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_4_i5.GSR = "DISABLED";
    FD1S3AX seg7_4_i4 (.D(seg7_4_6__N_185[4]), .CK(w_clk_video), .Q(seg7_4[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_4_i4.GSR = "DISABLED";
    LUT4 mux_16_Mux_2_i15_4_lut (.A(red_leds_fixed[14]), .B(red_leds_fixed[12]), 
         .C(red_leds_fixed[15]), .D(red_leds_fixed[13]), .Z(seg7_3_6__N_178[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B+(C+!(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(106[2] 123[9])
    defparam mux_16_Mux_2_i15_4_lut.init = 16'h5edf;
    FD1S3AX seg7_4_i3 (.D(seg7_4_6__N_185[3]), .CK(w_clk_video), .Q(seg7_4[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_4_i3.GSR = "DISABLED";
    FD1S3AX seg7_4_i2 (.D(seg7_4_6__N_185[2]), .CK(w_clk_video), .Q(seg7_4[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_4_i2.GSR = "DISABLED";
    FD1S3AX seg7_4_i1 (.D(seg7_4_6__N_185[1]), .CK(w_clk_video), .Q(seg7_4[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_4_i1.GSR = "DISABLED";
    FD1S3AX seg7_3_i6 (.D(seg7_3_6__N_178[6]), .CK(w_clk_video), .Q(seg7_3[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_3_i6.GSR = "DISABLED";
    FD1S3AX seg7_3_i5 (.D(seg7_3_6__N_178[5]), .CK(w_clk_video), .Q(seg7_3[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_3_i5.GSR = "DISABLED";
    FD1S3AX seg7_3_i4 (.D(seg7_3_6__N_178[4]), .CK(w_clk_video), .Q(seg7_3[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_3_i4.GSR = "DISABLED";
    FD1S3AX seg7_3_i3 (.D(seg7_3_6__N_178[3]), .CK(w_clk_video), .Q(seg7_3[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_3_i3.GSR = "DISABLED";
    FD1S3AX seg7_3_i2 (.D(seg7_3_6__N_178[2]), .CK(w_clk_video), .Q(seg7_3[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_3_i2.GSR = "DISABLED";
    FD1S3AX seg7_3_i1 (.D(seg7_3_6__N_178[1]), .CK(w_clk_video), .Q(seg7_3[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_3_i1.GSR = "DISABLED";
    FD1P3AX segments_fixed_i0_i2 (.D(\counter[18] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i2.GSR = "DISABLED";
    FD1S3AX seg7_2_i6 (.D(seg7_2_6__N_171[6]), .CK(w_clk_video), .Q(seg7_2[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_2_i6.GSR = "DISABLED";
    FD1S3AX seg7_2_i5 (.D(seg7_2_6__N_171[5]), .CK(w_clk_video), .Q(seg7_2[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_2_i5.GSR = "DISABLED";
    FD1S3AX seg7_2_i4 (.D(seg7_2_6__N_171[4]), .CK(w_clk_video), .Q(seg7_2[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_2_i4.GSR = "DISABLED";
    FD1S3AX seg7_2_i3 (.D(seg7_2_6__N_171[3]), .CK(w_clk_video), .Q(seg7_2[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_2_i3.GSR = "DISABLED";
    FD1S3AX seg7_2_i2 (.D(seg7_2_6__N_171[2]), .CK(w_clk_video), .Q(seg7_2[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_2_i2.GSR = "DISABLED";
    FD1S3AX seg7_2_i1 (.D(seg7_2_6__N_171[1]), .CK(w_clk_video), .Q(seg7_2[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_2_i1.GSR = "DISABLED";
    FD1S3AX seg7_1_i6 (.D(seg7_1_6__N_164[6]), .CK(w_clk_video), .Q(seg7_1[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_1_i6.GSR = "DISABLED";
    FD1S3AX seg7_1_i5 (.D(seg7_1_6__N_164[5]), .CK(w_clk_video), .Q(seg7_1[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_1_i5.GSR = "DISABLED";
    FD1S3AX seg7_1_i4 (.D(seg7_1_6__N_164[4]), .CK(w_clk_video), .Q(seg7_1[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_1_i4.GSR = "DISABLED";
    FD1S3AX seg7_1_i3 (.D(seg7_1_6__N_164[3]), .CK(w_clk_video), .Q(seg7_1[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_1_i3.GSR = "DISABLED";
    FD1S3AX seg7_1_i2 (.D(seg7_1_6__N_164[2]), .CK(w_clk_video), .Q(seg7_1[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_1_i2.GSR = "DISABLED";
    FD1S3AX seg7_1_i1 (.D(seg7_1_6__N_164[1]), .CK(w_clk_video), .Q(seg7_1[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_1_i1.GSR = "DISABLED";
    FD1S3AX seg7_0_i6 (.D(seg7_0_6__N_157[6]), .CK(w_clk_video), .Q(seg7_0[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_0_i6.GSR = "DISABLED";
    LUT4 i391_2_lut_rep_86_4_lut (.A(w_pixel_count[4]), .B(w_pixel_count[3]), 
         .C(n4585), .D(w_pixel_count[5]), .Z(n4573)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i391_2_lut_rep_86_4_lut.init = 16'hff80;
    LUT4 i477_2_lut_rep_87_4_lut (.A(w_pixel_count[4]), .B(w_pixel_count[3]), 
         .C(n4585), .D(w_pixel_count[5]), .Z(n4574)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i477_2_lut_rep_87_4_lut.init = 16'h8000;
    FD1S3AX seg7_0_i5 (.D(seg7_0_6__N_157[5]), .CK(w_clk_video), .Q(seg7_0[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_0_i5.GSR = "DISABLED";
    FD1S3AX seg7_0_i4 (.D(seg7_0_6__N_157[4]), .CK(w_clk_video), .Q(seg7_0[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_0_i4.GSR = "DISABLED";
    FD1S3AX seg7_0_i3 (.D(seg7_0_6__N_157[3]), .CK(w_clk_video), .Q(seg7_0[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_0_i3.GSR = "DISABLED";
    LUT4 green_leds_fixed_9__bdd_4_lut_4089 (.A(green_leds_fixed[9]), .B(red_leds_fixed[11]), 
         .C(red_leds_fixed[9]), .D(red_leds_fixed[10]), .Z(seg7_2_6__N_171[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam green_leds_fixed_9__bdd_4_lut_4089.init = 16'hf67d;
    FD1S3AX seg7_0_i2 (.D(seg7_0_6__N_157[2]), .CK(w_clk_video), .Q(seg7_0[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_0_i2.GSR = "DISABLED";
    FD1S3AX seg7_0_i1 (.D(seg7_0_6__N_157[1]), .CK(w_clk_video), .Q(seg7_0[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(134[8] 142[4])
    defparam seg7_0_i1.GSR = "DISABLED";
    FD1P3AX red_leds_fixed_i0_i15 (.D(\counter[31] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(red_leds_fixed[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam red_leds_fixed_i0_i15.GSR = "DISABLED";
    FD1P3AX red_leds_fixed_i0_i14 (.D(\counter[30] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(red_leds_fixed[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam red_leds_fixed_i0_i14.GSR = "DISABLED";
    FD1P3AX red_leds_fixed_i0_i13 (.D(\counter[29] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(red_leds_fixed[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam red_leds_fixed_i0_i13.GSR = "DISABLED";
    FD1P3AX red_leds_fixed_i0_i12 (.D(\counter[28] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(red_leds_fixed[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam red_leds_fixed_i0_i12.GSR = "DISABLED";
    FD1P3AX red_leds_fixed_i0_i11 (.D(\counter[27] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(red_leds_fixed[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam red_leds_fixed_i0_i11.GSR = "DISABLED";
    FD1P3AX red_leds_fixed_i0_i10 (.D(\counter[26] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(red_leds_fixed[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam red_leds_fixed_i0_i10.GSR = "DISABLED";
    FD1P3AX red_leds_fixed_i0_i9 (.D(\counter[25] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(red_leds_fixed[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam red_leds_fixed_i0_i9.GSR = "DISABLED";
    LUT4 mux_15_Mux_2_i15_4_lut (.A(red_leds_fixed[10]), .B(green_leds_fixed[9]), 
         .C(red_leds_fixed[11]), .D(red_leds_fixed[9]), .Z(seg7_2_6__N_171[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B+(C+!(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(106[2] 123[9])
    defparam mux_15_Mux_2_i15_4_lut.init = 16'h5edf;
    LUT4 mux_137_i1_3_lut (.A(n1168[0]), .B(seg7_2[1]), .C(vr_seg_line2), 
         .Z(n1184[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(201[3] 222[12])
    defparam mux_137_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_94_3_lut (.A(w_pixel_count[9]), .B(w_pixel_count[10]), 
         .C(w_pixel_count[4]), .Z(n4581)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(87[40:62])
    defparam i1_2_lut_rep_94_3_lut.init = 16'h1010;
    FD1P3AX red_leds_fixed_i0_i1 (.D(\counter[17] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(red_leds_fixed[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam red_leds_fixed_i0_i1.GSR = "DISABLED";
    FD1P3AX segments_fixed_i0_i23 (.D(\counter[39] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[23])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i23.GSR = "DISABLED";
    FD1P3AX segments_fixed_i0_i22 (.D(\counter[38] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[22])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i22.GSR = "DISABLED";
    FD1P3AX segments_fixed_i0_i21 (.D(\counter[37] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[21])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i21.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_93_3_lut (.A(w_pixel_count[9]), .B(w_pixel_count[10]), 
         .C(w_pixel_count[8]), .Z(n4580)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(87[40:62])
    defparam i1_2_lut_rep_93_3_lut.init = 16'h1010;
    LUT4 i4004_2_lut_rep_80 (.A(color_2__N_220), .B(n534), .Z(n4567)) /* synthesis lut_function=(A+(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(162[2] 311[11])
    defparam i4004_2_lut_rep_80.init = 16'heeee;
    FD1P3AX segments_fixed_i0_i20 (.D(\counter[36] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[20])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i20.GSR = "DISABLED";
    FD1P3AX segments_fixed_i0_i19 (.D(\counter[35] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[19])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i19.GSR = "DISABLED";
    LUT4 i4005_2_lut_rep_76_3_lut (.A(color_2__N_220), .B(n534), .C(color_2__N_205), 
         .Z(n4563)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(162[2] 311[11])
    defparam i4005_2_lut_rep_76_3_lut.init = 16'hfefe;
    FD1P3AX segments_fixed_i0_i18 (.D(\counter[34] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[18])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i18.GSR = "DISABLED";
    FD1P3AX segments_fixed_i0_i17 (.D(\counter[33] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[17])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i17.GSR = "DISABLED";
    FD1P3AX segments_fixed_i0_i16 (.D(\counter[32] ), .SP(red_leds_fixed_15__N_208), 
            .CK(w_clk_video), .Q(segments_fixed[16])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(59[8] 71[4])
    defparam segments_fixed_i0_i16.GSR = "DISABLED";
    LUT4 color_2__N_211_0__bdd_4_lut_4037 (.A(color_2__N_220), .B(n4581), 
         .C(seg7_0[0]), .D(current_red_led_N_256[0]), .Z(n4385)) /* synthesis lut_function=(A (B (D))+!A !(C)) */ ;
    defparam color_2__N_211_0__bdd_4_lut_4037.init = 16'h8d05;
    LUT4 i3940_2_lut_rep_68_3_lut_4_lut_4_lut (.A(w_pixel_count[8]), .B(n4592), 
         .C(n4566), .D(n3775), .Z(n4555)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(D)))) */ ;
    defparam i3940_2_lut_rep_68_3_lut_4_lut_4_lut.init = 16'h3320;
    LUT4 i33_4_lut_adj_33 (.A(green_leds_fixed[8]), .B(segments_fixed[5]), 
         .C(segments_fixed[4]), .D(segments_fixed[6]), .Z(seg7_1_6__N_164[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(106[2] 123[9])
    defparam i33_4_lut_adj_33.init = 16'h3ee7;
    L6MUX21 i3836 (.D0(n4174), .D1(n4175), .SD(n4590), .Z(n4178));
    LUT4 i1_2_lut_rep_99_3_lut (.A(w_pixel_count[9]), .B(w_pixel_count[10]), 
         .C(w_pixel_count[8]), .Z(n4586)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(87[40:62])
    defparam i1_2_lut_rep_99_3_lut.init = 16'hfefe;
    L6MUX21 i3837 (.D0(n4176), .D1(n4177), .SD(n4590), .Z(n4179));
    LUT4 i855_2_lut_rep_106 (.A(w_pixel_count[6]), .B(w_pixel_count[7]), 
         .Z(n4593)) /* synthesis lut_function=(A+(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(86[40:62])
    defparam i855_2_lut_rep_106.init = 16'heeee;
    LUT4 red_leds_fixed_15__bdd_4_lut (.A(red_leds_fixed[15]), .B(red_leds_fixed[13]), 
         .C(red_leds_fixed[12]), .D(red_leds_fixed[14]), .Z(seg7_3_6__N_178[6])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam red_leds_fixed_15__bdd_4_lut.init = 16'hbdee;
    LUT4 mux_14_Mux_2_i15_4_lut (.A(segments_fixed[6]), .B(segments_fixed[4]), 
         .C(green_leds_fixed[8]), .D(segments_fixed[5]), .Z(seg7_1_6__N_164[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B+(C+!(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(106[2] 123[9])
    defparam mux_14_Mux_2_i15_4_lut.init = 16'h5edf;
    LUT4 i1_2_lut_rep_72_3_lut_4_lut_3_lut (.A(w_pixel_count[6]), .B(w_pixel_count[7]), 
         .C(n4573), .Z(n4559)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(86[40:62])
    defparam i1_2_lut_rep_72_3_lut_4_lut_3_lut.init = 16'h1010;
    LUT4 i33_4_lut_adj_34 (.A(segments_fixed[3]), .B(red_leds_fixed[1]), 
         .C(segments_fixed[0]), .D(segments_fixed[2]), .Z(seg7_0_6__N_157[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(106[2] 123[9])
    defparam i33_4_lut_adj_34.init = 16'h3ee7;
    LUT4 i2081_2_lut_3_lut (.A(w_pixel_count[6]), .B(w_pixel_count[7]), 
         .C(w_pixel_count[5]), .Z(n2367)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(86[40:62])
    defparam i2081_2_lut_3_lut.init = 16'hfefe;
    LUT4 i465_3_lut_4_lut (.A(n4599), .B(n4600), .C(w_line_count[5]), 
         .D(w_line_count[4]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i465_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_13_Mux_2_i15_4_lut (.A(segments_fixed[2]), .B(segments_fixed[0]), 
         .C(segments_fixed[3]), .D(red_leds_fixed[1]), .Z(seg7_0_6__N_157[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B+(C+!(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(106[2] 123[9])
    defparam mux_13_Mux_2_i15_4_lut.init = 16'h5edf;
    LUT4 i3935_2_lut_4_lut (.A(color_2__N_220), .B(n534), .C(n759), .D(color_2__N_205), 
         .Z(n4023)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(155[2] 311[11])
    defparam i3935_2_lut_4_lut.init = 16'hfffe;
    LUT4 red_leds_fixed_12__bdd_4_lut (.A(red_leds_fixed[12]), .B(red_leds_fixed[15]), 
         .C(red_leds_fixed[14]), .D(red_leds_fixed[13]), .Z(seg7_3_6__N_178[4])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam red_leds_fixed_12__bdd_4_lut.init = 16'hddc5;
    PFUMX mux_178_i2 (.BLUT(n1832[1]), .ALUT(n1848[1]), .C0(n4072), .Z(n1852[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 mux_195_i1_3_lut (.A(seg7_3[3]), .B(seg7_2[3]), .C(n4569), .Z(n2085[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(302[3] 308[12])
    defparam mux_195_i1_3_lut.init = 16'hcaca;
    LUT4 mux_133_i1_3_lut (.A(seg7_1[5]), .B(seg7_3[1]), .C(vr_seg_line3), 
         .Z(n1168[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(213[3] 222[12])
    defparam mux_133_i1_3_lut.init = 16'hcaca;
    LUT4 mux_194_i1_4_lut (.A(seg7_5[3]), .B(seg7_4[3]), .C(h_seg_line4), 
         .D(n4565), .Z(n2081[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(305[3] 308[12])
    defparam mux_194_i1_4_lut.init = 16'hcac0;
    LUT4 i3904_3_lut_4_lut (.A(n4552), .B(n3831), .C(n1431), .D(n1860[1]), 
         .Z(n1864[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(311[3:11])
    defparam i3904_3_lut_4_lut.init = 16'h8f80;
    PFUMX mux_178_i1 (.BLUT(n1832[0]), .ALUT(n1848[0]), .C0(n4072), .Z(n1852[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 mux_195_i2_3_lut (.A(seg7_3[3]), .B(seg7_2[3]), .C(n4569), .Z(n2085[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(302[3] 308[12])
    defparam mux_195_i2_3_lut.init = 16'h3535;
    LUT4 i3_4_lut_adj_35 (.A(n4587), .B(n4582), .C(n10), .D(n3771), 
         .Z(n3831)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(311[3:11])
    defparam i3_4_lut_adj_35.init = 16'h1000;
    LUT4 mux_194_i2_4_lut (.A(seg7_5[3]), .B(seg7_4[3]), .C(h_seg_line4), 
         .D(n4565), .Z(n2081[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(305[3] 308[12])
    defparam mux_194_i2_4_lut.init = 16'h3530;
    LUT4 i3913_3_lut_4_lut (.A(color_2__N_205), .B(n4554), .C(n2113[1]), 
         .D(n745[1]), .Z(color_2__N_214[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(185[2] 311[11])
    defparam i3913_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_174_i1_3_lut (.A(seg7_3[4]), .B(seg7_2[4]), .C(vl_seg_line2), 
         .Z(n1836[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(279[3] 285[12])
    defparam mux_174_i1_3_lut.init = 16'hcaca;
    LUT4 i3898_3_lut_rep_65 (.A(n30), .B(n27), .C(n4031), .Z(n4552)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i3898_3_lut_rep_65.init = 16'hacac;
    LUT4 i3689_4_lut (.A(h_seg_line0), .B(h_seg_line1), .C(n4569), .D(h_seg_line3), 
         .Z(n4031)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(167[3] 182[12])
    defparam i3689_4_lut.init = 16'h5554;
    LUT4 mux_174_i2_3_lut (.A(seg7_3[4]), .B(seg7_2[4]), .C(vl_seg_line2), 
         .Z(n1836[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(279[3] 285[12])
    defparam mux_174_i2_3_lut.init = 16'h3535;
    LUT4 i3907_3_lut_4_lut (.A(n1431), .B(n4555), .C(n4449), .D(n1836[0]), 
         .Z(n1868[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(255[3] 285[12])
    defparam i3907_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_136_i1 (.BLUT(n1160[0]), .ALUT(n1176[0]), .C0(n4072), .Z(n1180[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 i1_4_lut_adj_36 (.A(n4587), .B(n1504), .C(n2427), .D(w_line_count[7]), 
         .Z(n759)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_36.init = 16'h0400;
    LUT4 i1_4_lut_adj_37 (.A(w_line_count[3]), .B(w_line_count[5]), .C(n4_adj_387), 
         .D(w_line_count[6]), .Z(n1504)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i1_4_lut_adj_37.init = 16'hffec;
    LUT4 i2135_4_lut (.A(n4600), .B(w_line_count[6]), .C(w_line_count[5]), 
         .D(w_line_count[4]), .Z(n2427)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i2135_4_lut.init = 16'heccc;
    LUT4 i1_2_lut_rep_110 (.A(w_line_count[3]), .B(w_line_count[2]), .Z(n4597)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_110.init = 16'h8888;
    PFUMX i3817 (.BLUT(n4151), .ALUT(n4152), .C0(led_idx[1]), .Z(n4159));
    PFUMX mux_139_i2 (.BLUT(n1164[1]), .ALUT(n1188[1]), .C0(n4555), .Z(n1192[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=6, LSE_LLINE=37, LSE_RLINE=48 */ ;
    LUT4 i2_4_lut_adj_38 (.A(n4587), .B(n14_adj_388), .C(n2423), .D(w_line_count[7]), 
         .Z(n1206)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_38.init = 16'h0400;
    PFUMX i3818 (.BLUT(n4153), .ALUT(n4154), .C0(led_idx[1]), .Z(n4160));
    LUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(n4574), .B(w_pixel_count[6]), .C(n4586), 
         .D(w_pixel_count[7]), .Z(n4557)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'h0008;
    LUT4 i48_1_lut (.A(seg7_2[2]), .Z(n1498[1])) /* synthesis lut_function=(!(A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(256[12:29])
    defparam i48_1_lut.init = 16'h5555;
    LUT4 i448_3_lut (.A(n10), .B(w_line_count[6]), .C(w_line_count[5]), 
         .Z(n14_adj_388)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i448_3_lut.init = 16'hecec;
    LUT4 i1_2_lut_rep_95_3_lut (.A(w_line_count[3]), .B(w_line_count[2]), 
         .C(w_line_count[4]), .Z(n4582)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_95_3_lut.init = 16'h8080;
    LUT4 mux_175_i2_3_lut (.A(seg7_1[4]), .B(seg7_3[2]), .C(vr_seg_line3), 
         .Z(n1840[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(276[3] 285[12])
    defparam mux_175_i2_3_lut.init = 16'h3535;
    PFUMX i4051 (.BLUT(n4445), .ALUT(n29), .C0(n4031), .Z(n4446));
    PFUMX i3819 (.BLUT(n4155), .ALUT(n4156), .C0(led_idx[1]), .Z(n4161));
    LUT4 i3942_4_lut (.A(n4562), .B(vr_seg_line2), .C(vr_seg_line3), .D(vl_seg_line1), 
         .Z(n4223)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(192[3] 222[12])
    defparam i3942_4_lut.init = 16'haaab;
    PFUMX i4038 (.BLUT(n4413), .ALUT(n4412), .C0(color_2__N_205), .Z(n4414));
    LUT4 i30_1_lut (.A(seg7_2[1]), .Z(n826[1])) /* synthesis lut_function=(!(A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(193[12:29])
    defparam i30_1_lut.init = 16'h5555;
    LUT4 i3998_2_lut_rep_67 (.A(color_2__N_220), .B(n4031), .Z(n4554)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(185[2] 311[11])
    defparam i3998_2_lut_rep_67.init = 16'hbbbb;
    LUT4 i3999_2_lut_rep_64_3_lut (.A(color_2__N_220), .B(n4031), .C(color_2__N_205), 
         .Z(n4551)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(185[2] 311[11])
    defparam i3999_2_lut_rep_64_3_lut.init = 16'hfbfb;
    LUT4 mux_111_i2_3_lut (.A(seg7_3[0]), .B(seg7_2[0]), .C(n4569), .Z(n741[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(176[3] 182[12])
    defparam mux_111_i2_3_lut.init = 16'h3535;
    PFUMX i3820 (.BLUT(n4157), .ALUT(n4158), .C0(led_idx[1]), .Z(n4162));
    LUT4 mux_179_i1_3_lut (.A(n1840[0]), .B(seg7_2[2]), .C(vr_seg_line2), 
         .Z(n1856[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(264[3] 285[12])
    defparam mux_179_i1_3_lut.init = 16'hcaca;
    LUT4 mux_133_i2_3_lut (.A(seg7_1[5]), .B(seg7_3[1]), .C(vr_seg_line3), 
         .Z(n1168[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(213[3] 222[12])
    defparam mux_133_i2_3_lut.init = 16'h3535;
    PFUMX i3832 (.BLUT(n4166), .ALUT(n4167), .C0(led_idx[1]), .Z(n4174));
    LUT4 mux_111_i1_3_lut (.A(seg7_3[0]), .B(seg7_2[0]), .C(n4569), .Z(n741[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(176[3] 182[12])
    defparam mux_111_i1_3_lut.init = 16'hcaca;
    LUT4 red_leds_fixed_12__bdd_4_lut_4081 (.A(red_leds_fixed[12]), .B(red_leds_fixed[15]), 
         .C(red_leds_fixed[13]), .D(red_leds_fixed[14]), .Z(seg7_3_6__N_178[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam red_leds_fixed_12__bdd_4_lut_4081.init = 16'hf67d;
    PFUMX i3833 (.BLUT(n4168), .ALUT(n4169), .C0(led_idx[1]), .Z(n4175));
    LUT4 i5_4_lut (.A(h_seg_line4), .B(n7), .C(h_seg_line1), .D(n8), 
         .Z(n3226)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(167[3] 182[12])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 mux_132_i1_3_lut (.A(seg7_3[5]), .B(seg7_2[5]), .C(vl_seg_line2), 
         .Z(n1164[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(216[3] 222[12])
    defparam mux_132_i1_3_lut.init = 16'hcaca;
    PFUMX i3834 (.BLUT(n4170), .ALUT(n4171), .C0(led_idx[1]), .Z(n4176));
    LUT4 i1794_4_lut (.A(vr_seg_line2), .B(n1534), .C(n3252), .D(n40), 
         .Z(n2113[2])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(225[2] 311[11])
    defparam i1794_4_lut.init = 16'hccc8;
    PFUMX i3835 (.BLUT(n4172), .ALUT(n4173), .C0(led_idx[1]), .Z(n4177));
    hvsync u_hvsync (.w_line_count({Open_0, Open_1, Open_2, Open_3, 
           Open_4, Open_5, Open_6, Open_7, w_line_count[3:2], Open_8, 
           Open_9}), .n4600(n4600), .w_hsync(w_hsync), .w_locked_N_2(w_locked_N_2), 
           .\w_line_count[7] (w_line_count[7]), .\w_line_count[6] (w_line_count[6]), 
           .\w_line_count[5] (w_line_count[5]), .n4588(n4588), .\w_line_count[4] (w_line_count[4]), 
           .w_vsync(w_vsync), .w_clk_video(w_clk_video), .n3880(n3880), 
           .n1514(n1514), .n4599(n4599), .n10(n10), .GND_net(GND_net), 
           .\w_pixel_count[7] (w_pixel_count[7]), .\w_pixel_count[8] (w_pixel_count[8]), 
           .\w_pixel_count[5] (w_pixel_count[5]), .\w_pixel_count[6] (w_pixel_count[6]), 
           .\w_pixel_count[3] (w_pixel_count[3]), .\w_pixel_count[4] (w_pixel_count[4]), 
           .n3821(n3821), .n3771(n3771), .\w_pixel_count[10] (w_pixel_count[10]), 
           .n4589(n4589), .n4(n4_adj_387), .\w_pixel_count[9] (w_pixel_count[9]), 
           .\w_pixel_count[2] (w_pixel_count[2]), .n4591(n4591), .n4596(n4596), 
           .n4594(n4594), .n3902(n3902), .\led_idx[3] (led_idx[3]), .n4584(n4584), 
           .n4597(n4597), .n2423(n2423), .n2455(n2455), .\led_idx[1] (led_idx[1]), 
           .n4585(n4585), .n938(n938), .n2461(n2461), .n4577(n4577), 
           .n4578(n4578), .h_seg_line3(h_seg_line3), .n4587(n4587), .n3795(n3795), 
           .n4_adj_1(n4)) /* synthesis syn_module_defined=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(38[8] 49[3])
    
endmodule
//
// Verilog Description of module hvsync
//

module hvsync (w_line_count, n4600, w_hsync, w_locked_N_2, \w_line_count[7] , 
            \w_line_count[6] , \w_line_count[5] , n4588, \w_line_count[4] , 
            w_vsync, w_clk_video, n3880, n1514, n4599, n10, GND_net, 
            \w_pixel_count[7] , \w_pixel_count[8] , \w_pixel_count[5] , 
            \w_pixel_count[6] , \w_pixel_count[3] , \w_pixel_count[4] , 
            n3821, n3771, \w_pixel_count[10] , n4589, n4, \w_pixel_count[9] , 
            \w_pixel_count[2] , n4591, n4596, n4594, n3902, \led_idx[3] , 
            n4584, n4597, n2423, n2455, \led_idx[1] , n4585, n938, 
            n2461, n4577, n4578, h_seg_line3, n4587, n3795, n4_adj_1) /* synthesis syn_module_defined=1 */ ;
    output [11:0]w_line_count;
    output n4600;
    output w_hsync;
    input w_locked_N_2;
    output \w_line_count[7] ;
    output \w_line_count[6] ;
    output \w_line_count[5] ;
    output n4588;
    output \w_line_count[4] ;
    output w_vsync;
    input w_clk_video;
    input n3880;
    output n1514;
    output n4599;
    output n10;
    input GND_net;
    output \w_pixel_count[7] ;
    output \w_pixel_count[8] ;
    output \w_pixel_count[5] ;
    output \w_pixel_count[6] ;
    output \w_pixel_count[3] ;
    output \w_pixel_count[4] ;
    output n3821;
    output n3771;
    output \w_pixel_count[10] ;
    output n4589;
    output n4;
    output \w_pixel_count[9] ;
    output \w_pixel_count[2] ;
    input n4591;
    output n4596;
    output n4594;
    output n3902;
    output \led_idx[3] ;
    output n4584;
    input n4597;
    output n2423;
    output n2455;
    output \led_idx[1] ;
    output n4585;
    input n938;
    output n2461;
    input n4577;
    input n4578;
    output h_seg_line3;
    output n4587;
    output n3795;
    output n4_adj_1;
    
    wire w_hsync /* synthesis is_clock=1, SET_AS_NETWORK=\r_3__I_0/w_hsync */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(24[6:13])
    wire w_clk_video /* synthesis SET_AS_NETWORK=w_clk_video, is_clock=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/vga_leds.v(17[6:17])
    wire [11:0]w_line_count_c;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(28[12:24])
    
    wire n3839, n3840, n3845, n3844, n3843, n3842, n4575;
    wire [11:0]line_count_11__N_361;
    
    wire n3812, n3822, n3841, n3846, vsync_N_377, n3847, hsync_N_374, 
        n3848, n3878, n4595, n3882, n3849, n4598;
    wire [11:0]w_pixel_count;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    
    wire n3535;
    wire [10:0]n49;
    
    wire n3171, n3174, n3175, n3173, n3172, n3182, n3181, n3180, 
        n3179, n3541, n3178, n3177, n9, n8, n3543, n3545, n3547, 
        n3549, n3551, n3553, n3555, n3557, n3559, n18, n3838, 
        n10_adj_383, n3924, n20, n4_adj_384, n2212, n14, n3807;
    
    LUT4 i1_2_lut_rep_113 (.A(w_line_count[3]), .B(w_line_count[2]), .Z(n4600)) /* synthesis lut_function=(A+(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i1_2_lut_rep_113.init = 16'heeee;
    FD1S3DX line_count__i10 (.D(n3839), .CK(w_hsync), .CD(w_locked_N_2), 
            .Q(w_line_count_c[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i10.GSR = "DISABLED";
    FD1S3BX line_count__i9 (.D(n3840), .CK(w_hsync), .PD(w_locked_N_2), 
            .Q(w_line_count_c[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i9.GSR = "DISABLED";
    FD1S3DX line_count__i8 (.D(n3845), .CK(w_hsync), .CD(w_locked_N_2), 
            .Q(w_line_count_c[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i8.GSR = "DISABLED";
    FD1S3BX line_count__i7 (.D(n3844), .CK(w_hsync), .PD(w_locked_N_2), 
            .Q(\w_line_count[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i7.GSR = "DISABLED";
    FD1S3BX line_count__i6 (.D(n3843), .CK(w_hsync), .PD(w_locked_N_2), 
            .Q(\w_line_count[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i6.GSR = "DISABLED";
    FD1S3DX line_count__i5 (.D(n3842), .CK(w_hsync), .CD(w_locked_N_2), 
            .Q(\w_line_count[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i5.GSR = "DISABLED";
    LUT4 i3969_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[7]), .Z(n3844)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i3969_2_lut_2_lut.init = 16'h4444;
    LUT4 i2_4_lut (.A(n4588), .B(n3812), .C(\w_line_count[5] ), .D(\w_line_count[4] ), 
         .Z(n3822)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i2_4_lut.init = 16'ha080;
    FD1S3BX line_count__i4 (.D(n3841), .CK(w_hsync), .PD(w_locked_N_2), 
            .Q(\w_line_count[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i4.GSR = "DISABLED";
    FD1S3DX line_count__i3 (.D(n3846), .CK(w_hsync), .CD(w_locked_N_2), 
            .Q(w_line_count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i3.GSR = "DISABLED";
    FD1S3DX vsync_27 (.D(vsync_N_377), .CK(w_hsync), .CD(w_locked_N_2), 
            .Q(w_vsync)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam vsync_27.GSR = "DISABLED";
    FD1S3DX line_count__i2 (.D(n3847), .CK(w_hsync), .CD(w_locked_N_2), 
            .Q(w_line_count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i2.GSR = "DISABLED";
    FD1S3DX hsync_25 (.D(hsync_N_374), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(w_hsync)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(38[2] 45[5])
    defparam hsync_25.GSR = "DISABLED";
    FD1S3DX line_count__i1 (.D(n3848), .CK(w_hsync), .CD(w_locked_N_2), 
            .Q(w_line_count_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i1.GSR = "DISABLED";
    LUT4 i3965_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[9]), .Z(n3840)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i3965_2_lut_2_lut.init = 16'h4444;
    LUT4 i3963_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[10]), .Z(n3839)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i3963_2_lut_2_lut.init = 16'h4444;
    PFUMX i1606 (.BLUT(n3878), .ALUT(n3880), .C0(n4595), .Z(n3882));
    FD1S3DX line_count__i0 (.D(n3849), .CK(w_hsync), .CD(w_locked_N_2), 
            .Q(w_line_count_c[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i0.GSR = "DISABLED";
    LUT4 i3967_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[8]), .Z(n3845)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i3967_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_4_lut (.A(w_line_count_c[9]), .B(w_line_count_c[8]), .C(n4598), 
         .D(\w_line_count[7] ), .Z(n1514)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i441_3_lut_4_lut (.A(n4599), .B(w_line_count[2]), .C(\w_line_count[4] ), 
         .D(w_line_count[3]), .Z(n10)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(28[12:24])
    defparam i441_3_lut_4_lut.init = 16'hf080;
    LUT4 i1_4_lut_rep_88 (.A(n4598), .B(w_line_count_c[9]), .C(w_line_count_c[8]), 
         .D(n3822), .Z(n4575)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i1_4_lut_rep_88.init = 16'heeea;
    FD1S3DX pixel_count_305_306__i1 (.D(n3535), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(w_pixel_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i1.GSR = "DISABLED";
    LUT4 i1937_2_lut_rep_101 (.A(\w_line_count[6] ), .B(\w_line_count[7] ), 
         .Z(n4588)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1937_2_lut_rep_101.init = 16'h8888;
    CCU2D pixel_count_305_306_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(w_pixel_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3171), .S1(n49[0]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306_add_4_1.INIT0 = 16'hF000;
    defparam pixel_count_305_306_add_4_1.INIT1 = 16'h0555;
    defparam pixel_count_305_306_add_4_1.INJECT1_0 = "NO";
    defparam pixel_count_305_306_add_4_1.INJECT1_1 = "NO";
    CCU2D pixel_count_305_306_add_4_9 (.A0(\w_pixel_count[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\w_pixel_count[8] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3174), .COUT(n3175), .S0(n49[7]), 
          .S1(n49[8]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306_add_4_9.INIT0 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_9.INIT1 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_9.INJECT1_0 = "NO";
    defparam pixel_count_305_306_add_4_9.INJECT1_1 = "NO";
    CCU2D pixel_count_305_306_add_4_7 (.A0(\w_pixel_count[5] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\w_pixel_count[6] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3173), .COUT(n3174), .S0(n49[5]), 
          .S1(n49[6]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306_add_4_7.INIT0 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_7.INIT1 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_7.INJECT1_0 = "NO";
    defparam pixel_count_305_306_add_4_7.INJECT1_1 = "NO";
    CCU2D pixel_count_305_306_add_4_5 (.A0(\w_pixel_count[3] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\w_pixel_count[4] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3172), .COUT(n3173), .S0(n49[3]), 
          .S1(n49[4]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306_add_4_5.INIT0 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_5.INIT1 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_5.INJECT1_0 = "NO";
    defparam pixel_count_305_306_add_4_5.INJECT1_1 = "NO";
    CCU2D add_15_13 (.A0(w_line_count_c[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3182), .S0(line_count_11__N_361[11]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(58[18:35])
    defparam add_15_13.INIT0 = 16'h5aaa;
    defparam add_15_13.INIT1 = 16'h0000;
    defparam add_15_13.INJECT1_0 = "NO";
    defparam add_15_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(\w_line_count[6] ), .B(\w_line_count[7] ), .C(\w_line_count[5] ), 
         .D(n10), .Z(n3821)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8880;
    CCU2D add_15_11 (.A0(w_line_count_c[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(w_line_count_c[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3181), .COUT(n3182), .S0(line_count_11__N_361[9]), 
          .S1(line_count_11__N_361[10]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(58[18:35])
    defparam add_15_11.INIT0 = 16'h5aaa;
    defparam add_15_11.INIT1 = 16'h5aaa;
    defparam add_15_11.INJECT1_0 = "NO";
    defparam add_15_11.INJECT1_1 = "NO";
    CCU2D add_15_9 (.A0(\w_line_count[7] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(w_line_count_c[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3180), .COUT(n3181), .S0(line_count_11__N_361[7]), 
          .S1(line_count_11__N_361[8]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(58[18:35])
    defparam add_15_9.INIT0 = 16'h5aaa;
    defparam add_15_9.INIT1 = 16'h5aaa;
    defparam add_15_9.INJECT1_0 = "NO";
    defparam add_15_9.INJECT1_1 = "NO";
    CCU2D add_15_7 (.A0(\w_line_count[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\w_line_count[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3179), .COUT(n3180), .S0(line_count_11__N_361[5]), 
          .S1(line_count_11__N_361[6]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(58[18:35])
    defparam add_15_7.INIT0 = 16'h5aaa;
    defparam add_15_7.INIT1 = 16'h5aaa;
    defparam add_15_7.INJECT1_0 = "NO";
    defparam add_15_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(\w_line_count[6] ), .B(\w_line_count[7] ), .C(\w_line_count[5] ), 
         .Z(n3771)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0808;
    FD1S3DX pixel_count_305_306__i11 (.D(n3541), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(\w_pixel_count[10] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i11.GSR = "DISABLED";
    LUT4 i2_3_lut_rep_102 (.A(w_line_count[2]), .B(w_line_count_c[0]), .C(w_line_count_c[1]), 
         .Z(n4589)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i2_3_lut_rep_102.init = 16'h8080;
    LUT4 i1_2_lut_4_lut_adj_6 (.A(w_line_count[2]), .B(w_line_count_c[0]), 
         .C(w_line_count_c[1]), .D(\w_line_count[4] ), .Z(n4)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i1_2_lut_4_lut_adj_6.init = 16'h8000;
    CCU2D add_15_5 (.A0(w_line_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\w_line_count[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3178), .COUT(n3179), .S0(line_count_11__N_361[3]), 
          .S1(line_count_11__N_361[4]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(58[18:35])
    defparam add_15_5.INIT0 = 16'h5aaa;
    defparam add_15_5.INIT1 = 16'h5aaa;
    defparam add_15_5.INJECT1_0 = "NO";
    defparam add_15_5.INJECT1_1 = "NO";
    CCU2D add_15_3 (.A0(w_line_count_c[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(w_line_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3177), .COUT(n3178), .S0(line_count_11__N_361[1]), 
          .S1(line_count_11__N_361[2]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(58[18:35])
    defparam add_15_3.INIT0 = 16'h5aaa;
    defparam add_15_3.INIT1 = 16'h5aaa;
    defparam add_15_3.INJECT1_0 = "NO";
    defparam add_15_3.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(n9), .B(n4598), .C(n8), .D(w_line_count_c[9]), 
         .Z(vsync_N_377)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i5_4_lut.init = 16'h2000;
    CCU2D add_15_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(w_line_count_c[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3177), .S1(line_count_11__N_361[0]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(58[18:35])
    defparam add_15_1.INIT0 = 16'hF000;
    defparam add_15_1.INIT1 = 16'h5555;
    defparam add_15_1.INJECT1_0 = "NO";
    defparam add_15_1.INJECT1_1 = "NO";
    FD1S3DX pixel_count_305_306__i10 (.D(n3543), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(\w_pixel_count[9] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i10.GSR = "DISABLED";
    FD1S3DX pixel_count_305_306__i9 (.D(n3545), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(\w_pixel_count[8] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i9.GSR = "DISABLED";
    FD1S3DX pixel_count_305_306__i8 (.D(n3547), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(\w_pixel_count[7] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i8.GSR = "DISABLED";
    FD1S3DX pixel_count_305_306__i7 (.D(n3549), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(\w_pixel_count[6] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i7.GSR = "DISABLED";
    FD1S3DX pixel_count_305_306__i6 (.D(n3551), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(\w_pixel_count[5] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i6.GSR = "DISABLED";
    FD1S3DX pixel_count_305_306__i5 (.D(n3553), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(\w_pixel_count[4] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i5.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(n3771), .B(n4599), .C(w_line_count[2]), .D(w_line_count[3]), 
         .Z(n9)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C (D)+!C !(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h02a0;
    FD1S3DX pixel_count_305_306__i4 (.D(n3555), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(\w_pixel_count[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i4.GSR = "DISABLED";
    FD1S3DX pixel_count_305_306__i3 (.D(n3557), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(\w_pixel_count[2] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i3.GSR = "DISABLED";
    LUT4 i2_2_lut (.A(\w_line_count[4] ), .B(w_line_count_c[8]), .Z(n8)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    FD1S3DX pixel_count_305_306__i2 (.D(n3559), .CK(w_clk_video), .CD(w_locked_N_2), 
            .Q(w_pixel_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306__i2.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(\w_pixel_count[10] ), .B(n3882), .C(n18), .D(\w_pixel_count[9] ), 
         .Z(hsync_N_374)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    defparam i1_4_lut.init = 16'h2220;
    FD1S3DX line_count__i11 (.D(n3838), .CK(w_hsync), .CD(w_locked_N_2), 
            .Q(w_line_count_c[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=8, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=49 */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam line_count__i11.GSR = "DISABLED";
    LUT4 i431_4_lut (.A(n10_adj_383), .B(\w_pixel_count[8] ), .C(\w_pixel_count[7] ), 
         .D(n4591), .Z(n18)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i431_4_lut.init = 16'hc8c0;
    LUT4 i435_4_lut (.A(n4596), .B(\w_pixel_count[4] ), .C(\w_pixel_count[2] ), 
         .D(\w_pixel_count[3] ), .Z(n10_adj_383)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i435_4_lut.init = 16'heccc;
    CCU2D pixel_count_305_306_add_4_11 (.A0(\w_pixel_count[9] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\w_pixel_count[10] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3175), .S0(n49[9]), .S1(n49[10]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306_add_4_11.INIT0 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_11.INIT1 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_11.INJECT1_0 = "NO";
    defparam pixel_count_305_306_add_4_11.INJECT1_1 = "NO";
    LUT4 i3983_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[0]), .Z(n3849)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(28[12:24])
    defparam i3983_2_lut_2_lut.init = 16'h4444;
    LUT4 i3981_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[1]), .Z(n3848)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(28[12:24])
    defparam i3981_2_lut_2_lut.init = 16'h4444;
    LUT4 i3979_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[2]), .Z(n3847)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(28[12:24])
    defparam i3979_2_lut_2_lut.init = 16'h4444;
    LUT4 i3977_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[3]), .Z(n3846)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i3977_2_lut_2_lut.init = 16'h4444;
    LUT4 i3975_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[4]), .Z(n3841)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i3975_2_lut_2_lut.init = 16'h4444;
    LUT4 i3933_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[11]), .Z(n3838)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i3933_2_lut_2_lut.init = 16'h4444;
    CCU2D pixel_count_305_306_add_4_3 (.A0(w_pixel_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\w_pixel_count[2] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3171), .COUT(n3172), .S0(n49[1]), 
          .S1(n49[2]));   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam pixel_count_305_306_add_4_3.INIT0 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_3.INIT1 = 16'hfaaa;
    defparam pixel_count_305_306_add_4_3.INJECT1_0 = "NO";
    defparam pixel_count_305_306_add_4_3.INJECT1_1 = "NO";
    LUT4 i3973_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[5]), .Z(n3842)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i3973_2_lut_2_lut.init = 16'h4444;
    LUT4 i1603_4_lut (.A(\w_pixel_count[9] ), .B(\w_pixel_count[5] ), .C(\w_pixel_count[8] ), 
         .D(n3924), .Z(n3878)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    defparam i1603_4_lut.init = 16'hfaea;
    LUT4 i1600_4_lut (.A(\w_pixel_count[2] ), .B(\w_pixel_count[4] ), .C(\w_pixel_count[3] ), 
         .D(n4596), .Z(n3924)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    defparam i1600_4_lut.init = 16'hc8c0;
    LUT4 i3971_2_lut_2_lut (.A(n4575), .B(line_count_11__N_361[6]), .Z(n3843)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i3971_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_107 (.A(\w_pixel_count[5] ), .B(\w_pixel_count[4] ), 
         .Z(n4594)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_107.init = 16'h8888;
    LUT4 i3563_2_lut_3_lut_4_lut (.A(\w_pixel_count[5] ), .B(\w_pixel_count[4] ), 
         .C(\w_pixel_count[7] ), .D(\w_pixel_count[3] ), .Z(n3902)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i3563_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i5_1_lut (.A(\w_pixel_count[8] ), .Z(\led_idx[3] )) /* synthesis lut_function=(!(A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    defparam i5_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_97_3_lut (.A(\w_pixel_count[5] ), .B(\w_pixel_count[4] ), 
         .C(\w_pixel_count[3] ), .Z(n4584)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_97_3_lut.init = 16'h8080;
    LUT4 i2131_3_lut_4_lut (.A(\w_line_count[4] ), .B(n4597), .C(\w_line_count[6] ), 
         .D(\w_line_count[5] ), .Z(n2423)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i2131_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i4010_2_lut_rep_108 (.A(\w_pixel_count[7] ), .B(\w_pixel_count[6] ), 
         .Z(n4595)) /* synthesis lut_function=((B)+!A) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    defparam i4010_2_lut_rep_108.init = 16'hdddd;
    LUT4 i2159_3_lut_4_lut (.A(\w_line_count[4] ), .B(n4597), .C(\w_line_count[5] ), 
         .D(n4588), .Z(n2455)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i2159_3_lut_4_lut.init = 16'hf800;
    LUT4 i1_2_lut_rep_109 (.A(w_pixel_count[1]), .B(w_pixel_count[0]), .Z(n4596)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_109.init = 16'heeee;
    LUT4 i1582_1_lut (.A(\w_pixel_count[6] ), .Z(\led_idx[1] )) /* synthesis lut_function=(!(A)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1582_1_lut.init = 16'h5555;
    LUT4 i393_2_lut_rep_98_3_lut (.A(w_pixel_count[1]), .B(w_pixel_count[0]), 
         .C(\w_pixel_count[2] ), .Z(n4585)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i393_2_lut_rep_98_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut (.A(n49[0]), .B(n20), .Z(n3535)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_7 (.A(w_pixel_count[1]), .B(w_pixel_count[0]), 
         .C(\w_pixel_count[3] ), .Z(n4_adj_384)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_7.init = 16'hfefe;
    LUT4 i2165_3_lut_4_lut (.A(\w_line_count[4] ), .B(n4597), .C(n938), 
         .D(w_line_count_c[1]), .Z(n2461)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(54[2] 61[5])
    defparam i2165_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_4_lut_adj_8 (.A(n2212), .B(\w_pixel_count[6] ), .C(n14), .D(n3807), 
         .Z(n20)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    defparam i1_4_lut_adj_8.init = 16'h535f;
    LUT4 i3_3_lut_4_lut_4_lut (.A(n4595), .B(n4577), .C(\w_pixel_count[5] ), 
         .D(n4578), .Z(h_seg_line3)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    defparam i3_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i2_4_lut_adj_9 (.A(n4594), .B(\w_pixel_count[2] ), .C(n2212), 
         .D(n4_adj_384), .Z(n3807)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_9.init = 16'ha080;
    LUT4 i1932_2_lut (.A(\w_pixel_count[9] ), .B(\w_pixel_count[10] ), .Z(n2212)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1932_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_10 (.A(\w_pixel_count[8] ), .B(\w_pixel_count[7] ), 
         .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/display.v(27[12:25])
    defparam i1_2_lut_adj_10.init = 16'heeee;
    LUT4 i1_2_lut_adj_11 (.A(n49[10]), .B(n20), .Z(n3541)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_11.init = 16'h8888;
    LUT4 i567_2_lut_rep_111 (.A(w_line_count_c[10]), .B(w_line_count_c[11]), 
         .Z(n4598)) /* synthesis lut_function=(A+(B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(55[68:129])
    defparam i567_2_lut_rep_111.init = 16'heeee;
    LUT4 i1_2_lut_adj_12 (.A(n49[9]), .B(n20), .Z(n3543)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_12.init = 16'h8888;
    LUT4 i1_2_lut_adj_13 (.A(n49[8]), .B(n20), .Z(n3545)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_13.init = 16'h8888;
    LUT4 i1_2_lut_adj_14 (.A(n49[7]), .B(n20), .Z(n3547)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_14.init = 16'h8888;
    LUT4 i1_2_lut_adj_15 (.A(n49[6]), .B(n20), .Z(n3549)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_15.init = 16'h8888;
    LUT4 i1_2_lut_adj_16 (.A(n49[5]), .B(n20), .Z(n3551)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_16.init = 16'h8888;
    LUT4 i1_2_lut_adj_17 (.A(n49[4]), .B(n20), .Z(n3553)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_17.init = 16'h8888;
    LUT4 i1_2_lut_adj_18 (.A(n49[3]), .B(n20), .Z(n3555)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_18.init = 16'h8888;
    LUT4 i1_2_lut_adj_19 (.A(n49[2]), .B(n20), .Z(n3557)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_19.init = 16'h8888;
    LUT4 i1_2_lut_adj_20 (.A(n49[1]), .B(n20), .Z(n3559)) /* synthesis lut_function=(A (B)) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(42[19:37])
    defparam i1_2_lut_adj_20.init = 16'h8888;
    LUT4 i2_3_lut_rep_100_4_lut (.A(w_line_count_c[10]), .B(w_line_count_c[11]), 
         .C(w_line_count_c[8]), .D(w_line_count_c[9]), .Z(n4587)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/projects/prj_fpga_lattice/prj_ve-lcmxo27000hc/lcmx_prj/projects/vga_leds_seg7/hvsync.v(55[68:129])
    defparam i2_3_lut_rep_100_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_112 (.A(w_line_count_c[1]), .B(w_line_count_c[0]), 
         .Z(n4599)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_112.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(w_line_count_c[1]), .B(w_line_count_c[0]), 
         .C(\w_line_count[4] ), .D(n4600), .Z(n3795)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0f0e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_21 (.A(w_line_count_c[1]), .B(w_line_count_c[0]), 
         .C(w_line_count[3]), .D(w_line_count[2]), .Z(n4_adj_1)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_21.init = 16'he000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(w_line_count_c[1]), .B(w_line_count_c[0]), 
         .C(w_line_count[2]), .D(w_line_count[3]), .Z(n3812)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'he000;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

