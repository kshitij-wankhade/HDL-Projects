# 4-Bit Adder-Subtractor

## Description

A 4-bit Adder-Subtractor designed using structural VHDL. The circuit performs both addition and subtraction of two 4-bit binary numbers based on a control input.

## Features

- 4-bit Addition
- 4-bit Subtraction
- Structural Modeling
- Ripple Carry Architecture

## Inputs

| Signal | Description |
|--------|-------------|
| A[3:0] | First 4-bit input |
| B[3:0] | Second 4-bit input |
| M | Mode Select (0 = Addition, 1 = Subtraction) |

## Outputs

| Signal | Description |
|--------|-------------|
| SUM[3:0] | 4-bit Result |
| CARRY | Final Carry / Borrow Indicator |


## Tools Used

- Intel Quartus Prime
- ModelSim

## Future Improvements

- Parameterized N-bit Adder-Subtractor
- Overflow Detection
- FPGA Implementation