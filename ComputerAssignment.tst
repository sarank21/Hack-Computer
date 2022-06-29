load HackComputer.hdl,
output-file ComputerAssignment.out,
compare-to ComputerAssignment.cmp,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 PC[]%D0.4.0 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1 RAM64[19]%D1.7.1;

// Load a program written in the Hack machine language.
// The program computes d=a+b-c (RAM64[16]+RAM64[17]-RAM64[18]) and puts the result in RAM64[19]
ROM32K load Assignment.hack,
output;

//compute d=15+10-7
set reset 0,
set RAM64[16] 15,
set RAM64[17] 10,
set RAM64[18] 7,
repeat 10 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[16] 0,
set RAM64[17] 0,
set RAM64[18] 0,
set RAM64[19] 0, 
tick, tock, output;

//compute d=56+4-20
set reset 0,
set RAM64[16] 56,
set RAM64[17] 4,
set RAM64[18] 20,
repeat 10 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[16] 0,
set RAM64[17] 0,
set RAM64[18] 0,
set RAM64[19] 0, 
tick, tock, output;