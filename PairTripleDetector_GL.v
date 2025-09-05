//========================================================================
// PairTripleDetector_GL
//========================================================================

`ifndef PAIR_TRIPLE_DETECTOR_GL_V
`define PAIR_TRIPLE_DETECTOR_GL_V

`include "ece2300-misc.v"

module PairTripleDetector_GL
(
  input  wire in0,
  input  wire in1,
  input  wire in2,
  output wire out
 );

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement pair/triple detector using explicit gate-level modeling
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  // OR gate in0, in1 -> w
  wire w;
  or( w, in0, in1 );

  // AND gate in2, w -> y
  wire y;
  and ( y, w, in2 );

  // AND gate in0, in1 -> x
  wire x;
  and( x, in0, in1 );

  or( out, x, y);

endmodule

`endif /* PAIR_TRIPLE_DETECTOR_GL_V */

