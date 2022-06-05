// -------------------------------------------------------------
// 
// File Name: F:\verilogTest\2nd\hdlsrc\NonCIC_Final\Third_Block_H3_z.v
// Created: 2022-03-05 12:50:35
// 
// Generated by MATLAB 9.9 and HDL Coder 3.17
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Third_Block_H3_z
// Source Path: NonCIC_Final/Non-recursive CIC1/Third Block H3(z)
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Third_Block_H3_z
          (clk,
           enb_1_48_0,
           In1,
           Out1);


  input   clk;
  input   enb_1_48_0;
  input   signed [48:0] In1;  // sfix49_En45
  output  signed [18:0] Out1;  // sfix19_En14


  reg signed [48:0] Delay_out1;  // sfix49_En45
  reg signed [48:0] Delay1_out1;  // sfix49_En45
  wire signed [42:0] Add_add_cast;  // sfix43_En39
  wire signed [43:0] Add_add_cast_1;  // sfix44_En39
  wire signed [42:0] Add_add_cast_2;  // sfix43_En39
  wire signed [43:0] Add_add_cast_3;  // sfix44_En39
  wire signed [43:0] Add_add_temp;  // sfix44_En39
  wire signed [42:0] Add_add_cast_4;  // sfix43_En39
  wire signed [43:0] Add_add_cast_5;  // sfix44_En39
  wire signed [42:0] Add_add_cast_6;  // sfix43_En39
  wire signed [43:0] Add_add_cast_7;  // sfix44_En39
  wire signed [43:0] Add_add_temp_1;  // sfix44_En39
  wire signed [42:0] Add_out1;  // sfix43_En39
  wire signed [62:0] Gain_mul_temp;  // sfix63_En59
  wire signed [61:0] Gain_cast;  // sfix62_En59
  wire signed [42:0] Gain_out1;  // sfix43_En39
  reg signed [42:0] Gain_out1_1;  // sfix43_En39
  reg signed [42:0] Delay3_out1;  // sfix43_En39
  wire signed [45:0] Add1_add_cast;  // sfix46_En41
  wire signed [45:0] Add1_add_cast_1;  // sfix46_En41
  wire signed [45:0] Add1_add_temp;  // sfix46_En41
  wire signed [44:0] Add1_add_cast_2;  // sfix45_En41
  wire signed [45:0] Add1_add_cast_3;  // sfix46_En41
  wire signed [45:0] Add1_add_cast_4;  // sfix46_En41
  wire signed [45:0] Add1_add_temp_1;  // sfix46_En41
  wire signed [44:0] Add1_out1;  // sfix45_En41
  wire signed [64:0] Gain1_mul_temp;  // sfix65_En61
  wire signed [63:0] Gain1_cast;  // sfix64_En61
  wire signed [44:0] Gain1_out1;  // sfix45_En41
  reg signed [44:0] Gain1_out1_1;  // sfix45_En41
  reg signed [44:0] Delay5_out1;  // sfix45_En41
  wire signed [47:0] Add2_add_cast;  // sfix48_En43
  wire signed [47:0] Add2_add_cast_1;  // sfix48_En43
  wire signed [47:0] Add2_add_temp;  // sfix48_En43
  wire signed [46:0] Add2_add_cast_2;  // sfix47_En43
  wire signed [47:0] Add2_add_cast_3;  // sfix48_En43
  wire signed [47:0] Add2_add_cast_4;  // sfix48_En43
  wire signed [47:0] Add2_add_temp_1;  // sfix48_En43
  wire signed [46:0] Add2_out1;  // sfix47_En43
  wire signed [66:0] Gain2_mul_temp;  // sfix67_En63
  wire signed [65:0] Gain2_cast;  // sfix66_En63
  wire signed [46:0] Gain2_out1;  // sfix47_En43
  reg signed [46:0] Gain2_out1_1;  // sfix47_En43
  reg signed [46:0] Delay7_out1;  // sfix47_En43
  wire signed [48:0] Add3_add_cast;  // sfix49_En44
  wire signed [48:0] Add3_add_cast_1;  // sfix49_En44
  wire signed [48:0] Add3_add_temp;  // sfix49_En44
  wire signed [47:0] Add3_add_cast_2;  // sfix48_En44
  wire signed [48:0] Add3_add_cast_3;  // sfix49_En44
  wire signed [48:0] Add3_add_cast_4;  // sfix49_En44
  wire signed [48:0] Add3_add_temp_1;  // sfix49_En44
  wire signed [47:0] Add3_out1;  // sfix48_En44
  wire signed [67:0] Gain3_mul_temp;  // sfix68_En64
  wire signed [66:0] Gain3_cast;  // sfix67_En64
  wire signed [47:0] Gain3_out1;  // sfix48_En44
  reg signed [47:0] Gain3_out1_1;  // sfix48_En44
  reg signed [47:0] Delay9_out1;  // sfix48_En44
  wire signed [50:0] Add4_add_cast;  // sfix51_En46
  wire signed [50:0] Add4_add_cast_1;  // sfix51_En46
  wire signed [50:0] Add4_add_temp;  // sfix51_En46
  wire signed [49:0] Add4_add_cast_2;  // sfix50_En46
  wire signed [50:0] Add4_add_cast_3;  // sfix51_En46
  wire signed [50:0] Add4_add_cast_4;  // sfix51_En46
  wire signed [50:0] Add4_add_temp_1;  // sfix51_En46
  wire signed [49:0] Add4_out1;  // sfix50_En46
  wire signed [69:0] Gain4_mul_temp;  // sfix70_En66
  wire signed [68:0] Gain4_cast;  // sfix69_En66
  wire signed [49:0] Gain4_out1;  // sfix50_En46
  reg signed [49:0] Gain4_out1_1;  // sfix50_En46
  reg signed [49:0] Delay11_out1;  // sfix50_En46
  wire signed [51:0] Add5_add_cast;  // sfix52_En47
  wire signed [51:0] Add5_add_cast_1;  // sfix52_En47
  wire signed [51:0] Add5_add_temp;  // sfix52_En47
  wire signed [50:0] Add5_add_cast_2;  // sfix51_En47
  wire signed [51:0] Add5_add_cast_3;  // sfix52_En47
  wire signed [51:0] Add5_add_cast_4;  // sfix52_En47
  wire signed [51:0] Add5_add_temp_1;  // sfix52_En47
  wire signed [50:0] Add5_out1;  // sfix51_En47
  wire signed [70:0] Gain5_mul_temp;  // sfix71_En67
  wire signed [69:0] Gain5_cast;  // sfix70_En67
  wire signed [50:0] Gain5_out1;  // sfix51_En47
  reg signed [50:0] Gain5_out1_1;  // sfix51_En47
  reg signed [50:0] Delay13_out1;  // sfix51_En47
  wire signed [53:0] Add6_add_cast;  // sfix54_En49
  wire signed [53:0] Add6_add_cast_1;  // sfix54_En49
  wire signed [53:0] Add6_add_temp;  // sfix54_En49
  wire signed [52:0] Add6_add_cast_2;  // sfix53_En49
  wire signed [53:0] Add6_add_cast_3;  // sfix54_En49
  wire signed [53:0] Add6_add_cast_4;  // sfix54_En49
  wire signed [53:0] Add6_add_temp_1;  // sfix54_En49
  wire signed [52:0] Add6_out1;  // sfix53_En49
  wire signed [72:0] Gain6_mul_temp;  // sfix73_En69
  wire signed [71:0] Gain6_cast;  // sfix72_En69
  wire signed [52:0] Gain6_out1;  // sfix53_En49
  reg signed [52:0] Gain6_out1_1;  // sfix53_En49
  reg signed [52:0] Delay15_out1;  // sfix53_En49
  wire signed [54:0] Add7_add_cast;  // sfix55_En50
  wire signed [54:0] Add7_add_cast_1;  // sfix55_En50
  wire signed [54:0] Add7_add_temp;  // sfix55_En50
  wire signed [53:0] Add7_add_cast_2;  // sfix54_En50
  wire signed [54:0] Add7_add_cast_3;  // sfix55_En50
  wire signed [54:0] Add7_add_cast_4;  // sfix55_En50
  wire signed [54:0] Add7_add_temp_1;  // sfix55_En50
  wire signed [53:0] Add7_out1;  // sfix54_En50
  wire signed [73:0] Gain7_mul_temp;  // sfix74_En70
  wire signed [72:0] Gain7_cast;  // sfix73_En70
  wire signed [53:0] Gain7_out1;  // sfix54_En50
  reg signed [53:0] Gain7_out1_1;  // sfix54_En50
  reg signed [53:0] Delay17_out1;  // sfix54_En50
  wire signed [56:0] Add8_add_cast;  // sfix57_En52
  wire signed [56:0] Add8_add_cast_1;  // sfix57_En52
  wire signed [56:0] Add8_add_temp;  // sfix57_En52
  wire signed [57:0] Add8_add_cast_2;  // sfix58_En52
  wire signed [56:0] Add8_add_cast_3;  // sfix57_En52
  wire signed [57:0] Add8_add_cast_4;  // sfix58_En52
  wire signed [57:0] Add8_add_temp_1;  // sfix58_En52
  wire signed [56:0] Add8_out1;  // sfix57_En52
  wire signed [76:0] Gain8_mul_temp;  // sfix77_En72
  wire signed [75:0] Gain8_cast;  // sfix76_En72
  wire signed [56:0] Gain8_out1;  // sfix57_En52
  reg signed [56:0] Gain8_out1_1;  // sfix57_En52
  reg signed [56:0] Delay25_out1;  // sfix57_En52
  wire signed [59:0] Add9_add_cast;  // sfix60_En54
  wire signed [59:0] Add9_add_cast_1;  // sfix60_En54
  wire signed [59:0] Add9_add_temp;  // sfix60_En54
  wire signed [58:0] Add9_add_cast_2;  // sfix59_En54
  wire signed [59:0] Add9_add_cast_3;  // sfix60_En54
  wire signed [59:0] Add9_add_cast_4;  // sfix60_En54
  wire signed [59:0] Add9_add_temp_1;  // sfix60_En54
  wire signed [58:0] Add9_out1;  // sfix59_En54
  wire signed [78:0] Gain9_mul_temp;  // sfix79_En74
  wire signed [77:0] Gain9_cast;  // sfix78_En74
  wire signed [58:0] Gain9_out1;  // sfix59_En54
  reg signed [58:0] Gain9_out1_1;  // sfix59_En54
  reg signed [58:0] Delay27_out1;  // sfix59_En54
  wire signed [58:0] Add10_add_cast;  // sfix59_En55
  wire signed [59:0] Add10_add_cast_1;  // sfix60_En55
  wire signed [58:0] Add10_add_cast_2;  // sfix59_En55
  wire signed [59:0] Add10_add_cast_3;  // sfix60_En55
  wire signed [59:0] Add10_add_temp;  // sfix60_En55
  wire signed [58:0] Add10_add_cast_4;  // sfix59_En55
  wire signed [59:0] Add10_add_cast_5;  // sfix60_En55
  wire signed [58:0] Add10_add_cast_6;  // sfix59_En55
  wire signed [59:0] Add10_add_cast_7;  // sfix60_En55
  wire signed [59:0] Add10_add_temp_1;  // sfix60_En55
  wire signed [58:0] Add10_out1;  // sfix59_En55
  wire signed [78:0] Gain10_mul_temp;  // sfix79_En75
  wire signed [77:0] Gain10_cast;  // sfix78_En75
  wire signed [58:0] Gain10_out1;  // sfix59_En55
  reg signed [58:0] Gain10_out1_1;  // sfix59_En55
  reg signed [58:0] Delay29_out1;  // sfix59_En55
  wire signed [61:0] Add11_add_cast;  // sfix62_En57
  wire signed [61:0] Add11_add_cast_1;  // sfix62_En57
  wire signed [61:0] Add11_add_temp;  // sfix62_En57
  wire signed [60:0] Add11_add_cast_2;  // sfix61_En57
  wire signed [61:0] Add11_add_cast_3;  // sfix62_En57
  wire signed [61:0] Add11_add_cast_4;  // sfix62_En57
  wire signed [61:0] Add11_add_temp_1;  // sfix62_En57
  wire signed [60:0] Add11_out1;  // sfix61_En57
  wire signed [80:0] Gain11_mul_temp;  // sfix81_En77
  wire signed [79:0] Gain11_cast;  // sfix80_En77
  wire signed [60:0] Gain11_out1;  // sfix61_En57
  reg signed [60:0] Gain11_out1_1;  // sfix61_En57
  reg signed [60:0] Delay31_out1;  // sfix61_En57
  wire signed [62:0] Add12_add_cast;  // sfix63_En58
  wire signed [62:0] Add12_add_cast_1;  // sfix63_En58
  wire signed [62:0] Add12_add_temp;  // sfix63_En58
  wire signed [61:0] Add12_add_cast_2;  // sfix62_En58
  wire signed [62:0] Add12_add_cast_3;  // sfix63_En58
  wire signed [62:0] Add12_add_cast_4;  // sfix63_En58
  wire signed [62:0] Add12_add_temp_1;  // sfix63_En58
  wire signed [61:0] Add12_out1;  // sfix62_En58
  wire signed [81:0] Gain12_mul_temp;  // sfix82_En78
  wire signed [80:0] Gain12_cast;  // sfix81_En78
  wire signed [61:0] Gain12_out1;  // sfix62_En58
  reg signed [61:0] Gain12_out1_1;  // sfix62_En58
  reg signed [61:0] Delay19_out1;  // sfix62_En58
  wire signed [64:0] Add13_add_cast;  // sfix65_En60
  wire signed [64:0] Add13_add_cast_1;  // sfix65_En60
  wire signed [64:0] Add13_add_temp;  // sfix65_En60
  wire signed [63:0] Add13_add_cast_2;  // sfix64_En60
  wire signed [64:0] Add13_add_cast_3;  // sfix65_En60
  wire signed [64:0] Add13_add_cast_4;  // sfix65_En60
  wire signed [64:0] Add13_add_temp_1;  // sfix65_En60
  wire signed [63:0] Add13_out1;  // sfix64_En60
  wire signed [83:0] Gain13_mul_temp;  // sfix84_En80
  wire signed [82:0] Gain13_cast;  // sfix83_En80
  wire signed [63:0] Gain13_out1;  // sfix64_En60
  reg signed [63:0] Gain13_out1_1;  // sfix64_En60
  reg signed [63:0] Delay21_out1;  // sfix64_En60
  wire signed [66:0] Add14_add_cast;  // sfix67_En62
  wire signed [66:0] Add14_add_cast_1;  // sfix67_En62
  wire signed [66:0] Add14_add_temp;  // sfix67_En62
  wire signed [65:0] Add14_add_cast_2;  // sfix66_En62
  wire signed [66:0] Add14_add_cast_3;  // sfix67_En62
  wire signed [66:0] Add14_add_cast_4;  // sfix67_En62
  wire signed [66:0] Add14_add_temp_1;  // sfix67_En62
  wire signed [65:0] Add14_out1;  // sfix66_En62
  wire signed [85:0] Gain14_mul_temp;  // sfix86_En82
  wire signed [84:0] Gain14_cast;  // sfix85_En82
  wire signed [65:0] Gain14_out1;  // sfix66_En62
  reg signed [65:0] Gain14_out1_1;  // sfix66_En62
  reg signed [65:0] Delay23_out1;  // sfix66_En62
  wire signed [67:0] Add15_add_cast;  // sfix68_En63
  wire signed [67:0] Add15_add_cast_1;  // sfix68_En63
  wire signed [67:0] Add15_add_temp;  // sfix68_En63
  wire signed [66:0] Add15_add_cast_2;  // sfix67_En63
  wire signed [67:0] Add15_add_cast_3;  // sfix68_En63
  wire signed [67:0] Add15_add_cast_4;  // sfix68_En63
  wire signed [67:0] Add15_add_temp_1;  // sfix68_En63
  wire signed [66:0] Add15_out1;  // sfix67_En63
  wire signed [86:0] Gain15_mul_temp;  // sfix87_En83
  wire signed [85:0] Gain15_cast;  // sfix86_En83
  wire signed [66:0] Gain15_out1;  // sfix67_En63
  reg signed [66:0] Gain15_out1_1;  // sfix67_En63
  reg signed [66:0] Delay33_out1;  // sfix67_En63
  wire signed [67:0] Add16_add_cast;  // sfix68_En63
  wire signed [67:0] Add16_add_cast_1;  // sfix68_En63
  wire signed [67:0] Add16_add_temp;  // sfix68_En63
  wire signed [66:0] Add16_add_cast_2;  // sfix67_En63
  wire signed [67:0] Add16_add_cast_3;  // sfix68_En63
  wire signed [67:0] Add16_add_cast_4;  // sfix68_En63
  wire signed [67:0] Add16_add_temp_1;  // sfix68_En63
  wire signed [66:0] Add16_out1;  // sfix67_En63
  wire signed [86:0] Gain16_mul_temp;  // sfix87_En83
  wire signed [85:0] Gain16_cast;  // sfix86_En83
  wire signed [18:0] Gain16_out1;  // sfix19_En14


  always @(posedge clk)
    begin : Delay_rsvd_process
      if (enb_1_48_0) begin
        Delay_out1 <= In1;
      end
    end



  always @(posedge clk)
    begin : Delay1_process
      if (enb_1_48_0) begin
        Delay1_out1 <= Delay_out1;
      end
    end



  assign Add_add_cast = ((In1[48] == 1'b0) && (In1[47:6] == 42'h3FFFFFFFFFF) ? 43'sh3FFFFFFFFFF :
              In1[48:6] + $signed({1'b0, In1[5]}));
  assign Add_add_cast_1 = {Add_add_cast[42], Add_add_cast};
  assign Add_add_cast_2 = ((Delay_out1[48] == 1'b0) && (Delay_out1[47:6] == 42'h3FFFFFFFFFF) ? 
    43'sh3FFFFFFFFFF :
              Delay_out1[48:6] + $signed({1'b0, Delay_out1[5]}));
  assign Add_add_cast_3 = {Add_add_cast_2[42], Add_add_cast_2};
  assign Add_add_temp = Add_add_cast_1 + Add_add_cast_3;
  assign Add_add_cast_4 = ((Add_add_temp[43] == 1'b0) && (Add_add_temp[42] != 1'b0) ? 43'sh3FFFFFFFFFF :
              ((Add_add_temp[43] == 1'b1) && (Add_add_temp[42] != 1'b1) ? 43'sh40000000000 :
              $signed(Add_add_temp[42:0])));
  assign Add_add_cast_5 = {Add_add_cast_4[42], Add_add_cast_4};
  assign Add_add_cast_6 = ((Delay1_out1[48] == 1'b0) && (Delay1_out1[47:6] == 42'h3FFFFFFFFFF) ? 
    43'sh3FFFFFFFFFF :
              Delay1_out1[48:6] + $signed({1'b0, Delay1_out1[5]}));
  assign Add_add_cast_7 = {Add_add_cast_6[42], Add_add_cast_6};
  assign Add_add_temp_1 = Add_add_cast_5 + Add_add_cast_7;
  assign Add_out1 = ((Add_add_temp_1[43] == 1'b0) && (Add_add_temp_1[42] != 1'b0) ? 43'sh3FFFFFFFFFF :
              ((Add_add_temp_1[43] == 1'b1) && (Add_add_temp_1[42] != 1'b1) ? 43'sh40000000000 :
              $signed(Add_add_temp_1[42:0])));



  assign Gain_mul_temp = 20'sb01010101010101010101 * Add_out1;
  assign Gain_cast = Gain_mul_temp[61:0];
  assign Gain_out1 = ({Gain_cast[61], Gain_cast[61:20]}) + $signed({1'b0, Gain_cast[19]});



  always @(posedge clk)
    begin : delayMatch_process
      if (enb_1_48_0) begin
        Gain_out1_1 <= Gain_out1;
      end
    end



  always @(posedge clk)
    begin : Delay3_process
      if (enb_1_48_0) begin
        Delay3_out1 <= Gain_out1_1;
      end
    end



  assign Add1_add_cast = {Gain_out1[42], {Gain_out1, 2'b00}};
  assign Add1_add_cast_1 = {Gain_out1_1[42], {Gain_out1_1, 2'b00}};
  assign Add1_add_temp = Add1_add_cast + Add1_add_cast_1;
  assign Add1_add_cast_2 = ((Add1_add_temp[45] == 1'b0) && (Add1_add_temp[44] != 1'b0) ? 45'sh0FFFFFFFFFFF :
              ((Add1_add_temp[45] == 1'b1) && (Add1_add_temp[44] != 1'b1) ? 45'sh100000000000 :
              $signed(Add1_add_temp[44:0])));
  assign Add1_add_cast_3 = {Add1_add_cast_2[44], Add1_add_cast_2};
  assign Add1_add_cast_4 = {Delay3_out1[42], {Delay3_out1, 2'b00}};
  assign Add1_add_temp_1 = Add1_add_cast_3 + Add1_add_cast_4;
  assign Add1_out1 = ((Add1_add_temp_1[45] == 1'b0) && (Add1_add_temp_1[44] != 1'b0) ? 45'sh0FFFFFFFFFFF :
              ((Add1_add_temp_1[45] == 1'b1) && (Add1_add_temp_1[44] != 1'b1) ? 45'sh100000000000 :
              $signed(Add1_add_temp_1[44:0])));



  assign Gain1_mul_temp = 20'sb01010101010101010101 * Add1_out1;
  assign Gain1_cast = Gain1_mul_temp[63:0];
  assign Gain1_out1 = ({Gain1_cast[63], Gain1_cast[63:20]}) + $signed({1'b0, Gain1_cast[19]});



  always @(posedge clk)
    begin : delayMatch1_process
      if (enb_1_48_0) begin
        Gain1_out1_1 <= Gain1_out1;
      end
    end



  always @(posedge clk)
    begin : Delay5_process
      if (enb_1_48_0) begin
        Delay5_out1 <= Gain1_out1_1;
      end
    end



  assign Add2_add_cast = {Gain1_out1[44], {Gain1_out1, 2'b00}};
  assign Add2_add_cast_1 = {Gain1_out1_1[44], {Gain1_out1_1, 2'b00}};
  assign Add2_add_temp = Add2_add_cast + Add2_add_cast_1;
  assign Add2_add_cast_2 = ((Add2_add_temp[47] == 1'b0) && (Add2_add_temp[46] != 1'b0) ? 47'sh3FFFFFFFFFFF :
              ((Add2_add_temp[47] == 1'b1) && (Add2_add_temp[46] != 1'b1) ? 47'sh400000000000 :
              $signed(Add2_add_temp[46:0])));
  assign Add2_add_cast_3 = {Add2_add_cast_2[46], Add2_add_cast_2};
  assign Add2_add_cast_4 = {Delay5_out1[44], {Delay5_out1, 2'b00}};
  assign Add2_add_temp_1 = Add2_add_cast_3 + Add2_add_cast_4;
  assign Add2_out1 = ((Add2_add_temp_1[47] == 1'b0) && (Add2_add_temp_1[46] != 1'b0) ? 47'sh3FFFFFFFFFFF :
              ((Add2_add_temp_1[47] == 1'b1) && (Add2_add_temp_1[46] != 1'b1) ? 47'sh400000000000 :
              $signed(Add2_add_temp_1[46:0])));



  assign Gain2_mul_temp = 20'sb01010101010101010101 * Add2_out1;
  assign Gain2_cast = Gain2_mul_temp[65:0];
  assign Gain2_out1 = ({Gain2_cast[65], Gain2_cast[65:20]}) + $signed({1'b0, Gain2_cast[19]});



  always @(posedge clk)
    begin : delayMatch2_process
      if (enb_1_48_0) begin
        Gain2_out1_1 <= Gain2_out1;
      end
    end



  always @(posedge clk)
    begin : Delay7_process
      if (enb_1_48_0) begin
        Delay7_out1 <= Gain2_out1_1;
      end
    end



  assign Add3_add_cast = {Gain2_out1[46], {Gain2_out1, 1'b0}};
  assign Add3_add_cast_1 = {Gain2_out1_1[46], {Gain2_out1_1, 1'b0}};
  assign Add3_add_temp = Add3_add_cast + Add3_add_cast_1;
  assign Add3_add_cast_2 = ((Add3_add_temp[48] == 1'b0) && (Add3_add_temp[47] != 1'b0) ? 48'sh7FFFFFFFFFFF :
              ((Add3_add_temp[48] == 1'b1) && (Add3_add_temp[47] != 1'b1) ? 48'sh800000000000 :
              $signed(Add3_add_temp[47:0])));
  assign Add3_add_cast_3 = {Add3_add_cast_2[47], Add3_add_cast_2};
  assign Add3_add_cast_4 = {Delay7_out1[46], {Delay7_out1, 1'b0}};
  assign Add3_add_temp_1 = Add3_add_cast_3 + Add3_add_cast_4;
  assign Add3_out1 = ((Add3_add_temp_1[48] == 1'b0) && (Add3_add_temp_1[47] != 1'b0) ? 48'sh7FFFFFFFFFFF :
              ((Add3_add_temp_1[48] == 1'b1) && (Add3_add_temp_1[47] != 1'b1) ? 48'sh800000000000 :
              $signed(Add3_add_temp_1[47:0])));



  assign Gain3_mul_temp = 20'sb01010101010101010101 * Add3_out1;
  assign Gain3_cast = Gain3_mul_temp[66:0];
  assign Gain3_out1 = ({Gain3_cast[66], Gain3_cast[66:20]}) + $signed({1'b0, Gain3_cast[19]});



  always @(posedge clk)
    begin : delayMatch3_process
      if (enb_1_48_0) begin
        Gain3_out1_1 <= Gain3_out1;
      end
    end



  always @(posedge clk)
    begin : Delay9_process
      if (enb_1_48_0) begin
        Delay9_out1 <= Gain3_out1_1;
      end
    end



  assign Add4_add_cast = {Gain3_out1[47], {Gain3_out1, 2'b00}};
  assign Add4_add_cast_1 = {Gain3_out1_1[47], {Gain3_out1_1, 2'b00}};
  assign Add4_add_temp = Add4_add_cast + Add4_add_cast_1;
  assign Add4_add_cast_2 = ((Add4_add_temp[50] == 1'b0) && (Add4_add_temp[49] != 1'b0) ? 50'sh1FFFFFFFFFFFF :
              ((Add4_add_temp[50] == 1'b1) && (Add4_add_temp[49] != 1'b1) ? 50'sh2000000000000 :
              $signed(Add4_add_temp[49:0])));
  assign Add4_add_cast_3 = {Add4_add_cast_2[49], Add4_add_cast_2};
  assign Add4_add_cast_4 = {Delay9_out1[47], {Delay9_out1, 2'b00}};
  assign Add4_add_temp_1 = Add4_add_cast_3 + Add4_add_cast_4;
  assign Add4_out1 = ((Add4_add_temp_1[50] == 1'b0) && (Add4_add_temp_1[49] != 1'b0) ? 50'sh1FFFFFFFFFFFF :
              ((Add4_add_temp_1[50] == 1'b1) && (Add4_add_temp_1[49] != 1'b1) ? 50'sh2000000000000 :
              $signed(Add4_add_temp_1[49:0])));



  assign Gain4_mul_temp = 20'sb01010101010101010101 * Add4_out1;
  assign Gain4_cast = Gain4_mul_temp[68:0];
  assign Gain4_out1 = ({Gain4_cast[68], Gain4_cast[68:20]}) + $signed({1'b0, Gain4_cast[19]});



  always @(posedge clk)
    begin : delayMatch4_process
      if (enb_1_48_0) begin
        Gain4_out1_1 <= Gain4_out1;
      end
    end



  always @(posedge clk)
    begin : Delay11_process
      if (enb_1_48_0) begin
        Delay11_out1 <= Gain4_out1_1;
      end
    end



  assign Add5_add_cast = {Gain4_out1[49], {Gain4_out1, 1'b0}};
  assign Add5_add_cast_1 = {Gain4_out1_1[49], {Gain4_out1_1, 1'b0}};
  assign Add5_add_temp = Add5_add_cast + Add5_add_cast_1;
  assign Add5_add_cast_2 = ((Add5_add_temp[51] == 1'b0) && (Add5_add_temp[50] != 1'b0) ? 51'sh3FFFFFFFFFFFF :
              ((Add5_add_temp[51] == 1'b1) && (Add5_add_temp[50] != 1'b1) ? 51'sh4000000000000 :
              $signed(Add5_add_temp[50:0])));
  assign Add5_add_cast_3 = {Add5_add_cast_2[50], Add5_add_cast_2};
  assign Add5_add_cast_4 = {Delay11_out1[49], {Delay11_out1, 1'b0}};
  assign Add5_add_temp_1 = Add5_add_cast_3 + Add5_add_cast_4;
  assign Add5_out1 = ((Add5_add_temp_1[51] == 1'b0) && (Add5_add_temp_1[50] != 1'b0) ? 51'sh3FFFFFFFFFFFF :
              ((Add5_add_temp_1[51] == 1'b1) && (Add5_add_temp_1[50] != 1'b1) ? 51'sh4000000000000 :
              $signed(Add5_add_temp_1[50:0])));



  assign Gain5_mul_temp = 20'sb01010101010101010101 * Add5_out1;
  assign Gain5_cast = Gain5_mul_temp[69:0];
  assign Gain5_out1 = ({Gain5_cast[69], Gain5_cast[69:20]}) + $signed({1'b0, Gain5_cast[19]});



  always @(posedge clk)
    begin : delayMatch5_process
      if (enb_1_48_0) begin
        Gain5_out1_1 <= Gain5_out1;
      end
    end



  always @(posedge clk)
    begin : Delay13_process
      if (enb_1_48_0) begin
        Delay13_out1 <= Gain5_out1_1;
      end
    end



  assign Add6_add_cast = {Gain5_out1[50], {Gain5_out1, 2'b00}};
  assign Add6_add_cast_1 = {Gain5_out1_1[50], {Gain5_out1_1, 2'b00}};
  assign Add6_add_temp = Add6_add_cast + Add6_add_cast_1;
  assign Add6_add_cast_2 = ((Add6_add_temp[53] == 1'b0) && (Add6_add_temp[52] != 1'b0) ? 53'sh0FFFFFFFFFFFFF :
              ((Add6_add_temp[53] == 1'b1) && (Add6_add_temp[52] != 1'b1) ? 53'sh10000000000000 :
              $signed(Add6_add_temp[52:0])));
  assign Add6_add_cast_3 = {Add6_add_cast_2[52], Add6_add_cast_2};
  assign Add6_add_cast_4 = {Delay13_out1[50], {Delay13_out1, 2'b00}};
  assign Add6_add_temp_1 = Add6_add_cast_3 + Add6_add_cast_4;
  assign Add6_out1 = ((Add6_add_temp_1[53] == 1'b0) && (Add6_add_temp_1[52] != 1'b0) ? 53'sh0FFFFFFFFFFFFF :
              ((Add6_add_temp_1[53] == 1'b1) && (Add6_add_temp_1[52] != 1'b1) ? 53'sh10000000000000 :
              $signed(Add6_add_temp_1[52:0])));



  assign Gain6_mul_temp = 20'sb01010101010101010101 * Add6_out1;
  assign Gain6_cast = Gain6_mul_temp[71:0];
  assign Gain6_out1 = ({Gain6_cast[71], Gain6_cast[71:20]}) + $signed({1'b0, Gain6_cast[19]});



  always @(posedge clk)
    begin : delayMatch6_process
      if (enb_1_48_0) begin
        Gain6_out1_1 <= Gain6_out1;
      end
    end



  always @(posedge clk)
    begin : Delay15_process
      if (enb_1_48_0) begin
        Delay15_out1 <= Gain6_out1_1;
      end
    end



  assign Add7_add_cast = {Gain6_out1[52], {Gain6_out1, 1'b0}};
  assign Add7_add_cast_1 = {Gain6_out1_1[52], {Gain6_out1_1, 1'b0}};
  assign Add7_add_temp = Add7_add_cast + Add7_add_cast_1;
  assign Add7_add_cast_2 = ((Add7_add_temp[54] == 1'b0) && (Add7_add_temp[53] != 1'b0) ? 54'sh1FFFFFFFFFFFFF :
              ((Add7_add_temp[54] == 1'b1) && (Add7_add_temp[53] != 1'b1) ? 54'sh20000000000000 :
              $signed(Add7_add_temp[53:0])));
  assign Add7_add_cast_3 = {Add7_add_cast_2[53], Add7_add_cast_2};
  assign Add7_add_cast_4 = {Delay15_out1[52], {Delay15_out1, 1'b0}};
  assign Add7_add_temp_1 = Add7_add_cast_3 + Add7_add_cast_4;
  assign Add7_out1 = ((Add7_add_temp_1[54] == 1'b0) && (Add7_add_temp_1[53] != 1'b0) ? 54'sh1FFFFFFFFFFFFF :
              ((Add7_add_temp_1[54] == 1'b1) && (Add7_add_temp_1[53] != 1'b1) ? 54'sh20000000000000 :
              $signed(Add7_add_temp_1[53:0])));



  assign Gain7_mul_temp = 20'sb01010101010101010101 * Add7_out1;
  assign Gain7_cast = Gain7_mul_temp[72:0];
  assign Gain7_out1 = ({Gain7_cast[72], Gain7_cast[72:20]}) + $signed({1'b0, Gain7_cast[19]});



  always @(posedge clk)
    begin : delayMatch7_process
      if (enb_1_48_0) begin
        Gain7_out1_1 <= Gain7_out1;
      end
    end



  always @(posedge clk)
    begin : Delay17_process
      if (enb_1_48_0) begin
        Delay17_out1 <= Gain7_out1_1;
      end
    end



  assign Add8_add_cast = {Gain7_out1[53], {Gain7_out1, 2'b00}};
  assign Add8_add_cast_1 = {Gain7_out1_1[53], {Gain7_out1_1, 2'b00}};
  assign Add8_add_temp = Add8_add_cast + Add8_add_cast_1;
  assign Add8_add_cast_2 = {Add8_add_temp[56], Add8_add_temp};
  assign Add8_add_cast_3 = {Delay17_out1[53], {Delay17_out1, 2'b00}};
  assign Add8_add_cast_4 = {Add8_add_cast_3[56], Add8_add_cast_3};
  assign Add8_add_temp_1 = Add8_add_cast_2 + Add8_add_cast_4;
  assign Add8_out1 = ((Add8_add_temp_1[57] == 1'b0) && (Add8_add_temp_1[56] != 1'b0) ? 57'sh0FFFFFFFFFFFFFF :
              ((Add8_add_temp_1[57] == 1'b1) && (Add8_add_temp_1[56] != 1'b1) ? 57'sh100000000000000 :
              $signed(Add8_add_temp_1[56:0])));



  assign Gain8_mul_temp = 20'sb01010101010101010101 * Add8_out1;
  assign Gain8_cast = Gain8_mul_temp[75:0];
  assign Gain8_out1 = ({Gain8_cast[75], Gain8_cast[75:20]}) + $signed({1'b0, Gain8_cast[19]});



  always @(posedge clk)
    begin : delayMatch8_process
      if (enb_1_48_0) begin
        Gain8_out1_1 <= Gain8_out1;
      end
    end



  always @(posedge clk)
    begin : Delay25_process
      if (enb_1_48_0) begin
        Delay25_out1 <= Gain8_out1_1;
      end
    end



  assign Add9_add_cast = {Gain8_out1[56], {Gain8_out1, 2'b00}};
  assign Add9_add_cast_1 = {Gain8_out1_1[56], {Gain8_out1_1, 2'b00}};
  assign Add9_add_temp = Add9_add_cast + Add9_add_cast_1;
  assign Add9_add_cast_2 = ((Add9_add_temp[59] == 1'b0) && (Add9_add_temp[58] != 1'b0) ? 59'sh3FFFFFFFFFFFFFF 
    :
              ((Add9_add_temp[59] == 1'b1) && (Add9_add_temp[58] != 1'b1) ? 59'sh400000000000000 :
              $signed(Add9_add_temp[58:0])));
  assign Add9_add_cast_3 = {Add9_add_cast_2[58], Add9_add_cast_2};
  assign Add9_add_cast_4 = {Delay25_out1[56], {Delay25_out1, 2'b00}};
  assign Add9_add_temp_1 = Add9_add_cast_3 + Add9_add_cast_4;
  assign Add9_out1 = ((Add9_add_temp_1[59] == 1'b0) && (Add9_add_temp_1[58] != 1'b0) ? 59'sh3FFFFFFFFFFFFFF :
              ((Add9_add_temp_1[59] == 1'b1) && (Add9_add_temp_1[58] != 1'b1) ? 59'sh400000000000000 :
              $signed(Add9_add_temp_1[58:0])));



  assign Gain9_mul_temp = 20'sb01010101010101010101 * Add9_out1;
  assign Gain9_cast = Gain9_mul_temp[77:0];
  assign Gain9_out1 = ({Gain9_cast[77], Gain9_cast[77:20]}) + $signed({1'b0, Gain9_cast[19]});



  always @(posedge clk)
    begin : delayMatch9_process
      if (enb_1_48_0) begin
        Gain9_out1_1 <= Gain9_out1;
      end
    end



  always @(posedge clk)
    begin : Delay27_process
      if (enb_1_48_0) begin
        Delay27_out1 <= Gain9_out1_1;
      end
    end



  assign Add10_add_cast = ((Gain9_out1[58] == 1'b0) && (Gain9_out1[57] != 1'b0) ? 59'sh3FFFFFFFFFFFFFF :
              ((Gain9_out1[58] == 1'b1) && (Gain9_out1[57] != 1'b1) ? 59'sh400000000000000 :
              {Gain9_out1[57:0], 1'b0}));
  assign Add10_add_cast_1 = {Add10_add_cast[58], Add10_add_cast};
  assign Add10_add_cast_2 = ((Gain9_out1_1[58] == 1'b0) && (Gain9_out1_1[57] != 1'b0) ? 59'sh3FFFFFFFFFFFFFF :
              ((Gain9_out1_1[58] == 1'b1) && (Gain9_out1_1[57] != 1'b1) ? 59'sh400000000000000 :
              {Gain9_out1_1[57:0], 1'b0}));
  assign Add10_add_cast_3 = {Add10_add_cast_2[58], Add10_add_cast_2};
  assign Add10_add_temp = Add10_add_cast_1 + Add10_add_cast_3;
  assign Add10_add_cast_4 = ((Add10_add_temp[59] == 1'b0) && (Add10_add_temp[58] != 1'b0) ? 
    59'sh3FFFFFFFFFFFFFF :
              ((Add10_add_temp[59] == 1'b1) && (Add10_add_temp[58] != 1'b1) ? 59'sh400000000000000 :
              $signed(Add10_add_temp[58:0])));
  assign Add10_add_cast_5 = {Add10_add_cast_4[58], Add10_add_cast_4};
  assign Add10_add_cast_6 = ((Delay27_out1[58] == 1'b0) && (Delay27_out1[57] != 1'b0) ? 59'sh3FFFFFFFFFFFFFF :
              ((Delay27_out1[58] == 1'b1) && (Delay27_out1[57] != 1'b1) ? 59'sh400000000000000 :
              {Delay27_out1[57:0], 1'b0}));
  assign Add10_add_cast_7 = {Add10_add_cast_6[58], Add10_add_cast_6};
  assign Add10_add_temp_1 = Add10_add_cast_5 + Add10_add_cast_7;
  assign Add10_out1 = ((Add10_add_temp_1[59] == 1'b0) && (Add10_add_temp_1[58] != 1'b0) ? 
    59'sh3FFFFFFFFFFFFFF :
              ((Add10_add_temp_1[59] == 1'b1) && (Add10_add_temp_1[58] != 1'b1) ? 59'sh400000000000000 :
              $signed(Add10_add_temp_1[58:0])));



  assign Gain10_mul_temp = 20'sb01010101010101010101 * Add10_out1;
  assign Gain10_cast = Gain10_mul_temp[77:0];
  assign Gain10_out1 = ({Gain10_cast[77], Gain10_cast[77:20]}) + $signed({1'b0, Gain10_cast[19]});



  always @(posedge clk)
    begin : delayMatch10_process
      if (enb_1_48_0) begin
        Gain10_out1_1 <= Gain10_out1;
      end
    end



  always @(posedge clk)
    begin : Delay29_process
      if (enb_1_48_0) begin
        Delay29_out1 <= Gain10_out1_1;
      end
    end



  assign Add11_add_cast = {Gain10_out1[58], {Gain10_out1, 2'b00}};
  assign Add11_add_cast_1 = {Gain10_out1_1[58], {Gain10_out1_1, 2'b00}};
  assign Add11_add_temp = Add11_add_cast + Add11_add_cast_1;
  assign Add11_add_cast_2 = ((Add11_add_temp[61] == 1'b0) && (Add11_add_temp[60] != 1'b0) ? 
    61'sh0FFFFFFFFFFFFFFF :
              ((Add11_add_temp[61] == 1'b1) && (Add11_add_temp[60] != 1'b1) ? 61'sh1000000000000000 :
              $signed(Add11_add_temp[60:0])));
  assign Add11_add_cast_3 = {Add11_add_cast_2[60], Add11_add_cast_2};
  assign Add11_add_cast_4 = {Delay29_out1[58], {Delay29_out1, 2'b00}};
  assign Add11_add_temp_1 = Add11_add_cast_3 + Add11_add_cast_4;
  assign Add11_out1 = ((Add11_add_temp_1[61] == 1'b0) && (Add11_add_temp_1[60] != 1'b0) ? 
    61'sh0FFFFFFFFFFFFFFF :
              ((Add11_add_temp_1[61] == 1'b1) && (Add11_add_temp_1[60] != 1'b1) ? 61'sh1000000000000000 :
              $signed(Add11_add_temp_1[60:0])));



  assign Gain11_mul_temp = 20'sb01010101010101010101 * Add11_out1;
  assign Gain11_cast = Gain11_mul_temp[79:0];
  assign Gain11_out1 = ({Gain11_cast[79], Gain11_cast[79:20]}) + $signed({1'b0, Gain11_cast[19]});



  always @(posedge clk)
    begin : delayMatch11_process
      if (enb_1_48_0) begin
        Gain11_out1_1 <= Gain11_out1;
      end
    end



  always @(posedge clk)
    begin : Delay31_process
      if (enb_1_48_0) begin
        Delay31_out1 <= Gain11_out1_1;
      end
    end



  assign Add12_add_cast = {Gain11_out1[60], {Gain11_out1, 1'b0}};
  assign Add12_add_cast_1 = {Gain11_out1_1[60], {Gain11_out1_1, 1'b0}};
  assign Add12_add_temp = Add12_add_cast + Add12_add_cast_1;
  assign Add12_add_cast_2 = ((Add12_add_temp[62] == 1'b0) && (Add12_add_temp[61] != 1'b0) ? 
    62'sh1FFFFFFFFFFFFFFF :
              ((Add12_add_temp[62] == 1'b1) && (Add12_add_temp[61] != 1'b1) ? 62'sh2000000000000000 :
              $signed(Add12_add_temp[61:0])));
  assign Add12_add_cast_3 = {Add12_add_cast_2[61], Add12_add_cast_2};
  assign Add12_add_cast_4 = {Delay31_out1[60], {Delay31_out1, 1'b0}};
  assign Add12_add_temp_1 = Add12_add_cast_3 + Add12_add_cast_4;
  assign Add12_out1 = ((Add12_add_temp_1[62] == 1'b0) && (Add12_add_temp_1[61] != 1'b0) ? 
    62'sh1FFFFFFFFFFFFFFF :
              ((Add12_add_temp_1[62] == 1'b1) && (Add12_add_temp_1[61] != 1'b1) ? 62'sh2000000000000000 :
              $signed(Add12_add_temp_1[61:0])));



  assign Gain12_mul_temp = 20'sb01010101010101010101 * Add12_out1;
  assign Gain12_cast = Gain12_mul_temp[80:0];
  assign Gain12_out1 = ({Gain12_cast[80], Gain12_cast[80:20]}) + $signed({1'b0, Gain12_cast[19]});



  always @(posedge clk)
    begin : delayMatch12_process
      if (enb_1_48_0) begin
        Gain12_out1_1 <= Gain12_out1;
      end
    end



  always @(posedge clk)
    begin : Delay19_process
      if (enb_1_48_0) begin
        Delay19_out1 <= Gain12_out1_1;
      end
    end



  assign Add13_add_cast = {Gain12_out1[61], {Gain12_out1, 2'b00}};
  assign Add13_add_cast_1 = {Gain12_out1_1[61], {Gain12_out1_1, 2'b00}};
  assign Add13_add_temp = Add13_add_cast + Add13_add_cast_1;
  assign Add13_add_cast_2 = ((Add13_add_temp[64] == 1'b0) && (Add13_add_temp[63] != 1'b0) ? 
    64'sh7FFFFFFFFFFFFFFF :
              ((Add13_add_temp[64] == 1'b1) && (Add13_add_temp[63] != 1'b1) ? 64'sh8000000000000000 :
              $signed(Add13_add_temp[63:0])));
  assign Add13_add_cast_3 = {Add13_add_cast_2[63], Add13_add_cast_2};
  assign Add13_add_cast_4 = {Delay19_out1[61], {Delay19_out1, 2'b00}};
  assign Add13_add_temp_1 = Add13_add_cast_3 + Add13_add_cast_4;
  assign Add13_out1 = ((Add13_add_temp_1[64] == 1'b0) && (Add13_add_temp_1[63] != 1'b0) ? 
    64'sh7FFFFFFFFFFFFFFF :
              ((Add13_add_temp_1[64] == 1'b1) && (Add13_add_temp_1[63] != 1'b1) ? 64'sh8000000000000000 :
              $signed(Add13_add_temp_1[63:0])));



  assign Gain13_mul_temp = 20'sb01010101010101010101 * Add13_out1;
  assign Gain13_cast = Gain13_mul_temp[82:0];
  assign Gain13_out1 = ({Gain13_cast[82], Gain13_cast[82:20]}) + $signed({1'b0, Gain13_cast[19]});



  always @(posedge clk)
    begin : delayMatch13_process
      if (enb_1_48_0) begin
        Gain13_out1_1 <= Gain13_out1;
      end
    end



  always @(posedge clk)
    begin : Delay21_process
      if (enb_1_48_0) begin
        Delay21_out1 <= Gain13_out1_1;
      end
    end



  assign Add14_add_cast = {Gain13_out1[63], {Gain13_out1, 2'b00}};
  assign Add14_add_cast_1 = {Gain13_out1_1[63], {Gain13_out1_1, 2'b00}};
  assign Add14_add_temp = Add14_add_cast + Add14_add_cast_1;
  assign Add14_add_cast_2 = ((Add14_add_temp[66] == 1'b0) && (Add14_add_temp[65] != 1'b0) ? 
    66'sh1FFFFFFFFFFFFFFFF :
              ((Add14_add_temp[66] == 1'b1) && (Add14_add_temp[65] != 1'b1) ? 66'sh20000000000000000 :
              $signed(Add14_add_temp[65:0])));
  assign Add14_add_cast_3 = {Add14_add_cast_2[65], Add14_add_cast_2};
  assign Add14_add_cast_4 = {Delay21_out1[63], {Delay21_out1, 2'b00}};
  assign Add14_add_temp_1 = Add14_add_cast_3 + Add14_add_cast_4;
  assign Add14_out1 = ((Add14_add_temp_1[66] == 1'b0) && (Add14_add_temp_1[65] != 1'b0) ? 
    66'sh1FFFFFFFFFFFFFFFF :
              ((Add14_add_temp_1[66] == 1'b1) && (Add14_add_temp_1[65] != 1'b1) ? 66'sh20000000000000000 :
              $signed(Add14_add_temp_1[65:0])));



  assign Gain14_mul_temp = 20'sb01010101010101010101 * Add14_out1;
  assign Gain14_cast = Gain14_mul_temp[84:0];
  assign Gain14_out1 = ({Gain14_cast[84], Gain14_cast[84:20]}) + $signed({1'b0, Gain14_cast[19]});



  always @(posedge clk)
    begin : delayMatch14_process
      if (enb_1_48_0) begin
        Gain14_out1_1 <= Gain14_out1;
      end
    end



  always @(posedge clk)
    begin : Delay23_process
      if (enb_1_48_0) begin
        Delay23_out1 <= Gain14_out1_1;
      end
    end



  assign Add15_add_cast = {Gain14_out1[65], {Gain14_out1, 1'b0}};
  assign Add15_add_cast_1 = {Gain14_out1_1[65], {Gain14_out1_1, 1'b0}};
  assign Add15_add_temp = Add15_add_cast + Add15_add_cast_1;
  assign Add15_add_cast_2 = ((Add15_add_temp[67] == 1'b0) && (Add15_add_temp[66] != 1'b0) ? 
    67'sh3FFFFFFFFFFFFFFFF :
              ((Add15_add_temp[67] == 1'b1) && (Add15_add_temp[66] != 1'b1) ? 67'sh40000000000000000 :
              $signed(Add15_add_temp[66:0])));
  assign Add15_add_cast_3 = {Add15_add_cast_2[66], Add15_add_cast_2};
  assign Add15_add_cast_4 = {Delay23_out1[65], {Delay23_out1, 1'b0}};
  assign Add15_add_temp_1 = Add15_add_cast_3 + Add15_add_cast_4;
  assign Add15_out1 = ((Add15_add_temp_1[67] == 1'b0) && (Add15_add_temp_1[66] != 1'b0) ? 
    67'sh3FFFFFFFFFFFFFFFF :
              ((Add15_add_temp_1[67] == 1'b1) && (Add15_add_temp_1[66] != 1'b1) ? 67'sh40000000000000000 :
              $signed(Add15_add_temp_1[66:0])));



  assign Gain15_mul_temp = 20'sb01010101010101010101 * Add15_out1;
  assign Gain15_cast = Gain15_mul_temp[85:0];
  assign Gain15_out1 = ({Gain15_cast[85], Gain15_cast[85:20]}) + $signed({1'b0, Gain15_cast[19]});



  always @(posedge clk)
    begin : delayMatch15_process
      if (enb_1_48_0) begin
        Gain15_out1_1 <= Gain15_out1;
      end
    end



  always @(posedge clk)
    begin : Delay33_process
      if (enb_1_48_0) begin
        Delay33_out1 <= Gain15_out1_1;
      end
    end



  assign Add16_add_cast = {Gain15_out1[66], Gain15_out1};
  assign Add16_add_cast_1 = {Gain15_out1_1[66], Gain15_out1_1};
  assign Add16_add_temp = Add16_add_cast + Add16_add_cast_1;
  assign Add16_add_cast_2 = ((Add16_add_temp[67] == 1'b0) && (Add16_add_temp[66] != 1'b0) ? 
    67'sh3FFFFFFFFFFFFFFFF :
              ((Add16_add_temp[67] == 1'b1) && (Add16_add_temp[66] != 1'b1) ? 67'sh40000000000000000 :
              $signed(Add16_add_temp[66:0])));
  assign Add16_add_cast_3 = {Add16_add_cast_2[66], Add16_add_cast_2};
  assign Add16_add_cast_4 = {Delay33_out1[66], Delay33_out1};
  assign Add16_add_temp_1 = Add16_add_cast_3 + Add16_add_cast_4;
  assign Add16_out1 = ((Add16_add_temp_1[67] == 1'b0) && (Add16_add_temp_1[66] != 1'b0) ? 
    67'sh3FFFFFFFFFFFFFFFF :
              ((Add16_add_temp_1[67] == 1'b1) && (Add16_add_temp_1[66] != 1'b1) ? 67'sh40000000000000000 :
              $signed(Add16_add_temp_1[66:0])));



  assign Gain16_mul_temp = 20'sb01010101010101010101 * Add16_out1;
  assign Gain16_cast = Gain16_mul_temp[85:0];
  assign Gain16_out1 = ({{2{Gain16_cast[85]}}, Gain16_cast[85:69]}) + $signed({1'b0, Gain16_cast[68]});



  assign Out1 = Gain16_out1;

endmodule  // Third_Block_H3_z

