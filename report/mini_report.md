# Design and Comparative Evaluation of RCA, CLA, and CSLA Architectures in a 32-bit RISC-V ALU

## Abstract

## 1. Introduction
The arithmetic logic unit (ALU) is an important part of a processor. It is used to perform arithmetic, logical, comparison, and shift operations. In a 32-bit RISC-V processor, common ALU operations include addition, subtraction, logical operations, set-less-than comparison, and shifting.

Among these operations, addition is especially important because the same adder can also be used for subtraction. The design of the adder can therefore affect both the hardware cost and the combinational delay of the ALU.

Different adder architectures have different characteristics. A Ripple Carry Adder (RCA) has a simple structure, but its carry signal must propagate through each stage. A Carry Lookahead Adder (CLA) uses generate and propagate signals to calculate carry signals more quickly. A Carry Select Adder (CSLA) calculates results for different carry-in values in advance and selects the correct result when the actual carry becomes available.

In this project, a 32-bit RISC-V ALU supporting ADD, SUB, AND, OR, XOR, SLT, SLL, and SRL is implemented in Verilog. Three ALU versions are built using RCA, CLA, and CSLA as the adder architecture. The designs are verified using Icarus Verilog and GTKWave, and Yosys with ABC is used to compare the mapped cell count and logic depth.

The main goal of this project is to compare the hardware cost and logic depth of the three adder architectures when they are used in the same 32-bit ALU. The research question is:

**How do RCA, CLA, and CSLA architectures affect the mapped hardware cost and structural logic depth of a 32-bit RISC-V ALU?**
## 2. Background and ALU Architecture
The ALU designed in this project is a 32-bit combinational circuit. It takes two 32-bit inputs, A and B, and produces one 32-bit result. A 3-bit control signal, `ALU_Control`, is used to select the required operation.

The ALU supports eight operations, as shown in Table 1.

| ALU Control | Operation | Description |
|---|---|---|
| 000 | ADD | A + B |
| 001 | SUB | A - B |
| 010 | AND | Bitwise AND |
| 011 | OR | Bitwise OR |
| 100 | XOR | Bitwise XOR |
| 101 | SLT | Signed set-less-than |
| 110 | SLL | Logical left shift |
| 111 | SRL | Logical right shift |

Addition and subtraction share the same adder datapath. For subtraction, the B input is inverted and the carry-in is set to 1, so the operation is performed using two's complement arithmetic:

A - B = A + (~B) + 1

The logical operations AND, OR, and XOR are implemented using separate bitwise logic. SLT performs a signed comparison between A and B. For SLL and SRL, the lower five bits of B are used as the shift amount because a 32-bit value only requires shift amounts from 0 to 31.

The outputs from the arithmetic, logic, comparison, and shift units are connected to a result multiplexer. The `ALU_Control` signal selects which result is sent to the final 32-bit output.

Figure 1 shows the overall architecture of the implemented ALU.

**Figure 1. 32-bit RISC-V ALU overall architecture.**
## 3. Adder Architectures

### 3.1 Ripple Carry Adder

### 3.2 Carry Lookahead Adder

### 3.3 Carry Select Adder

## 4. Implementation and Verification Methodology

## 5. Results and Discussion

## 6. Conclusion

## References
