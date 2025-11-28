// two dimenssional array example

class A;
  rand int a[][];
  constraint c1 { a.size inside {[2:6]};}
  constraint c2 
  {
    foreach(a[i]) a[i].size==2;
  }
  constraint c3 
  {
    foreach(a[i])
      foreach(a[i][j]) 
        a[i][j]==i+j;
  }
  function void post_randomize();
    $display("the value of a is %p",a);
  endfunction
  
endclass

module tb;
  A a_h;
  initial
    begin
      a_h=new();
      a_h.randomize();
    end
endmodule
