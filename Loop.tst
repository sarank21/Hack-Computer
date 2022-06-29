//test script for testing the machine language program in the CPU Emulator

//Load the program and set up for simulation
load Loop.hack,
output-file Loop.out,
compare-to Loop.cmp,
output-list RAM[17]%D1.7.1;

//The program computes sum of all positive integers less than 100 and puts the result in RAM[17]

repeat 1400 {
    ticktock; 
}
output;



