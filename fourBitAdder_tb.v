`timescale 1ns / 1ps

module fourBitAdder_tb();

    reg[3:0] A,B;
    reg Cin;
    wire S0,S1,S2,S3,Co;
    wire c0,c1,c2;
    
    fourBitAdder uut(A,B,Cin,S0,S1,S2,S3,Co);
    integer k,j;
    initial begin
        for(k=0;k<16;k=k+1)begin
            for(j=0;j<16;j=j+1)begin
                A = k;
                B = j;
                Cin = 1'b0;
                #10 $display("A = %b, B = %b, S = %b, Co = %b",A,B,{S3,S2,S1,S0},Co);
            end
        end
        $finish;
    end
endmodule
