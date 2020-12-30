`timescale 1ns / 1ps


module ripplecyadder(a,b,c0,s,cout);

    input [3:0]a;
    input [3:0]b;
    output [3:0]s;
    output cout;
    input c0;
    wire c1,c2,c3;
    
    add4bit fa0(a[0],b[0],c0,s[0],c1);
    add4bit fa1(a[1],b[1],c1,s[1],c2);
    add4bit fa2(a[2],b[2],c2,s[2],c3);
    add4bit fa3(a[3],b[3],c3,s[3],cout);
    
endmodule
