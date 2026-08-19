module full_subtractor (
    input  A,
    input  B,
    input  Borrow_in,
    output Difference,
    output Borrow_out
);

assign Difference = A ^ B ^ Borrow_in;

assign Borrow_out = (~A & B) | (~A & Borrow_in) | (B & Borrow_in);

endmodule