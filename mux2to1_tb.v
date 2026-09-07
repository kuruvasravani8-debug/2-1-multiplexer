module mux2to1_tb;
  reg a, b, sel;
  wire y;

  // Design instance
  mux2to1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );

  initial begin
    // For waveform
    $dumpfile("mux2to1.vcd");
    $dumpvars(0, mux2to1_tb);

    $display("sel a b | y");
    $display("---------");

    sel=0; a=0; b=0; #10;
    $display("%b   %b %b | %b", sel, a, b, y);

    sel=0; a=0; b=1; #10;
    $display("%b   %b %b | %b", sel, a, b, y);

    sel=0; a=1; b=0; #10;
    $display("%b   %b %b | %b", sel, a, b, y);

    sel=0; a=1; b=1; #10;
    $display("%b   %b %b | %b", sel, a, b, y);

    sel=1; a=0; b=0; #10;
    $display("%b   %b %b | %b", sel, a, b, y);

    sel=1; a=0; b=1; #10;
    $display("%b   %b %b | %b", sel, a, b, y);

    sel=1; a=1; b=0; #10;
    $display("%b   %b %b | %b", sel, a, b, y);

    sel=1; a=1; b=1; #10;
    $display("%b   %b %b | %b", sel, a, b, y);

    $finish;
  end
endmodule
