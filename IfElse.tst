//test script for testing the machine language program in the CPU Emulator

//Load the program and set up for simulation
load IfElse.hack,
output-file IfElse.out,
compare-to IfElse.cmp,
output-list RAM[18]%D1.7.1;

// The program computes c=a-b if a>b, c=b-a otherwise and puts the result in RAM[18]

//a=24,b=25
set RAM[16] 24,
set RAM[17] 25,

repeat 20 {
    ticktock; 
}
output;



