// Write constraint to generate random values 25,27,30,36,40,45
//without using "set membership".

class A;
rand int a;
constraint c1{a>25; a<46;}
constraint c2{a%5==0||a%9==0 ; a!=35;}
function void post_randomize();
$display("the value of a is %d",a);
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
