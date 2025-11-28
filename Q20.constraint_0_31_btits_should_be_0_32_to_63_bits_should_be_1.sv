// the bits 0 to 31 bits should be 1 and 32 to 63 should be 0


class A;
rand int [0:63]a;
constraint c1 
{
foreach(a[i))
 if(i<32) a[i]==1;
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
a_h=new();
a_h.randomize();
end
endmodule 
