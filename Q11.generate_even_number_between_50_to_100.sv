class A;
rand int a[];
constraint c0{a.size==50;}
constraint c1
{ 
foreach(a[i]
{
a[i] inside {[50:100]};
a[i]%2==0;
}
}
function void post_randomize();
$display("the value of a is %d",a);
endfunction
endclass


module tb;
A a_h;
initial
begin
end
endmodule 
