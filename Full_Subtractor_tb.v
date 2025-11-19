`timescale 1ns / 1ps
module Full_Subtractor_tb;

    reg A, B, Bin;
    wire D, Bout;
    // Instantiate the DUT
    Full_Subtractor uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bout(Bout)
    );
    initial begin
        $display("A B Bin | D Bout");
        $monitor("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

        // Apply all input combinations
        A=0; B=0; Bin=0; #10;
        A=0; B=0; Bin=1; #10;
        A=0; B=1; Bin=0; #10;
        A=0; B=1; Bin=1; #10;
        A=1; B=0; Bin=0; #10;
        A=1; B=0; Bin=1; #10;
        A=1; B=1; Bin=0; #10;
        A=1; B=1; Bin=1; #10;
        $finish;
    end
endmodule
