// randomize only 12th bit out of 32 bits 


class A;
rand bit[31:0]a;

constraint c1
{
foreach(a[i])
if(i==12)
a[i] inside {0,1};
else
a[i]==0;
}


function void post_randomize();
$display("the value of a is %b",a);
endfunction
endclass

module tb;
A a_h;
initial
begin
repeat(10) begin
a_h=new();
a_h.randomize
end
end
endmodule 
