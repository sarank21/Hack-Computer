load HackComputer.hdl,
output-file ComputerLoop.out,
compare-to ComputerLoop.cmp,
output-list time%S1.5.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 PC[]%D0.4.0 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

// Load a program written in the Hack machine language.
// The program computes sum of all positive integers less than 100 and puts the result in RAM64[17]
ROM32K load Loop.hack,
output;

set reset 0,
repeat 1400 {
    tick, tock, output;
}

