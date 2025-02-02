# D Flip-Flop Implementation in Verilog  

## Overview

This project implements a **D Flip-Flop** (DFF) in Verilog and simulates its functionality using **Vivado**. The D Flip-Flop is a fundamental memory element widely used in digital circuits for data storage and synchronization.

## Functionality of D Flip-Flop

A **D Flip-Flop** captures the value of the input `D` on the rising edge of the clock (`clk`) and holds this value until the next clock cycle. It is commonly used in **synchronous sequential circuits** to store binary data.

### Truth Table

| Clock Edge      | D (Input) | Q (Output) |
| --------------- | --------- | ---------- |
| Rising Edge     | 0         | 0          |
| Rising Edge     | 1         | 1          |
| No Clock Change | X         | No Change  |

### Working Principle

- When the clock transitions from **low to high (rising edge)**, the value at `D` is transferred to `Q`.
- The output `Q` remains constant until the next rising edge of the clock.
- If a reset (`rst`) is implemented, it can asynchronously or synchronously clear `Q` to 0.

## Verilog Code
Find the verilog code test bench code in D_latch.srcs/sources_1/new/DFF_tb.v

## Simulation in Vivado
### Sample Testbench
Find the verilog code code in D_latch.srcs/sim_1/new/DFF_tb.v

### Steps to Simulate:

1. Open **Vivado** and create a new **Verilog project**.
2. Add the `d_flip_flop.v` file to the project.
3. Create a testbench file (`d_flip_flop_tb.v`) to apply test cases.
4. Run the simulation and observe the waveform in the **Vivado Simulator**.

## Expected Simulation Output

The waveform should show:

- `Q` follows `D` only on the **rising edge** of `clk`.
- `Q` resets to `0` when `rst` is **active high**.
- ![image](https://github.com/user-attachments/assets/6230a10b-9a23-40d1-a04a-789dcbf3b6e3)

## Applications of D Flip-Flop

- **Registers**: Temporary data storage in processors.
- **Counters**: Used in frequency division and sequential logic circuits.
- **Shift Registers**: Storing and shifting data in serial communication.
- **State Machines**: Fundamental component in finite state machines (FSMs).

## How to Use This Repository

1. Clone the repository:
   ```sh
   git clone https://github.com/your_username/d_flip_flop.git
   ```
2. Open the project in **Vivado**.
3. Run the simulation using the provided testbench.
4. Modify the design as needed and analyze the waveform.

## Conclusion

This project demonstrates the **D Flip-Flop's** operation using **Verilog and Vivado Simulation**. It serves as a fundamental building block for more complex sequential circuits.
---




