# Full Subtractor using Verilog

## Overview

A Full Subtractor is a combinational logic circuit that subtracts two binary bits while considering a borrow input from the previous stage. It is commonly used in arithmetic circuits and digital systems.

### Inputs
- A : Minuend
- B : Subtrahend
- Bin : Borrow Input

### Outputs
- Difference (D)
- Borrow Out (Bout)

---

## Truth Table

| A | B | Bin | Difference | Borrow Out |
|---|---|-----|------------|------------|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 |

---

## Boolean Expressions

Difference = A ⊕ B ⊕ Bin

Borrow Out = (~A & B) | (~A & Bin) | (B & Bin)

---

## Project Files

- `full_subtractor.v` : Verilog implementation
- `full_subtractor_tb.v` : Testbench
- `simulation_results.png` : Simulation waveform
- `README.md` : Project documentation

---

## Simulation Tools

This project can be simulated using:

- ModelSim
- Vivado Simulator
- Icarus Verilog
- GTKWave

---

## Expected Console Output

```
A B Bin | Difference Borrow
0 0 0   |     0        0
0 0 1   |     1        1
0 1 0   |     1        1
0 1 1   |     0        1
1 0 0   |     1        0
1 0 1   |     0        0
1 1 0   |     0        0
1 1 1   |     1        1
```

---

## Applications

- Binary Arithmetic Circuits
- ALU (Arithmetic Logic Unit)
- Digital Processors
- Embedded Systems
- Computer Architecture

---

## Author

Your Name