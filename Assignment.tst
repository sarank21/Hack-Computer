//test script for testing the machine language program in the CPU Emulator

//Load the program and set up for simulation
load Assignment.hack,
output-file Assignment.out,
compare-to Assignment.cmp,
output-list RAM[19]%D1.7.1;

//The program computes d=a+b-c and puts the result in RAM[19]

//compute d=15+10-7
set RAM[16] 15,
set RAM[17] 10,
set RAM[18] 7,

repeat 10 {
    ticktock; 
}
output;


