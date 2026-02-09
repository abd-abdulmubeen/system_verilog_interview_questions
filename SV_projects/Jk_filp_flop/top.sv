// Code your testbench here
// or browse Examples

`include "test.sv"
`include "interface.sv"

module tb;
  bit clock;
  test t;
  intf I(clock);
  
  always #5 clock=!clock;

  jkf J(clock,I.reset,I.j,I.k,I.q);
  
  initial
    begin
      t=new(I);
     t.run;
    end  
  
  initial
    begin
      $dumpvars;
      $dumpfile("a.vcd");
      #200 $finish;           
    end
endmodule 
