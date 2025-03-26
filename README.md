
# VLSI Architecture Design - 8-bit Ripple Carry Adder with Sequential Circuits

## Project Overview
This project involves the design and implementation of an 8-bit ripple carry adder using sequential circuits with flip-flops, implemented in 45nm technology. The design ensures that both maximum and minimum delay constraints are satisfied for proper operation of the sequential elements.



## Design Components

### 1. 8-bit Ripple Carry Adder
- Implemented using 8 cascaded 1-bit full adders
- Each adder stage computes sum and carry-out
- Carry propagates from LSB to MSB
- Verilog implementation in `RippleCarryAdder` module

### 2. Sequential Elements
- **D Flip-Flop**: Basic storage element (`FlipFlop` module)
- **8-bit Register**: Composed of 8 D flip-flops (`Register` module)
- Semi-dynamic flip-flop design for improved performance

### 3. Top-Level Design
- Input registers for operands A and B
- Ripple carry adder core
- Output register for sum and carry-out
- Clock and reset signals for synchronous operation

## Key Features

### Timing Constraints
- **Propagation Delay (Tpd)**: 4.61364 - 4.10588 ns
- **Clock-to-Q Delay (Tpcq)**: 1.1340 - 1.0000 ps
- **Setup Time (tsetup)**: -20.2247 ps (from Assignment 1)
- **Minimum Clock Period**: Calculated using `Tc ≥ tsetup + tpd + tpcq`

### Power Characteristics
- **Total Power**: 6.798 μW
  - Internal Power: 6.165 μW (90.69%)
  - Switching Power: 0.629 μW (9.25%)
  - Leakage Power: 4.29 nW (0.06%)
- **Power Distribution**:
  - Sequential elements: 78.17% of total power
  - Combinational logic: 21.83% of total power

### Area Utilization
- Total cell count: 58 instances
- Total area: 171.103 units (in 45nm technology)

## Implementation Details

### Verilog Modules
1. **Top Module**: Coordinates all components
2. **Adder Module**: 1-bit full adder implementation
3. **RippleCarryAdder**: 8-bit adder using full adders
4. **FlipFlop**: Basic D flip-flop with reset
5. **Register**: 8-bit register using flip-flops

### Testbench
- Comprehensive test cases:
  - Simple addition (5 + 10)
  - Larger numbers (100 + 200)
  - Carry verification (255 + 1)
  - Random pattern test (0xAA + 0x55)
- Clock generation at 50MHz (10ns period)

## Simulation Results
- Behavioral simulation shows correct addition operation
- Timing analysis confirms constraints are met
- Power analysis shows optimal power distribution

## Layout Considerations
- Designed in Cadence Virtuoso using 45nm technology
- Pin mapping optimized for signal integrity
- Proper clock distribution network
- Balanced wire loads for timing consistency

## Files Included
1. `Top.v` - Top-level Verilog module
2. `Adder.v` - 1-bit full adder
3. `RippleCarryAdder.v` - 8-bit adder implementation
4. `FlipFlop.v` - D flip-flop module
5. `Register.v` - 8-bit register
6. `Top_test.v` - Testbench
7. Schematic files - Virtuoso design files
8. Simulation waveforms - Verification results

## Design Challenges and Solutions
1. **Timing Constraints**:
   - Carefully balanced combinational paths to meet setup/hold times
   - Optimized flip-flop design for minimal clock-to-Q delay
   
2. **Power Optimization**:
   - Used clock gating where possible
   - Optimized cell sizing for power-performance tradeoff

3. **Area Efficiency**:
   - Shared common resources where possible
   - Compact layout of sequential elements

## Conclusion
The designed 8-bit ripple carry adder with sequential circuits successfully meets all timing constraints while maintaining low power consumption in 45nm technology. The design demonstrates proper functionality across all test cases and provides a solid foundation for more complex arithmetic circuits.

## Team Members
- Niranjan Gopal (IMT2022543)
- Bijeet Basak (IMT2022510)
- Abhinav Deshpande (IMT2022580)
- Yash Sengupta (IMT2022532)
- Dikshant Mahawar (IMT2022549)
- Teerth Bhagat (IMT2022586)
