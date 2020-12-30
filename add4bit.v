`timescale 1ns / 1ps


module add4bit(x,y,cin,s,cout);
    input x,y;
    output s;
    input cin;
    output cout;
    
    assign {cout,s}=x+y+cin;
endmodule
