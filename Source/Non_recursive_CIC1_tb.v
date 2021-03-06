// -------------------------------------------------------------
// 
// File Name: F:\verilogTest\2nd\hdlsrc\NonCIC_Final\Non_recursive_CIC1_tb.v
// Created: 2022-03-05 12:52:37
// 
// Generated by MATLAB 9.9 and HDL Coder 3.17
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 6.94444e-05
// Target subsystem base rate: 0.000833333
// Explicit user oversample request: 12x
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        0.01
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// Out1                          ce_out        0.01
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Non_recursive_CIC1_tb
// Source Path: 
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Non_recursive_CIC1_tb;



  reg  clk;
  reg  reset_x;
  wire clk_enable;
  wire Out1_done;  // ufix1
  wire ce_out;
  wire Out1_done_enb;  // ufix1
  reg [8:0] Out1_addr;  // ufix9
  wire Out1_active;  // ufix1
  reg [12:0] Data_Type_Conversion2_out1_addr;  // ufix13
  wire Data_Type_Conversion2_out1_active;  // ufix1
  wire tb_enb;
  wire tb_enb_delay;
  reg [7:0] counter;  // ufix8
  wire phase_12_all;
  wire phase_12_valid;
  wire phase_12;
  wire Data_Type_Conversion2_out1_enb;  // ufix1
  wire [12:0] Data_Type_Conversion2_out1_addr_delay_1;  // ufix13
  reg signed [31:0] fp_In1;  // sfix32
  reg signed [18:0] rawData_In1;  // sfix19_En14
  reg signed [31:0] status_In1;  // sfix32
  reg signed [18:0] holdData_In1;  // sfix19_En14
  reg signed [18:0] In1_offset;  // sfix19_En14
  wire signed [18:0] In1;  // sfix19_En14
  wire snkDone;
  wire snkDonen;
  wire resetn;
  wire notDone;
  wire signed [18:0] Out1;  // sfix19_En14
  wire Out1_enb;  // ufix1
  wire Out1_lastAddr;  // ufix1
  reg  check1_done;  // ufix1
  wire [8:0] Out1_addr_delay_1;  // ufix9
  reg signed [31:0] fp_Out1_expected;  // sfix32
  reg signed [18:0] Out1_expected;  // sfix19_En14
  reg signed [31:0] status_Out1_expected;  // sfix32
  reg signed [18:0] Out1_ref_hold;  // sfix19_En14
  wire signed [18:0] Out1_refTmp;  // sfix19_En14
  wire signed [18:0] Out1_ref;  // sfix19_En14
  reg  Out1_testFailure;  // ufix1
  wire testFailure;  // ufix1


  assign Out1_done_enb = Out1_done & ce_out;



  assign Out1_active = Out1_addr != 9'b110010000;



  assign Data_Type_Conversion2_out1_active = Data_Type_Conversion2_out1_addr != 13'b1001011000000;



  assign tb_enb_delay = tb_enb;

  // Count limited, Unsigned Counter
  //  initial value   = 1
  //  step value      = 1
  //  count to value  = 143
  always @(posedge clk)
    begin : slow_clock_enable_process
      if (reset_x == 1'b1) begin
        counter <= 8'b00000001;
      end
      else begin
        if (tb_enb_delay) begin
          if (counter >= 8'b10001111) begin
            counter <= 8'b00000000;
          end
          else begin
            counter <= counter + 8'b00000001;
          end
        end
      end
    end



  assign phase_12_all = counter % 12 == 1;

  assign phase_12_valid = phase_12_all & tb_enb;



  assign phase_12 = phase_12_valid;

  assign Data_Type_Conversion2_out1_enb = Data_Type_Conversion2_out1_active & (phase_12 & tb_enb);



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 4800
  always @(posedge clk)
    begin : DataTypeConversion2_process
      if (reset_x == 1'b1) begin
        Data_Type_Conversion2_out1_addr <= 13'b0000000000000;
      end
      else begin
        if (Data_Type_Conversion2_out1_enb) begin
          if (Data_Type_Conversion2_out1_addr >= 13'b1001011000000) begin
            Data_Type_Conversion2_out1_addr <= 13'b0000000000000;
          end
          else begin
            Data_Type_Conversion2_out1_addr <= Data_Type_Conversion2_out1_addr + 13'b0000000000001;
          end
        end
      end
    end



  assign #1 Data_Type_Conversion2_out1_addr_delay_1 = Data_Type_Conversion2_out1_addr;

  // Data source for In1
  initial
    begin : In1_fileread
      fp_In1 = $fopen("In1.dat", "r");
      status_In1 = $rewind(fp_In1);
    end

  always @(Data_Type_Conversion2_out1_addr_delay_1, phase_12_valid, tb_enb)
    begin
      if (tb_enb == 0) begin
        rawData_In1 <= 19'bx;
      end
      else if (phase_12_valid == 1) begin
        status_In1 = $fscanf(fp_In1, "%h", rawData_In1);
      end
    end

  // holdData reg for Data_Type_Conversion2_out1
  always @(posedge clk)
    begin : stimuli_Data_Type_Conversion2_out1
      if (reset_x) begin
        holdData_In1 <= 19'bx;
      end
      else begin
        holdData_In1 <= rawData_In1;
      end
    end

  always @(rawData_In1 or phase_12_valid)
    begin : stimuli_Data_Type_Conversion2_out1_1
      if (phase_12_valid == 1'b0) begin
        In1_offset <= holdData_In1;
      end
      else begin
        In1_offset <= rawData_In1;
      end
    end

  assign #2 In1 = In1_offset;

  assign snkDonen =  ~ snkDone;



  assign resetn =  ~ reset_x;



  assign tb_enb = resetn & snkDonen;



  assign notDone = tb_enb & snkDonen;



  assign #2 clk_enable = notDone;

  initial
    begin : reset_x_gen
      reset_x <= 1'b1;
      # (20);
      @ (posedge clk)
      # (2);
      reset_x <= 1'b0;
    end

  always 
    begin : clk_gen
      clk <= 1'b1;
      # (5);
      clk <= 1'b0;
      # (5);
      if (snkDone == 1'b1) begin
        clk <= 1'b1;
        # (5);
        clk <= 1'b0;
        # (5);
        $stop;
      end
    end

  Non_recursive_CIC1 u_Non_recursive_CIC1 (.clk(clk),
                                           .reset_x(reset_x),
                                           .clk_enable(clk_enable),
                                           .In1(In1),  // sfix19_En14
                                           .ce_out(ce_out),
                                           .Out1(Out1)  // sfix19_En14
                                           );

  assign Out1_enb = ce_out & Out1_active;



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 400
  always @(posedge clk)
    begin : c_3_process
      if (reset_x == 1'b1) begin
        Out1_addr <= 9'b000000000;
      end
      else begin
        if (Out1_enb) begin
          if (Out1_addr >= 9'b110010000) begin
            Out1_addr <= 9'b000000000;
          end
          else begin
            Out1_addr <= Out1_addr + 9'b000000001;
          end
        end
      end
    end



  assign Out1_lastAddr = Out1_addr >= 9'b110010000;



  assign Out1_done = Out1_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk)
    begin : checkDone_1
      if (reset_x) begin
        check1_done <= 0;
      end
      else begin
        if (Out1_done_enb) begin
          check1_done <= Out1_done;
        end
      end
    end

  assign snkDone = check1_done;

  assign #1 Out1_addr_delay_1 = Out1_addr;

  // Data source for Out1_expected
  initial
    begin : Out1_expected_fileread
      fp_Out1_expected = $fopen("Out1_expected.dat", "r");
      status_Out1_expected = $rewind(fp_Out1_expected);
    end

  always @(Out1_addr_delay_1,  tb_enb)
    begin
      if (tb_enb == 0) begin
        Out1_expected <= 19'bx;
      end
      else  begin
        status_Out1_expected = $fscanf(fp_Out1_expected, "%h", Out1_expected);
      end
    end

  // Bypass register to hold Out1_ref
  always @(posedge clk)
    begin : DataHold_Out1_ref
      if (reset_x) begin
        Out1_ref_hold <= 0;
      end
      else begin
        if (ce_out) begin
          Out1_ref_hold <= Out1_expected;
        end
      end
    end

  assign Out1_refTmp = Out1_expected;

  assign Out1_ref = (ce_out == 1'b0 ? Out1_ref_hold :
              Out1_refTmp);



  always @(posedge clk)
    begin : Out1_checker
      if (reset_x == 1'b1) begin
        Out1_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && Out1 !== Out1_ref) begin
          Out1_testFailure <= 1'b1;
          $display("ERROR in Out1 at time %t : Expected '%h' Actual '%h'", $time, Out1_ref, Out1);
        end
      end
    end

  assign testFailure = Out1_testFailure;

  always @(posedge clk)
    begin : completed_msg
      if (snkDone == 1'b1) begin
        if (testFailure == 1'b0) begin
          $display("**************TEST COMPLETED (PASSED)**************");
        end
        else begin
          $display("**************TEST COMPLETED (FAILED)**************");
        end
      end
    end

endmodule  // Non_recursive_CIC1_tb

