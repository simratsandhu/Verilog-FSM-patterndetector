module patdet(input clk, rst, data, output reg out);
parameter s0=0,s1=1,s2=2,s3=3,s4=4;

reg [3:0] pstate, next;

always@(posedge clk)
begin
if(rst)
pstate<=s0;
else
pstate<=next;
end

always@(*)
begin
case(pstate)
s0: begin
    if(data==1)
    begin
    next=s1;
    out=1'b0;
    end
    else
    begin
    next=s0;
    out=1'b0;
    end
    end
s1: begin
    if(data==1)
    begin
    next=s2;
    out=1'b0;
    end
    else
    begin
    next=s0;
    out=1'b0;
    end
    end
s2: begin
    if(data==1)
    begin
    next=s3;
    out=1'b0;
    end
    else
    begin
    next=s0;
    out=1'b0;
    end
    end
s3: begin
    if(data==1)
    begin
    next=s1;
    out=1'b0;
    end
    else
    begin
    next=s4;
    out=1'b1;
    end
    end
s4: begin
    if(data==1)
    begin
    next=s1;
    out=1'b0;
    end
    else
    begin
    next=s0;
    out=1'b0;
    end
    end
endcase
end 
endmodule
