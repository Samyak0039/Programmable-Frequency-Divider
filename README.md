# Programmable Frequency Divider Using Verilog HDL

## Project Overview

A programmable frequency divider designed using Verilog HDL. The design generates a lower-frequency output signal by using a 4-bit programmable input value.

## Design Specifications

- **HDL:** Verilog
- **Input Clock:** `clk`
- **Reset:** Synchronous active-HIGH reset
- **Programmable Input:** 4-bit `N` (1–15)
- **Output:** `out`
- **Counter:** 4-bit internal counter

## Working Principle

The frequency divider uses a 4-bit counter to count the positive edges of the input clock.

- The counter increments on every positive edge of `clk`.
- When the counter reaches `N - 1`, it resets to zero and toggles the output.
- The output frequency is determined by the programmable input `N`.
- When `N = 0`, the counter and output remain at zero.
- When reset is asserted, the counter and output are synchronously cleared.

The output frequency is:

\[
f_{out} = \frac{f_{clk}}{2N}
\]

where:
- \(f_{out}\) = Output frequency
- \(f_{clk}\) = Input clock frequency
- \(N\) = 4-bit programmable division value

## RTL Schematic

![Programmable Frequency Divider RTL Schematic](Simulation_Results/Programmable%20Frequency%20Divider%20RTL%20Schematic.png)

## Simulation Results

The simulation waveform demonstrates the operation of the programmable frequency divider with different values of `N`, along with the clock and reset signals.

![Programmable Frequency Divider Simulation](Simulation_Results/Programmable%20Frequency%20Divider%20Simulation.png)

## Repository Structure

```text
Programmable-Frequency-Divider/
├── Verilog_Codes/
│   └── Programmable_Frequency_Divider.v
├── Testbench/
│   └── programmable_frequency_divider_t.v
├── Simulation_Results/
│   ├── Programmable Frequency Divider RTL Schematic.png
│   └── Programmable Frequency Divider Simulation.png
└── README.md
```

## Tools Used

- Xilinx Vivado
- Verilog HDL

## Learning Outcomes

- RTL design using Verilog HDL
- Synchronous sequential logic
- Counter-based frequency division
- Parameter-controlled digital circuit operation
- Functional simulation and RTL schematic analysis
