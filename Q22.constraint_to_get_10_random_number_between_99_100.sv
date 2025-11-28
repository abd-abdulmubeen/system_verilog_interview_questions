////generate 10 random numbers between 99 and 100


class A;
rand int a[10];
real b[10];

constraint c1 
  {
    foreach(a[i])
      a[i] inside{[990:1000]};
  }
  
constraint c2
  {
    foreach(a[i])
    foreach(a[j])
      if(i!=j)
        a[i]!=a[j];
  }
function void post_randomize();
  foreach(b[i])
    b[i]=a[i]/10.0;
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
