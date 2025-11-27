// creaete an array where you have unique elements with 8 bit size and 
// multiples of 3


class A;
rand bit[7:0]a;

constraint c1 {a.size==10;}
constraint c2 
{
foreach(a[i])
  a[i]%3==0 && (a[i] inside {[20:50]};)
}
constraint c3 { unique{a};}

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
