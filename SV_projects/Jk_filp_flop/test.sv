
`ifndef TEST
`define TEST
`include "environment.sv"
`include "interface.sv"
          
class test;
  environment e;
  
  function new(virtual intf I);
  //  $display("test created");
    e=new(I);
  endfunction
 
  task run;
    e.run;
  endtask
  
endclass
`endif 
