# Full Subtractor using Verilog

## Overview

This project implements a Full Subtractor using Verilog HDL.

A Full Subtractor performs subtraction of three 1-bit inputs:
A - B - Borrow_in

It produces two outputs:
- Difference
- Borrow_out

## Inputs

- `A` – Minuend
- `B` – Subtrahend
- `Borrow_in` – Borrow input

## Outputs

- `Difference` – Result of subtraction
- `Borrow_out` – Borrow generated during subtraction

## Logic Equations

Difference = A XOR B XOR Borrow_in

Borrow_out = (~A & B) | (~A & Borrow_in) | (B & Borrow_in)

## Truth Table

| A | B | Borrow_in | Difference | Borrow_out |
|---|---|-----------|------------|------------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 |

## Files

- `full_subtractor.v` – Verilog design
- `full_subtractor_tb.v` – Testbench
- `README.md` – Project documentation
- `simulation_result.png` – Simulation waveform

## Software Used

- Icarus Verilog
- ModelSim / Vivado
- GTKWave

## How to Run

### Compile

```bash
iverilog -o full_subtractor full_subtractor.v full_subtractor_tb.v