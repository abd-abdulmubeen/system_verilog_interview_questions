//can we invoke a task inside a function with delay


class A;

function fun;
 $display("inside the function, now invoke task with delay");
 t;
endfunction

task t;
#10;
$display("the task is now invoked at time=%d",$time);
endtask
endclass

module tb;
A a_h;
initial
begin
a_h=new();
a_h.fun;
end
endmodule 
