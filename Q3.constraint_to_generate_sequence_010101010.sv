// constraint to generate a pattern 01010101.......



class A;
  rand int a[];
  constraint c1{a.size==10;}
  
  constraint c2 
  {
    foreach(a[i])
      if(i%2==0)
        a[i]==0;
      else
        a[i]==1;
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
