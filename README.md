
# 2:1 Multiplexer - Verilog HDL

## Description
2:1 MUX is a data selector. It selects one of two inputs (I0, I1) based on select line S.
If S=0, output Y=I0, if S=1, Y=I1. Essential in CPU design.

## Truth Table
| S | Y  |
|---|----|
| 0 | I0 |
| 1 | I1 |

## Logic Equation
Y = (~S & I0) | (S & I1)

## Files
- `mux_2x1.v` - Design Module
- `mux_2x1_tb.v` - Testbench

## Applications
- Data routing, ALU, Communication systems

## Tools
Verilog HDL, EDA Playground / ModelSim
