`timescale 1ns / 1ps
module adder(x,y,cin,sum,cout);
    input [15:0]x,y;
    input cin;
    output [15:0]sum;
    output cout;
    wire [3:0]t;
    assign cout=t[3];
    ripplecyadder r01(x[3:0],y[3:0],cin,sum[3:0],t[0]);
    ripplecyadder r02(x[7:4],y[7:4],t[0],sum[7:4],t[1]);
    ripplecyadder r03(x[11:8],y[11:8],t[1],sum[11:8],t[2]);
    ripplecyadder r04(x[15:12],y[15:12],t[2],sum[15:12],t[3]);
endmodule
