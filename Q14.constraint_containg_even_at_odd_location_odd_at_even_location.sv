// even number at odd locations
// odd number at even locations


class A;
rand int a[];
constraint c1 {a.size==20;}
constraint c2 
{
foreach(a[i]) 
 a[i] inside {[20:30]};
}
constraint c3
{
foreach(a[i])
if(i%2==0)
  a[i]%2==1;
 else
 a[i]%2==0;
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
