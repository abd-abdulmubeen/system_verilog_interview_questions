`ifndef MONITOR
`define MONITOR

class monitor;
mailbox mon2sb;
virtual intf I;
transaction t;
  
  function new(mailbox mon2sb,virtual intf I);
    this.I=I;
    this.mon2sb=mon2sb;
  endfunction
  

  task run;
    forever begin
      @(posedge I.clock);
      t=new();
      t.reset=I.reset;
      t.j=I.j;
      t.k=I.k;
      #2;
      t.q=I.q;
      mon2sb.put(t);
    end
  endtask
endclass
`endif
