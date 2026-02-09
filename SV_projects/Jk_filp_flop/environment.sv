`ifndef ENVIRONMENT
`define ENVIRONMENT
`include "driver.sv"
`include "monitor.sv"
`include "generator.sv"
`include "scoreboard.sv"
`include "interface.sv"


class environment;
  generator g;
  driver d;
  monitor m;
  scoreboard s;
  virtual intf I ;
  mailbox mon2sb;
  mailbox gen2drv;
  
  function new(virtual intf I);
    mon2sb=new();
    gen2drv=new();
    this.I=I;
    g=new(gen2drv);
    d=new(gen2drv,I);
    m=new(mon2sb,I);
    s=new(mon2sb);
  endfunction
      
  task run;
    fork
    g.run;
   d.run;
   m.run;
  s.run;
    join
  endtask
  
  
endclass
`endif 
