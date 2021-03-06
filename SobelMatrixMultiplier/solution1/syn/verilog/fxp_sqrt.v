// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fxp_sqrt (
        ap_clk,
        ap_rst,
        in_val_V_read,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [31:0] in_val_V_read;
output  [19:0] ap_return;
input   ap_ce;

reg[19:0] ap_return;

wire   [21:0] p_0353_1_fu_324_p2;
reg   [21:0] p_0353_1_reg_2026;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_6_reg_2031;
reg   [0:0] ap_reg_pp0_iter1_tmp_6_reg_2031;
reg   [0:0] tmp_10_reg_2037;
wire   [0:0] tmp_7_fu_359_p3;
reg   [0:0] tmp_7_reg_2042;
wire   [22:0] p_0353_1_2_fu_404_p3;
reg   [22:0] p_0353_1_2_reg_2047;
reg   [0:0] tmp_12_reg_2052;
wire   [22:0] p_0353_1_4_fu_574_p3;
reg   [22:0] p_0353_1_4_reg_2058;
wire   [3:0] tmp_11_fu_582_p3;
reg   [3:0] tmp_11_reg_2063;
reg   [0:0] tmp_20_reg_2069;
wire   [22:0] p_0353_1_6_fu_737_p3;
reg   [22:0] p_0353_1_6_reg_2075;
wire   [5:0] tmp_15_fu_745_p3;
reg   [5:0] tmp_15_reg_2080;
reg   [0:0] tmp_28_reg_2086;
wire   [22:0] p_0353_1_8_fu_900_p3;
reg   [22:0] p_0353_1_8_reg_2092;
wire   [7:0] tmp_19_fu_908_p3;
reg   [7:0] tmp_19_reg_2097;
reg   [0:0] tmp_36_reg_2103;
wire   [22:0] p_0353_1_s_fu_1063_p3;
reg   [22:0] p_0353_1_s_reg_2109;
wire   [9:0] tmp_23_fu_1071_p3;
reg   [9:0] tmp_23_reg_2114;
reg   [0:0] tmp_44_reg_2120;
wire   [22:0] p_0353_1_11_fu_1226_p3;
reg   [22:0] p_0353_1_11_reg_2126;
wire   [11:0] tmp_27_fu_1234_p3;
reg   [11:0] tmp_27_reg_2131;
reg   [0:0] tmp_51_reg_2137;
wire   [22:0] p_0353_1_13_fu_1389_p3;
reg   [22:0] p_0353_1_13_reg_2143;
wire   [13:0] tmp_31_fu_1397_p3;
reg   [13:0] tmp_31_reg_2148;
reg   [0:0] tmp_55_reg_2154;
wire   [22:0] p_0353_1_15_fu_1552_p3;
reg   [22:0] p_0353_1_15_reg_2160;
wire   [15:0] tmp_35_fu_1560_p3;
reg   [15:0] tmp_35_reg_2165;
reg   [0:0] tmp_59_reg_2171;
wire   [22:0] p_0353_1_17_fu_1715_p3;
reg   [22:0] p_0353_1_17_reg_2177;
wire   [17:0] tmp_39_fu_1723_p3;
reg   [17:0] tmp_39_reg_2182;
reg   [0:0] tmp_63_reg_2188;
wire   [22:0] p_0353_1_19_fu_1878_p3;
reg   [22:0] p_0353_1_19_reg_2194;
wire   [19:0] tmp_43_fu_1886_p3;
reg   [19:0] tmp_43_reg_2199;
reg   [0:0] tmp_67_reg_2206;
wire    ap_block_pp0_stage0;
wire   [20:0] tmp_fu_286_p4;
wire   [21:0] tmp_cast_fu_296_p1;
wire   [21:0] tmp_s_fu_300_p2;
wire   [20:0] tmp_5_fu_306_p4;
wire   [21:0] tmp_3_fu_316_p3;
wire   [22:0] tmp_3_1_fu_346_p3;
wire   [22:0] p_0353_1_1_fu_353_p2;
wire   [22:0] tmp_2_fu_373_p3;
wire   [22:0] tmp_8_fu_367_p2;
wire   [22:0] tmp_4_fu_380_p2;
wire   [22:0] tmp1_fu_392_p2;
wire   [22:0] s_V_2_2_fu_398_p2;
wire   [22:0] s_V_1_2_fu_386_p2;
wire   [2:0] p_s_fu_420_p3;
wire   [2:0] q_V_1_1_fu_427_p3;
wire   [2:0] p_0305_1_in_in_2_fu_434_p3;
wire   [2:0] q_V_1_2_fu_441_p2;
wire   [22:0] r_V_2_3_fu_452_p3;
wire   [22:0] tmp_14_fu_447_p2;
wire   [22:0] tmp_10_3_fu_460_p2;
wire   [22:0] r_V_4_3_fu_472_p3;
wire   [22:0] tmp_13_3_fu_480_p2;
wire   [22:0] s_V_2_3_fu_486_p2;
wire   [22:0] s_V_1_3_fu_466_p2;
wire   [2:0] tmp_9_fu_499_p3;
wire   [3:0] q_star_V_3_fu_506_p3;
wire   [22:0] p_0353_1_3_fu_492_p3;
wire   [3:0] q_V_1_3_fu_514_p2;
wire   [22:0] r_V_2_4_fu_534_p3;
wire   [22:0] tmp_18_fu_528_p2;
wire   [22:0] tmp_10_4_fu_542_p2;
wire   [22:0] r_V_4_4_fu_554_p3;
wire   [22:0] tmp_13_4_fu_562_p2;
wire   [0:0] tmp_16_fu_520_p3;
wire   [22:0] s_V_2_4_fu_568_p2;
wire   [22:0] s_V_1_4_fu_548_p2;
wire   [4:0] q_star_V_4_fu_598_p3;
wire   [4:0] q_V_1_4_fu_605_p2;
wire   [22:0] r_V_2_5_fu_616_p3;
wire   [22:0] tmp_22_fu_611_p2;
wire   [22:0] tmp_10_5_fu_624_p2;
wire   [22:0] r_V_4_5_fu_636_p3;
wire   [22:0] tmp_13_5_fu_643_p2;
wire   [22:0] s_V_2_5_fu_649_p2;
wire   [22:0] s_V_1_5_fu_630_p2;
wire   [4:0] tmp_13_fu_662_p3;
wire   [5:0] q_star_V_5_fu_669_p3;
wire   [22:0] p_0353_1_5_fu_655_p3;
wire   [5:0] q_V_1_5_fu_677_p2;
wire   [22:0] r_V_2_6_fu_697_p3;
wire   [22:0] tmp_26_fu_691_p2;
wire   [22:0] tmp_10_6_fu_705_p2;
wire   [22:0] r_V_4_6_fu_717_p3;
wire   [22:0] tmp_13_6_fu_725_p2;
wire   [0:0] tmp_24_fu_683_p3;
wire   [22:0] s_V_2_6_fu_731_p2;
wire   [22:0] s_V_1_6_fu_711_p2;
wire   [6:0] q_star_V_6_fu_761_p3;
wire   [6:0] q_V_1_6_fu_768_p2;
wire   [22:0] r_V_2_7_fu_779_p3;
wire   [22:0] tmp_30_fu_774_p2;
wire   [22:0] tmp_10_7_fu_787_p2;
wire   [22:0] r_V_4_7_fu_799_p3;
wire   [22:0] tmp_13_7_fu_806_p2;
wire   [22:0] s_V_2_7_fu_812_p2;
wire   [22:0] s_V_1_7_fu_793_p2;
wire   [6:0] tmp_17_fu_825_p3;
wire   [7:0] q_star_V_7_fu_832_p3;
wire   [22:0] p_0353_1_7_fu_818_p3;
wire   [7:0] q_V_1_7_fu_840_p2;
wire   [22:0] r_V_2_8_fu_860_p3;
wire   [22:0] tmp_34_fu_854_p2;
wire   [22:0] tmp_10_8_fu_868_p2;
wire   [22:0] r_V_4_8_fu_880_p3;
wire   [22:0] tmp_13_8_fu_888_p2;
wire   [0:0] tmp_32_fu_846_p3;
wire   [22:0] s_V_2_8_fu_894_p2;
wire   [22:0] s_V_1_8_fu_874_p2;
wire   [8:0] q_star_V_8_fu_924_p3;
wire   [8:0] q_V_1_8_fu_931_p2;
wire   [22:0] r_V_2_9_fu_942_p3;
wire   [22:0] tmp_38_fu_937_p2;
wire   [22:0] tmp_10_9_fu_950_p2;
wire   [22:0] r_V_4_9_fu_962_p3;
wire   [22:0] tmp_13_9_fu_969_p2;
wire   [22:0] s_V_2_9_fu_975_p2;
wire   [22:0] s_V_1_9_fu_956_p2;
wire   [8:0] tmp_21_fu_988_p3;
wire   [9:0] q_star_V_9_fu_995_p3;
wire   [22:0] p_0353_1_9_fu_981_p3;
wire   [9:0] q_V_1_9_fu_1003_p2;
wire   [22:0] r_V_2_s_fu_1023_p3;
wire   [22:0] tmp_42_fu_1017_p2;
wire   [22:0] tmp_10_s_fu_1031_p2;
wire   [22:0] r_V_4_s_fu_1043_p3;
wire   [22:0] tmp_13_s_fu_1051_p2;
wire   [0:0] tmp_40_fu_1009_p3;
wire   [22:0] s_V_2_s_fu_1057_p2;
wire   [22:0] s_V_1_s_fu_1037_p2;
wire   [10:0] q_star_V_s_fu_1087_p3;
wire   [10:0] q_V_1_s_fu_1094_p2;
wire   [22:0] r_V_2_1_fu_1105_p3;
wire   [22:0] tmp_45_fu_1100_p2;
wire   [22:0] tmp_10_1_fu_1113_p2;
wire   [22:0] r_V_4_1_fu_1125_p3;
wire   [22:0] tmp_13_1_fu_1132_p2;
wire   [22:0] s_V_2_1_fu_1138_p2;
wire   [22:0] s_V_1_1_fu_1119_p2;
wire   [10:0] tmp_25_fu_1151_p3;
wire   [11:0] q_star_V_1_fu_1158_p3;
wire   [22:0] p_0353_1_10_fu_1144_p3;
wire   [11:0] q_V_1_10_fu_1166_p2;
wire   [22:0] r_V_2_2_fu_1186_p3;
wire   [22:0] tmp_47_fu_1180_p2;
wire   [22:0] tmp_10_2_fu_1194_p2;
wire   [22:0] r_V_4_2_fu_1206_p3;
wire   [22:0] tmp_13_2_fu_1214_p2;
wire   [0:0] tmp_46_fu_1172_p3;
wire   [22:0] s_V_2_10_fu_1220_p2;
wire   [22:0] s_V_1_10_fu_1200_p2;
wire   [12:0] q_star_V_2_fu_1250_p3;
wire   [12:0] q_V_1_11_fu_1257_p2;
wire   [22:0] r_V_1_s_fu_1268_p3;
wire   [22:0] tmp_52_fu_1263_p2;
wire   [22:0] tmp_10_10_fu_1276_p2;
wire   [22:0] r_V_3_s_fu_1288_p3;
wire   [22:0] tmp_13_10_fu_1295_p2;
wire   [22:0] s_V_2_11_fu_1301_p2;
wire   [22:0] s_V_1_11_fu_1282_p2;
wire   [12:0] tmp_29_fu_1314_p3;
wire   [13:0] q_star_V_10_fu_1321_p3;
wire   [22:0] p_0353_1_12_fu_1307_p3;
wire   [13:0] q_V_1_12_fu_1329_p2;
wire   [22:0] r_V_1_1_fu_1349_p3;
wire   [22:0] tmp_54_fu_1343_p2;
wire   [22:0] tmp_10_11_fu_1357_p2;
wire   [22:0] r_V_3_1_fu_1369_p3;
wire   [22:0] tmp_13_11_fu_1377_p2;
wire   [0:0] tmp_53_fu_1335_p3;
wire   [22:0] s_V_2_12_fu_1383_p2;
wire   [22:0] s_V_1_12_fu_1363_p2;
wire   [14:0] q_star_V_11_fu_1413_p3;
wire   [14:0] q_V_1_13_fu_1420_p2;
wire   [22:0] r_V_1_2_fu_1431_p3;
wire   [22:0] tmp_56_fu_1426_p2;
wire   [22:0] tmp_10_12_fu_1439_p2;
wire   [22:0] r_V_3_2_fu_1451_p3;
wire   [22:0] tmp_13_12_fu_1458_p2;
wire   [22:0] s_V_2_13_fu_1464_p2;
wire   [22:0] s_V_1_13_fu_1445_p2;
wire   [14:0] tmp_33_fu_1477_p3;
wire   [15:0] q_star_V_12_fu_1484_p3;
wire   [22:0] p_0353_1_14_fu_1470_p3;
wire   [15:0] q_V_1_14_fu_1492_p2;
wire   [22:0] r_V_1_3_fu_1512_p3;
wire   [22:0] tmp_58_fu_1506_p2;
wire   [22:0] tmp_10_13_fu_1520_p2;
wire   [22:0] r_V_3_3_fu_1532_p3;
wire   [22:0] tmp_13_13_fu_1540_p2;
wire   [0:0] tmp_57_fu_1498_p3;
wire   [22:0] s_V_2_14_fu_1546_p2;
wire   [22:0] s_V_1_14_fu_1526_p2;
wire   [16:0] q_star_V_13_fu_1576_p3;
wire   [16:0] q_V_1_15_fu_1583_p2;
wire   [22:0] r_V_1_4_fu_1594_p3;
wire   [22:0] tmp_60_fu_1589_p2;
wire   [22:0] tmp_10_14_fu_1602_p2;
wire   [22:0] r_V_3_4_fu_1614_p3;
wire   [22:0] tmp_13_14_fu_1621_p2;
wire   [22:0] s_V_2_15_fu_1627_p2;
wire   [22:0] s_V_1_15_fu_1608_p2;
wire   [16:0] tmp_37_fu_1640_p3;
wire   [17:0] q_star_V_14_fu_1647_p3;
wire   [22:0] p_0353_1_16_fu_1633_p3;
wire   [17:0] q_V_1_16_fu_1655_p2;
wire   [22:0] r_V_1_5_fu_1675_p3;
wire   [22:0] tmp_62_fu_1669_p2;
wire   [22:0] tmp_10_15_fu_1683_p2;
wire   [22:0] r_V_3_5_fu_1695_p3;
wire   [22:0] tmp_13_15_fu_1703_p2;
wire   [0:0] tmp_61_fu_1661_p3;
wire   [22:0] s_V_2_16_fu_1709_p2;
wire   [22:0] s_V_1_16_fu_1689_p2;
wire   [18:0] q_star_V_15_fu_1739_p3;
wire   [18:0] q_V_1_17_fu_1746_p2;
wire   [22:0] r_V_1_6_fu_1757_p3;
wire   [22:0] tmp_64_fu_1752_p2;
wire   [22:0] tmp_10_16_fu_1765_p2;
wire   [22:0] r_V_3_6_fu_1777_p3;
wire   [22:0] tmp_13_16_fu_1784_p2;
wire   [22:0] s_V_2_17_fu_1790_p2;
wire   [22:0] s_V_1_17_fu_1771_p2;
wire   [18:0] tmp_41_fu_1803_p3;
wire   [19:0] q_star_V_16_fu_1810_p3;
wire   [22:0] p_0353_1_18_fu_1796_p3;
wire   [19:0] q_V_1_18_fu_1818_p2;
wire   [22:0] r_V_1_7_fu_1838_p3;
wire   [22:0] tmp_66_fu_1832_p2;
wire   [22:0] tmp_10_17_fu_1846_p2;
wire   [22:0] r_V_3_7_fu_1858_p3;
wire   [22:0] tmp_13_17_fu_1866_p2;
wire   [0:0] tmp_65_fu_1824_p3;
wire   [22:0] s_V_2_18_fu_1872_p2;
wire   [22:0] s_V_1_18_fu_1852_p2;
wire   [20:0] q_star_V_17_fu_1902_p3;
wire   [20:0] q_V_1_19_fu_1909_p2;
wire   [22:0] r_V_1_8_fu_1920_p3;
wire   [22:0] tmp_68_fu_1915_p2;
wire   [22:0] r_V_2_10_fu_1928_p2;
wire   [22:0] r_V_3_8_fu_1940_p3;
wire   [22:0] r_V_4_10_fu_1947_p2;
wire   [22:0] s_V_2_19_fu_1953_p2;
wire   [22:0] s_V_1_19_fu_1934_p2;
wire   [19:0] tmp_70_fu_1970_p2;
wire   [19:0] tmp_69_fu_1966_p1;
wire   [19:0] tmp_48_fu_1975_p3;
wire   [20:0] q_star_V_18_fu_1982_p3;
wire   [22:0] p_0353_1_20_fu_1959_p3;
wire   [20:0] q_V_1_20_fu_1990_p2;
wire   [20:0] q_V_fu_2002_p2;
wire   [0:0] tmp_1_fu_1996_p2;
wire   [19:0] tmp_49_fu_2008_p4;
wire   [19:0] tmp_50_fu_2018_p3;
reg    ap_ce_reg;
reg   [31:0] in_val_V_read_int_reg;
reg   [19:0] ap_return_int_reg;

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        ap_reg_pp0_iter1_tmp_6_reg_2031 <= tmp_6_reg_2031;
        p_0353_1_11_reg_2126[22 : 12] <= p_0353_1_11_fu_1226_p3[22 : 12];
        p_0353_1_13_reg_2143[22 : 10] <= p_0353_1_13_fu_1389_p3[22 : 10];
        p_0353_1_15_reg_2160[22 : 8] <= p_0353_1_15_fu_1552_p3[22 : 8];
        p_0353_1_17_reg_2177[22 : 6] <= p_0353_1_17_fu_1715_p3[22 : 6];
        p_0353_1_19_reg_2194[22 : 4] <= p_0353_1_19_fu_1878_p3[22 : 4];
        p_0353_1_2_reg_2047[22 : 2] <= p_0353_1_2_fu_404_p3[22 : 2];
        p_0353_1_4_reg_2058[22 : 4] <= p_0353_1_4_fu_574_p3[22 : 4];
        p_0353_1_6_reg_2075[22 : 6] <= p_0353_1_6_fu_737_p3[22 : 6];
        p_0353_1_8_reg_2092[22 : 8] <= p_0353_1_8_fu_900_p3[22 : 8];
        p_0353_1_reg_2026 <= p_0353_1_fu_324_p2;
        p_0353_1_s_reg_2109[22 : 10] <= p_0353_1_s_fu_1063_p3[22 : 10];
        tmp_10_reg_2037 <= p_0353_1_fu_324_p2[32'd21];
        tmp_11_reg_2063 <= tmp_11_fu_582_p3;
        tmp_12_reg_2052 <= p_0353_1_2_fu_404_p3[32'd22];
        tmp_15_reg_2080 <= tmp_15_fu_745_p3;
        tmp_19_reg_2097 <= tmp_19_fu_908_p3;
        tmp_20_reg_2069 <= p_0353_1_4_fu_574_p3[32'd22];
        tmp_23_reg_2114 <= tmp_23_fu_1071_p3;
        tmp_27_reg_2131 <= tmp_27_fu_1234_p3;
        tmp_28_reg_2086 <= p_0353_1_6_fu_737_p3[32'd22];
        tmp_31_reg_2148 <= tmp_31_fu_1397_p3;
        tmp_35_reg_2165 <= tmp_35_fu_1560_p3;
        tmp_36_reg_2103 <= p_0353_1_8_fu_900_p3[32'd22];
        tmp_39_reg_2182 <= tmp_39_fu_1723_p3;
        tmp_43_reg_2199 <= tmp_43_fu_1886_p3;
        tmp_44_reg_2120 <= p_0353_1_s_fu_1063_p3[32'd22];
        tmp_51_reg_2137 <= p_0353_1_11_fu_1226_p3[32'd22];
        tmp_55_reg_2154 <= p_0353_1_13_fu_1389_p3[32'd22];
        tmp_59_reg_2171 <= p_0353_1_15_fu_1552_p3[32'd22];
        tmp_63_reg_2188 <= p_0353_1_17_fu_1715_p3[32'd22];
        tmp_67_reg_2206 <= p_0353_1_19_fu_1878_p3[32'd22];
        tmp_6_reg_2031 <= tmp_s_fu_300_p2[32'd21];
        tmp_7_reg_2042 <= p_0353_1_1_fu_353_p2[32'd22];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= tmp_50_fu_2018_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        in_val_V_read_int_reg <= in_val_V_read;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = tmp_50_fu_2018_p3;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign p_0305_1_in_in_2_fu_434_p3 = ((tmp_7_reg_2042[0:0] === 1'b1) ? p_s_fu_420_p3 : q_V_1_1_fu_427_p3);

assign p_0353_1_10_fu_1144_p3 = ((tmp_44_reg_2120[0:0] === 1'b1) ? s_V_2_1_fu_1138_p2 : s_V_1_1_fu_1119_p2);

assign p_0353_1_11_fu_1226_p3 = ((tmp_46_fu_1172_p3[0:0] === 1'b1) ? s_V_2_10_fu_1220_p2 : s_V_1_10_fu_1200_p2);

assign p_0353_1_12_fu_1307_p3 = ((tmp_51_reg_2137[0:0] === 1'b1) ? s_V_2_11_fu_1301_p2 : s_V_1_11_fu_1282_p2);

assign p_0353_1_13_fu_1389_p3 = ((tmp_53_fu_1335_p3[0:0] === 1'b1) ? s_V_2_12_fu_1383_p2 : s_V_1_12_fu_1363_p2);

assign p_0353_1_14_fu_1470_p3 = ((tmp_55_reg_2154[0:0] === 1'b1) ? s_V_2_13_fu_1464_p2 : s_V_1_13_fu_1445_p2);

assign p_0353_1_15_fu_1552_p3 = ((tmp_57_fu_1498_p3[0:0] === 1'b1) ? s_V_2_14_fu_1546_p2 : s_V_1_14_fu_1526_p2);

assign p_0353_1_16_fu_1633_p3 = ((tmp_59_reg_2171[0:0] === 1'b1) ? s_V_2_15_fu_1627_p2 : s_V_1_15_fu_1608_p2);

assign p_0353_1_17_fu_1715_p3 = ((tmp_61_fu_1661_p3[0:0] === 1'b1) ? s_V_2_16_fu_1709_p2 : s_V_1_16_fu_1689_p2);

assign p_0353_1_18_fu_1796_p3 = ((tmp_63_reg_2188[0:0] === 1'b1) ? s_V_2_17_fu_1790_p2 : s_V_1_17_fu_1771_p2);

assign p_0353_1_19_fu_1878_p3 = ((tmp_65_fu_1824_p3[0:0] === 1'b1) ? s_V_2_18_fu_1872_p2 : s_V_1_18_fu_1852_p2);

assign p_0353_1_1_fu_353_p2 = (tmp_3_1_fu_346_p3 + 23'd3145728);

assign p_0353_1_20_fu_1959_p3 = ((tmp_67_reg_2206[0:0] === 1'b1) ? s_V_2_19_fu_1953_p2 : s_V_1_19_fu_1934_p2);

assign p_0353_1_2_fu_404_p3 = ((tmp_7_fu_359_p3[0:0] === 1'b1) ? s_V_2_2_fu_398_p2 : s_V_1_2_fu_386_p2);

assign p_0353_1_3_fu_492_p3 = ((tmp_12_reg_2052[0:0] === 1'b1) ? s_V_2_3_fu_486_p2 : s_V_1_3_fu_466_p2);

assign p_0353_1_4_fu_574_p3 = ((tmp_16_fu_520_p3[0:0] === 1'b1) ? s_V_2_4_fu_568_p2 : s_V_1_4_fu_548_p2);

assign p_0353_1_5_fu_655_p3 = ((tmp_20_reg_2069[0:0] === 1'b1) ? s_V_2_5_fu_649_p2 : s_V_1_5_fu_630_p2);

assign p_0353_1_6_fu_737_p3 = ((tmp_24_fu_683_p3[0:0] === 1'b1) ? s_V_2_6_fu_731_p2 : s_V_1_6_fu_711_p2);

assign p_0353_1_7_fu_818_p3 = ((tmp_28_reg_2086[0:0] === 1'b1) ? s_V_2_7_fu_812_p2 : s_V_1_7_fu_793_p2);

assign p_0353_1_8_fu_900_p3 = ((tmp_32_fu_846_p3[0:0] === 1'b1) ? s_V_2_8_fu_894_p2 : s_V_1_8_fu_874_p2);

assign p_0353_1_9_fu_981_p3 = ((tmp_36_reg_2103[0:0] === 1'b1) ? s_V_2_9_fu_975_p2 : s_V_1_9_fu_956_p2);

assign p_0353_1_fu_324_p2 = (tmp_3_fu_316_p3 ^ 22'd2097152);

assign p_0353_1_s_fu_1063_p3 = ((tmp_40_fu_1009_p3[0:0] === 1'b1) ? s_V_2_s_fu_1057_p2 : s_V_1_s_fu_1037_p2);

assign p_s_fu_420_p3 = ((ap_reg_pp0_iter1_tmp_6_reg_2031[0:0] === 1'b1) ? 3'd4 : 3'd0);

assign q_V_1_10_fu_1166_p2 = (q_star_V_1_fu_1158_p3 | 12'd1);

assign q_V_1_11_fu_1257_p2 = (q_star_V_2_fu_1250_p3 | 13'd1);

assign q_V_1_12_fu_1329_p2 = (q_star_V_10_fu_1321_p3 | 14'd1);

assign q_V_1_13_fu_1420_p2 = (q_star_V_11_fu_1413_p3 | 15'd1);

assign q_V_1_14_fu_1492_p2 = (q_star_V_12_fu_1484_p3 | 16'd1);

assign q_V_1_15_fu_1583_p2 = (q_star_V_13_fu_1576_p3 | 17'd1);

assign q_V_1_16_fu_1655_p2 = (q_star_V_14_fu_1647_p3 | 18'd1);

assign q_V_1_17_fu_1746_p2 = (q_star_V_15_fu_1739_p3 | 19'd1);

assign q_V_1_18_fu_1818_p2 = (q_star_V_16_fu_1810_p3 | 20'd1);

assign q_V_1_19_fu_1909_p2 = (q_star_V_17_fu_1902_p3 | 21'd1);

assign q_V_1_1_fu_427_p3 = ((ap_reg_pp0_iter1_tmp_6_reg_2031[0:0] === 1'b1) ? 3'd6 : 3'd2);

assign q_V_1_20_fu_1990_p2 = (q_star_V_18_fu_1982_p3 | 21'd1);

assign q_V_1_2_fu_441_p2 = (p_0305_1_in_in_2_fu_434_p3 | 3'd1);

assign q_V_1_3_fu_514_p2 = (q_star_V_3_fu_506_p3 | 4'd1);

assign q_V_1_4_fu_605_p2 = (q_star_V_4_fu_598_p3 | 5'd1);

assign q_V_1_5_fu_677_p2 = (q_star_V_5_fu_669_p3 | 6'd1);

assign q_V_1_6_fu_768_p2 = (q_star_V_6_fu_761_p3 | 7'd1);

assign q_V_1_7_fu_840_p2 = (q_star_V_7_fu_832_p3 | 8'd1);

assign q_V_1_8_fu_931_p2 = (q_star_V_8_fu_924_p3 | 9'd1);

assign q_V_1_9_fu_1003_p2 = (q_star_V_9_fu_995_p3 | 10'd1);

assign q_V_1_s_fu_1094_p2 = (q_star_V_s_fu_1087_p3 | 11'd1);

assign q_V_fu_2002_p2 = (q_V_1_20_fu_1990_p2 + 21'd1);

assign q_star_V_10_fu_1321_p3 = {{tmp_29_fu_1314_p3}, {1'd0}};

assign q_star_V_11_fu_1413_p3 = {{tmp_31_reg_2148}, {1'd0}};

assign q_star_V_12_fu_1484_p3 = {{tmp_33_fu_1477_p3}, {1'd0}};

assign q_star_V_13_fu_1576_p3 = {{tmp_35_reg_2165}, {1'd0}};

assign q_star_V_14_fu_1647_p3 = {{tmp_37_fu_1640_p3}, {1'd0}};

assign q_star_V_15_fu_1739_p3 = {{tmp_39_reg_2182}, {1'd0}};

assign q_star_V_16_fu_1810_p3 = {{tmp_41_fu_1803_p3}, {1'd0}};

assign q_star_V_17_fu_1902_p3 = {{tmp_43_reg_2199}, {1'd0}};

assign q_star_V_18_fu_1982_p3 = {{tmp_48_fu_1975_p3}, {1'd0}};

assign q_star_V_1_fu_1158_p3 = {{tmp_25_fu_1151_p3}, {1'd0}};

assign q_star_V_2_fu_1250_p3 = {{tmp_27_reg_2131}, {1'd0}};

assign q_star_V_3_fu_506_p3 = {{tmp_9_fu_499_p3}, {1'd0}};

assign q_star_V_4_fu_598_p3 = {{tmp_11_reg_2063}, {1'd0}};

assign q_star_V_5_fu_669_p3 = {{tmp_13_fu_662_p3}, {1'd0}};

assign q_star_V_6_fu_761_p3 = {{tmp_15_reg_2080}, {1'd0}};

assign q_star_V_7_fu_832_p3 = {{tmp_17_fu_825_p3}, {1'd0}};

assign q_star_V_8_fu_924_p3 = {{tmp_19_reg_2097}, {1'd0}};

assign q_star_V_9_fu_995_p3 = {{tmp_21_fu_988_p3}, {1'd0}};

assign q_star_V_s_fu_1087_p3 = {{tmp_23_reg_2114}, {1'd0}};

assign r_V_1_1_fu_1349_p3 = {{q_V_1_12_fu_1329_p2}, {9'd0}};

assign r_V_1_2_fu_1431_p3 = {{q_V_1_13_fu_1420_p2}, {8'd0}};

assign r_V_1_3_fu_1512_p3 = {{q_V_1_14_fu_1492_p2}, {7'd0}};

assign r_V_1_4_fu_1594_p3 = {{q_V_1_15_fu_1583_p2}, {6'd0}};

assign r_V_1_5_fu_1675_p3 = {{q_V_1_16_fu_1655_p2}, {5'd0}};

assign r_V_1_6_fu_1757_p3 = {{q_V_1_17_fu_1746_p2}, {4'd0}};

assign r_V_1_7_fu_1838_p3 = {{q_V_1_18_fu_1818_p2}, {3'd0}};

assign r_V_1_8_fu_1920_p3 = {{q_V_1_19_fu_1909_p2}, {2'd0}};

assign r_V_1_s_fu_1268_p3 = {{q_V_1_11_fu_1257_p2}, {10'd0}};

assign r_V_2_10_fu_1928_p2 = (r_V_1_8_fu_1920_p3 | 23'd1);

assign r_V_2_1_fu_1105_p3 = {{q_V_1_s_fu_1094_p2}, {12'd0}};

assign r_V_2_2_fu_1186_p3 = {{q_V_1_10_fu_1166_p2}, {11'd0}};

assign r_V_2_3_fu_452_p3 = {{q_V_1_2_fu_441_p2}, {20'd0}};

assign r_V_2_4_fu_534_p3 = {{q_V_1_3_fu_514_p2}, {19'd0}};

assign r_V_2_5_fu_616_p3 = {{q_V_1_4_fu_605_p2}, {18'd0}};

assign r_V_2_6_fu_697_p3 = {{q_V_1_5_fu_677_p2}, {17'd0}};

assign r_V_2_7_fu_779_p3 = {{q_V_1_6_fu_768_p2}, {16'd0}};

assign r_V_2_8_fu_860_p3 = {{q_V_1_7_fu_840_p2}, {15'd0}};

assign r_V_2_9_fu_942_p3 = {{q_V_1_8_fu_931_p2}, {14'd0}};

assign r_V_2_s_fu_1023_p3 = {{q_V_1_9_fu_1003_p2}, {13'd0}};

assign r_V_3_1_fu_1369_p3 = {{tmp_29_fu_1314_p3}, {10'd0}};

assign r_V_3_2_fu_1451_p3 = {{tmp_31_reg_2148}, {9'd0}};

assign r_V_3_3_fu_1532_p3 = {{tmp_33_fu_1477_p3}, {8'd0}};

assign r_V_3_4_fu_1614_p3 = {{tmp_35_reg_2165}, {7'd0}};

assign r_V_3_5_fu_1695_p3 = {{tmp_37_fu_1640_p3}, {6'd0}};

assign r_V_3_6_fu_1777_p3 = {{tmp_39_reg_2182}, {5'd0}};

assign r_V_3_7_fu_1858_p3 = {{tmp_41_fu_1803_p3}, {4'd0}};

assign r_V_3_8_fu_1940_p3 = {{tmp_43_reg_2199}, {3'd0}};

assign r_V_3_s_fu_1288_p3 = {{tmp_27_reg_2131}, {11'd0}};

assign r_V_4_10_fu_1947_p2 = (r_V_3_8_fu_1940_p3 | 23'd3);

assign r_V_4_1_fu_1125_p3 = {{tmp_23_reg_2114}, {13'd0}};

assign r_V_4_2_fu_1206_p3 = {{tmp_25_fu_1151_p3}, {12'd0}};

assign r_V_4_3_fu_472_p3 = {{p_0305_1_in_in_2_fu_434_p3}, {20'd0}};

assign r_V_4_4_fu_554_p3 = {{tmp_9_fu_499_p3}, {20'd0}};

assign r_V_4_5_fu_636_p3 = {{tmp_11_reg_2063}, {19'd0}};

assign r_V_4_6_fu_717_p3 = {{tmp_13_fu_662_p3}, {18'd0}};

assign r_V_4_7_fu_799_p3 = {{tmp_15_reg_2080}, {17'd0}};

assign r_V_4_8_fu_880_p3 = {{tmp_17_fu_825_p3}, {16'd0}};

assign r_V_4_9_fu_962_p3 = {{tmp_19_reg_2097}, {15'd0}};

assign r_V_4_s_fu_1043_p3 = {{tmp_21_fu_988_p3}, {14'd0}};

assign s_V_1_10_fu_1200_p2 = (tmp_47_fu_1180_p2 - tmp_10_2_fu_1194_p2);

assign s_V_1_11_fu_1282_p2 = (tmp_52_fu_1263_p2 - tmp_10_10_fu_1276_p2);

assign s_V_1_12_fu_1363_p2 = (tmp_54_fu_1343_p2 - tmp_10_11_fu_1357_p2);

assign s_V_1_13_fu_1445_p2 = (tmp_56_fu_1426_p2 - tmp_10_12_fu_1439_p2);

assign s_V_1_14_fu_1526_p2 = (tmp_58_fu_1506_p2 - tmp_10_13_fu_1520_p2);

assign s_V_1_15_fu_1608_p2 = (tmp_60_fu_1589_p2 - tmp_10_14_fu_1602_p2);

assign s_V_1_16_fu_1689_p2 = (tmp_62_fu_1669_p2 - tmp_10_15_fu_1683_p2);

assign s_V_1_17_fu_1771_p2 = (tmp_64_fu_1752_p2 - tmp_10_16_fu_1765_p2);

assign s_V_1_18_fu_1852_p2 = (tmp_66_fu_1832_p2 - tmp_10_17_fu_1846_p2);

assign s_V_1_19_fu_1934_p2 = (tmp_68_fu_1915_p2 - r_V_2_10_fu_1928_p2);

assign s_V_1_1_fu_1119_p2 = (tmp_45_fu_1100_p2 - tmp_10_1_fu_1113_p2);

assign s_V_1_2_fu_386_p2 = (tmp_8_fu_367_p2 - tmp_4_fu_380_p2);

assign s_V_1_3_fu_466_p2 = (tmp_14_fu_447_p2 - tmp_10_3_fu_460_p2);

assign s_V_1_4_fu_548_p2 = (tmp_18_fu_528_p2 - tmp_10_4_fu_542_p2);

assign s_V_1_5_fu_630_p2 = (tmp_22_fu_611_p2 - tmp_10_5_fu_624_p2);

assign s_V_1_6_fu_711_p2 = (tmp_26_fu_691_p2 - tmp_10_6_fu_705_p2);

assign s_V_1_7_fu_793_p2 = (tmp_30_fu_774_p2 - tmp_10_7_fu_787_p2);

assign s_V_1_8_fu_874_p2 = (tmp_34_fu_854_p2 - tmp_10_8_fu_868_p2);

assign s_V_1_9_fu_956_p2 = (tmp_38_fu_937_p2 - tmp_10_9_fu_950_p2);

assign s_V_1_s_fu_1037_p2 = (tmp_42_fu_1017_p2 - tmp_10_s_fu_1031_p2);

assign s_V_2_10_fu_1220_p2 = (tmp_47_fu_1180_p2 + tmp_13_2_fu_1214_p2);

assign s_V_2_11_fu_1301_p2 = (tmp_52_fu_1263_p2 + tmp_13_10_fu_1295_p2);

assign s_V_2_12_fu_1383_p2 = (tmp_54_fu_1343_p2 + tmp_13_11_fu_1377_p2);

assign s_V_2_13_fu_1464_p2 = (tmp_56_fu_1426_p2 + tmp_13_12_fu_1458_p2);

assign s_V_2_14_fu_1546_p2 = (tmp_58_fu_1506_p2 + tmp_13_13_fu_1540_p2);

assign s_V_2_15_fu_1627_p2 = (tmp_60_fu_1589_p2 + tmp_13_14_fu_1621_p2);

assign s_V_2_16_fu_1709_p2 = (tmp_62_fu_1669_p2 + tmp_13_15_fu_1703_p2);

assign s_V_2_17_fu_1790_p2 = (tmp_64_fu_1752_p2 + tmp_13_16_fu_1784_p2);

assign s_V_2_18_fu_1872_p2 = (tmp_66_fu_1832_p2 + tmp_13_17_fu_1866_p2);

assign s_V_2_19_fu_1953_p2 = (tmp_68_fu_1915_p2 + r_V_4_10_fu_1947_p2);

assign s_V_2_1_fu_1138_p2 = (tmp_45_fu_1100_p2 + tmp_13_1_fu_1132_p2);

assign s_V_2_2_fu_398_p2 = (tmp_2_fu_373_p3 + tmp1_fu_392_p2);

assign s_V_2_3_fu_486_p2 = (tmp_14_fu_447_p2 + tmp_13_3_fu_480_p2);

assign s_V_2_4_fu_568_p2 = (tmp_18_fu_528_p2 + tmp_13_4_fu_562_p2);

assign s_V_2_5_fu_649_p2 = (tmp_22_fu_611_p2 + tmp_13_5_fu_643_p2);

assign s_V_2_6_fu_731_p2 = (tmp_26_fu_691_p2 + tmp_13_6_fu_725_p2);

assign s_V_2_7_fu_812_p2 = (tmp_30_fu_774_p2 + tmp_13_7_fu_806_p2);

assign s_V_2_8_fu_894_p2 = (tmp_34_fu_854_p2 + tmp_13_8_fu_888_p2);

assign s_V_2_9_fu_975_p2 = (tmp_38_fu_937_p2 + tmp_13_9_fu_969_p2);

assign s_V_2_s_fu_1057_p2 = (tmp_42_fu_1017_p2 + tmp_13_s_fu_1051_p2);

assign tmp1_fu_392_p2 = ($signed(tmp_8_fu_367_p2) + $signed(23'd5767168));

assign tmp_10_10_fu_1276_p2 = (r_V_1_s_fu_1268_p3 | 23'd256);

assign tmp_10_11_fu_1357_p2 = (r_V_1_1_fu_1349_p3 | 23'd128);

assign tmp_10_12_fu_1439_p2 = (r_V_1_2_fu_1431_p3 | 23'd64);

assign tmp_10_13_fu_1520_p2 = (r_V_1_3_fu_1512_p3 | 23'd32);

assign tmp_10_14_fu_1602_p2 = (r_V_1_4_fu_1594_p3 | 23'd16);

assign tmp_10_15_fu_1683_p2 = (r_V_1_5_fu_1675_p3 | 23'd8);

assign tmp_10_16_fu_1765_p2 = (r_V_1_6_fu_1757_p3 | 23'd4);

assign tmp_10_17_fu_1846_p2 = (r_V_1_7_fu_1838_p3 | 23'd2);

assign tmp_10_1_fu_1113_p2 = (r_V_2_1_fu_1105_p3 | 23'd1024);

assign tmp_10_2_fu_1194_p2 = (r_V_2_2_fu_1186_p3 | 23'd512);

assign tmp_10_3_fu_460_p2 = (r_V_2_3_fu_452_p3 | 23'd262144);

assign tmp_10_4_fu_542_p2 = (r_V_2_4_fu_534_p3 | 23'd131072);

assign tmp_10_5_fu_624_p2 = (r_V_2_5_fu_616_p3 | 23'd65536);

assign tmp_10_6_fu_705_p2 = (r_V_2_6_fu_697_p3 | 23'd32768);

assign tmp_10_7_fu_787_p2 = (r_V_2_7_fu_779_p3 | 23'd16384);

assign tmp_10_8_fu_868_p2 = (r_V_2_8_fu_860_p3 | 23'd8192);

assign tmp_10_9_fu_950_p2 = (r_V_2_9_fu_942_p3 | 23'd4096);

assign tmp_10_s_fu_1031_p2 = (r_V_2_s_fu_1023_p3 | 23'd2048);

assign tmp_11_fu_582_p3 = ((tmp_16_fu_520_p3[0:0] === 1'b1) ? q_star_V_3_fu_506_p3 : q_V_1_3_fu_514_p2);

assign tmp_13_10_fu_1295_p2 = (r_V_3_s_fu_1288_p3 | 23'd768);

assign tmp_13_11_fu_1377_p2 = (r_V_3_1_fu_1369_p3 | 23'd384);

assign tmp_13_12_fu_1458_p2 = (r_V_3_2_fu_1451_p3 | 23'd192);

assign tmp_13_13_fu_1540_p2 = (r_V_3_3_fu_1532_p3 | 23'd96);

assign tmp_13_14_fu_1621_p2 = (r_V_3_4_fu_1614_p3 | 23'd48);

assign tmp_13_15_fu_1703_p2 = (r_V_3_5_fu_1695_p3 | 23'd24);

assign tmp_13_16_fu_1784_p2 = (r_V_3_6_fu_1777_p3 | 23'd12);

assign tmp_13_17_fu_1866_p2 = (r_V_3_7_fu_1858_p3 | 23'd6);

assign tmp_13_1_fu_1132_p2 = (r_V_4_1_fu_1125_p3 | 23'd3072);

assign tmp_13_2_fu_1214_p2 = (r_V_4_2_fu_1206_p3 | 23'd1536);

assign tmp_13_3_fu_480_p2 = (r_V_4_3_fu_472_p3 | 23'd786432);

assign tmp_13_4_fu_562_p2 = (r_V_4_4_fu_554_p3 | 23'd393216);

assign tmp_13_5_fu_643_p2 = (r_V_4_5_fu_636_p3 | 23'd196608);

assign tmp_13_6_fu_725_p2 = (r_V_4_6_fu_717_p3 | 23'd98304);

assign tmp_13_7_fu_806_p2 = (r_V_4_7_fu_799_p3 | 23'd49152);

assign tmp_13_8_fu_888_p2 = (r_V_4_8_fu_880_p3 | 23'd24576);

assign tmp_13_9_fu_969_p2 = (r_V_4_9_fu_962_p3 | 23'd12288);

assign tmp_13_fu_662_p3 = ((tmp_20_reg_2069[0:0] === 1'b1) ? q_star_V_4_fu_598_p3 : q_V_1_4_fu_605_p2);

assign tmp_13_s_fu_1051_p2 = (r_V_4_s_fu_1043_p3 | 23'd6144);

assign tmp_14_fu_447_p2 = p_0353_1_2_reg_2047 << 23'd1;

assign tmp_15_fu_745_p3 = ((tmp_24_fu_683_p3[0:0] === 1'b1) ? q_star_V_5_fu_669_p3 : q_V_1_5_fu_677_p2);

assign tmp_16_fu_520_p3 = p_0353_1_3_fu_492_p3[32'd22];

assign tmp_17_fu_825_p3 = ((tmp_28_reg_2086[0:0] === 1'b1) ? q_star_V_6_fu_761_p3 : q_V_1_6_fu_768_p2);

assign tmp_18_fu_528_p2 = p_0353_1_3_fu_492_p3 << 23'd1;

assign tmp_19_fu_908_p3 = ((tmp_32_fu_846_p3[0:0] === 1'b1) ? q_star_V_7_fu_832_p3 : q_V_1_7_fu_840_p2);

assign tmp_1_fu_1996_p2 = (($signed(p_0353_1_20_fu_1959_p3) > $signed(23'd0)) ? 1'b1 : 1'b0);

assign tmp_21_fu_988_p3 = ((tmp_36_reg_2103[0:0] === 1'b1) ? q_star_V_8_fu_924_p3 : q_V_1_8_fu_931_p2);

assign tmp_22_fu_611_p2 = p_0353_1_4_reg_2058 << 23'd1;

assign tmp_23_fu_1071_p3 = ((tmp_40_fu_1009_p3[0:0] === 1'b1) ? q_star_V_9_fu_995_p3 : q_V_1_9_fu_1003_p2);

assign tmp_24_fu_683_p3 = p_0353_1_5_fu_655_p3[32'd22];

assign tmp_25_fu_1151_p3 = ((tmp_44_reg_2120[0:0] === 1'b1) ? q_star_V_s_fu_1087_p3 : q_V_1_s_fu_1094_p2);

assign tmp_26_fu_691_p2 = p_0353_1_5_fu_655_p3 << 23'd1;

assign tmp_27_fu_1234_p3 = ((tmp_46_fu_1172_p3[0:0] === 1'b1) ? q_star_V_1_fu_1158_p3 : q_V_1_10_fu_1166_p2);

assign tmp_29_fu_1314_p3 = ((tmp_51_reg_2137[0:0] === 1'b1) ? q_star_V_2_fu_1250_p3 : q_V_1_11_fu_1257_p2);

assign tmp_2_fu_373_p3 = {{tmp_10_reg_2037}, {22'd0}};

assign tmp_30_fu_774_p2 = p_0353_1_6_reg_2075 << 23'd1;

assign tmp_31_fu_1397_p3 = ((tmp_53_fu_1335_p3[0:0] === 1'b1) ? q_star_V_10_fu_1321_p3 : q_V_1_12_fu_1329_p2);

assign tmp_32_fu_846_p3 = p_0353_1_7_fu_818_p3[32'd22];

assign tmp_33_fu_1477_p3 = ((tmp_55_reg_2154[0:0] === 1'b1) ? q_star_V_11_fu_1413_p3 : q_V_1_13_fu_1420_p2);

assign tmp_34_fu_854_p2 = p_0353_1_7_fu_818_p3 << 23'd1;

assign tmp_35_fu_1560_p3 = ((tmp_57_fu_1498_p3[0:0] === 1'b1) ? q_star_V_12_fu_1484_p3 : q_V_1_14_fu_1492_p2);

assign tmp_37_fu_1640_p3 = ((tmp_59_reg_2171[0:0] === 1'b1) ? q_star_V_13_fu_1576_p3 : q_V_1_15_fu_1583_p2);

assign tmp_38_fu_937_p2 = p_0353_1_8_reg_2092 << 23'd1;

assign tmp_39_fu_1723_p3 = ((tmp_61_fu_1661_p3[0:0] === 1'b1) ? q_star_V_14_fu_1647_p3 : q_V_1_16_fu_1655_p2);

assign tmp_3_1_fu_346_p3 = {{p_0353_1_reg_2026}, {1'd0}};

assign tmp_3_fu_316_p3 = {{tmp_5_fu_306_p4}, {1'd0}};

assign tmp_40_fu_1009_p3 = p_0353_1_9_fu_981_p3[32'd22];

assign tmp_41_fu_1803_p3 = ((tmp_63_reg_2188[0:0] === 1'b1) ? q_star_V_15_fu_1739_p3 : q_V_1_17_fu_1746_p2);

assign tmp_42_fu_1017_p2 = p_0353_1_9_fu_981_p3 << 23'd1;

assign tmp_43_fu_1886_p3 = ((tmp_65_fu_1824_p3[0:0] === 1'b1) ? q_star_V_16_fu_1810_p3 : q_V_1_18_fu_1818_p2);

assign tmp_45_fu_1100_p2 = p_0353_1_s_reg_2109 << 23'd1;

assign tmp_46_fu_1172_p3 = p_0353_1_10_fu_1144_p3[32'd22];

assign tmp_47_fu_1180_p2 = p_0353_1_10_fu_1144_p3 << 23'd1;

assign tmp_48_fu_1975_p3 = ((tmp_67_reg_2206[0:0] === 1'b1) ? tmp_70_fu_1970_p2 : tmp_69_fu_1966_p1);

assign tmp_49_fu_2008_p4 = {{q_V_fu_2002_p2[20:1]}};

assign tmp_4_fu_380_p2 = ($signed(tmp_2_fu_373_p3) + $signed(23'd6815744));

assign tmp_50_fu_2018_p3 = ((tmp_1_fu_1996_p2[0:0] === 1'b1) ? tmp_49_fu_2008_p4 : tmp_48_fu_1975_p3);

assign tmp_52_fu_1263_p2 = p_0353_1_11_reg_2126 << 23'd1;

assign tmp_53_fu_1335_p3 = p_0353_1_12_fu_1307_p3[32'd22];

assign tmp_54_fu_1343_p2 = p_0353_1_12_fu_1307_p3 << 23'd1;

assign tmp_56_fu_1426_p2 = p_0353_1_13_reg_2143 << 23'd1;

assign tmp_57_fu_1498_p3 = p_0353_1_14_fu_1470_p3[32'd22];

assign tmp_58_fu_1506_p2 = p_0353_1_14_fu_1470_p3 << 23'd1;

assign tmp_5_fu_306_p4 = {{tmp_s_fu_300_p2[21:1]}};

assign tmp_60_fu_1589_p2 = p_0353_1_15_reg_2160 << 23'd1;

assign tmp_61_fu_1661_p3 = p_0353_1_16_fu_1633_p3[32'd22];

assign tmp_62_fu_1669_p2 = p_0353_1_16_fu_1633_p3 << 23'd1;

assign tmp_64_fu_1752_p2 = p_0353_1_17_reg_2177 << 23'd1;

assign tmp_65_fu_1824_p3 = p_0353_1_18_fu_1796_p3[32'd22];

assign tmp_66_fu_1832_p2 = p_0353_1_18_fu_1796_p3 << 23'd1;

assign tmp_68_fu_1915_p2 = p_0353_1_19_reg_2194 << 23'd1;

assign tmp_69_fu_1966_p1 = q_V_1_19_fu_1909_p2[19:0];

assign tmp_70_fu_1970_p2 = tmp_43_reg_2199 << 20'd1;

assign tmp_7_fu_359_p3 = p_0353_1_1_fu_353_p2[32'd22];

assign tmp_8_fu_367_p2 = p_0353_1_1_fu_353_p2 << 23'd1;

assign tmp_9_fu_499_p3 = ((tmp_12_reg_2052[0:0] === 1'b1) ? p_0305_1_in_in_2_fu_434_p3 : q_V_1_2_fu_441_p2);

assign tmp_cast_fu_296_p1 = tmp_fu_286_p4;

assign tmp_fu_286_p4 = {{in_val_V_read_int_reg[31:11]}};

assign tmp_s_fu_300_p2 = (tmp_cast_fu_296_p1 + 22'd1);

always @ (posedge ap_clk) begin
    p_0353_1_2_reg_2047[1:0] <= 2'b00;
    p_0353_1_4_reg_2058[3:0] <= 4'b0000;
    p_0353_1_6_reg_2075[5:0] <= 6'b000000;
    p_0353_1_8_reg_2092[7:0] <= 8'b00000000;
    p_0353_1_s_reg_2109[9:0] <= 10'b0000000000;
    p_0353_1_11_reg_2126[11:0] <= 12'b111000000000;
    p_0353_1_13_reg_2143[9:0] <= 10'b1110000000;
    p_0353_1_15_reg_2160[7:0] <= 8'b11100000;
    p_0353_1_17_reg_2177[5:0] <= 6'b111000;
    p_0353_1_19_reg_2194[3:0] <= 4'b1110;
end

endmodule //fxp_sqrt
