//interview question on constraint 
//constraint to generate a real number between 5 to 6 

class A;
rand int a;
constraint c1{a inside {[500:600]};}
function void post_randomize();
real b;
b= a/100.0;
$display("the value of a=%f",b);
endfunction

endclass



module tb;
A a_h;
initial
begin
repeat(5) begin
a_h=new();
a_h.randomize();
end
end
endmodule 
