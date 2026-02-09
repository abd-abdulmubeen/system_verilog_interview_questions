`ifndef GENERATOR
`define GENERATOR
`include "transaction.sv"

class generator;
  transaction t;
  mailbox gen2drv;
  
  function new(mailbox gen2drv);
    this.gen2drv=gen2drv;
  endfunction
  
  task run;
    repeat(10)
    begin
      t=new();
      t.randomize();
      //$display(t);
      gen2drv.put(t);
    end
  endtask
  
endclass

`endif
