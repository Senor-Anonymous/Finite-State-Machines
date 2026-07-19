// Code your testbench here
// or browse Examples
module test;
  reg clk,inp;
  wire out;
  wire [1:0] state;
  
  bitcheck uut(
    .clk(clk),
    .inp(inp),
    .out(out),
    .state(state)
  );
  
  always
    #5 clk=~clk;
  initial
    begin
      $dumpfile("bitcheck.vcd");
      $dumpvars(1,test);
                
      clk=0;
      $monitor($time,"inp=%b,out=%b,state=%b",inp,out,state);
      #5 inp=1;
      #10 inp=0;
    #10  inp=1;
      #10 inp=1;
    #10  inp=0;
      #10 inp=1;
     #10 inp=0;
     #10 inp=1;
    #10  inp=0;
      #5 $finish;
    end
  endmodule
  
  
      
      