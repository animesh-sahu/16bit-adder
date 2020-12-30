`timescale 1ns / 1ps

module adder_tb;
    reg [15:0]x,y;
    reg cin;
    wire [15:0]sum;
    wire cout;
    
    adder uut(x,y,cin,sum,cout);
    initial
        begin
            x=16'h8fff;y=16'h8000; cin=0;
            #5 x=16'hb2cf;y=16'h1bd3;
            #10 $finish;
        end
        
 endmodule
