class  A;
rand int a[];
constraint c1 {a.size==10;}
constraint c2
{
foreach(a[i])
 a[i]==i/2 +1;
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
