load HackCPU.hdl,
output-file HackCPUAssignment.out,
compare-to HackCPUAssignment.cmp,
output-list time%S0.4.0 inM%D0.6.0 instruction%B0.16.0 reset%B2.1.2 outM%D1.6.0 writeM%B3.1.3 addressM%D0.5.0 pc%D0.5.0 DRegister[]%D1.6.1;

set reset 0,

set instruction %B0000000000010000, // @16
tick, output, tock, output;

set inM %B0000000000001111,
set instruction %B1111110000010000, // D=M
tick, output, tock, output;

set instruction %B0000000000010001, // @17
tick, output, tock, output;

set inM %B0000000000001010,
set instruction %B1111000010010000, // D=D+M
tick, output, tock, output;

set instruction %B0000000000010010, // @18
tick, output, tock, output;

set inM %B0000000000000111,
set instruction %B1111010011010000, // D=D-M
tick, output, tock, output;

set instruction %B0000000000010011, // @19
tick, output, tock, output;

set instruction %B1110001100001000, // M=D
tick, output, tock, output;