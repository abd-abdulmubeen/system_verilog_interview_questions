//constraint to generate factorial of first five even numbers
//constraint to generate factorial of first five odd numbers.

class A;
  rand  int a[];
  rand int b[];
  constraint c1 {a.size==5;b.size==5;}
  function int fact(int i);
    if(i==0)
      return 1;
    else
      return i*fact(i-1);
  endfunction
  
  constraint c2 
  {
    foreach(a[i])
      a[i]==fact(2*i);
   
  }
  constraint c3
  {
    foreach(b[i])
            b[i]==fact(2*(i)+1);
  }
  function void post_randomize();
    $display("the value of a is %p",a);
    $display("the value of b is %p",b);
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
