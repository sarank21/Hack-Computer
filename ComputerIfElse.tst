load HackComputer.hdl,
output-file ComputerIfElse.out,
compare-to ComputerIfElse.cmp,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 PC[]%D0.4.0 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

// Load a program written in the Hack machine language.
// The program computes c, c=a-b if a>b else c=b-a and puts the result in RAM64[18]
ROM32K load IfElse.hack,
output;

//a=15,b=10
set reset 0,
set RAM64[16] 15,
set RAM64[17] 10,
repeat 10 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[16] 0,
set RAM64[17] 0,
set RAM64[18] 0, 
tick, tock, output;

//a=24,b=25
set reset 0,
set RAM64[16] 24,
set RAM64[17] 25,
repeat 15 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[16] 0,
set RAM64[17] 0,
set RAM64[18] 0, 
tick, tock, output;