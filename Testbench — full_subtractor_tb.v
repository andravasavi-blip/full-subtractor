`timescale 1ns/1ps

module full_subtractor_tb;

reg A;
reg B;
reg Borrow_in;

wire Difference;
wire Borrow_out;

full_subtractor uut (
    .A(A),
    .B(B),
    .Borrow_in(Borrow_in),
    .Difference(Difference),
    .Borrow_out(Borrow_out)
);

initial begin

    $display("Time\tA\tB\tBin\tDifference\tBout");

    $monitor("%0t\t%b\t%b\t%b\t%b\t\t%b",
             $time,
             A,
             B,
             Borrow_in,
             Difference,
             Borrow_out);

    A = 0; B = 0; Borrow_in = 0;
    #10;

    A = 0; B = 0; Borrow_in = 1;
    #10;

    A = 0; B = 1; Borrow_in = 0;
    #10;

    A = 0; B = 1; Borrow_in = 1;
    #10;

    A = 1; B = 0; Borrow_in = 0;
    #10;

    A = 1; B = 0; Borrow_in = 1;
    #10;

    A = 1; B = 1; Borrow_in = 0;
    #10;

    A = 1; B = 1; Borrow_in = 1;
    #10;

    $finish;

end

endmodule