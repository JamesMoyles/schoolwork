

# 1.1.1.2 Processor Performance
## Basic Performance
### Words
Memory is divided up into equal units called words
Each word has a separate memory address
###  Address Bus
The width of the address bus determines the maximum possible memory addresses of the system
With an 8-bit address bus, the maximum number of memory addresses is  2^8 = 256
### Data Bus
If the data bus is the same width as a computer word, data can be transferred to and from memory in a single operation
### Format of Instructions
Assembly code is assembled into machine code
Machine code is the binary instructions for the computer
## Factors Affecting Performance
The main factors affecting processor performance are:
- Clock speed
- The number of cores in the processor
- The amount and type of cache memory
- Pipelining

### Clock Speed
The FDE cycle is triggered by clock pulses of the quartz clock in the CPU
The faster the clock speed, the faster a computer can perform the FDE
A series of on and off signals are used to synchronise the processor components for operations
Actions are usually carried out on the rising edge of the clock
Each action takes a fixed number of cycles to complete

### Number of Cores
Each core is theoretically able to process a different instruction at the same time meaning that processing speed quadruples with a 4 core processor
This simultaneous processing with multiple cores on a task is called __parallel processing__
Parallel processing is not always possible because instructions are processed sequentially
>Some software may not be able to take full advantage of all the cores

### Cache
Cache is a small amount of very fast and expensive memory that stores data and instructions that have recently been used on the processor near/in the processor
Cache is split into instruction cache and data cache
This allows data and instructions to be fetched simultaneously
The more cache a computer has, the higher the chance that the next instruction will not have to be fetched from RAM and it can just be fetched from the much faster cache

### Pipelining
Pipelining is a continuous and overlapped movement of an instruction to the processor or in the arithmetic steps taken by the processor to perform and instruction

### Summary
- The main three factors affecting CPU performance are:
	- Clock speed
	- Number of cores
	- Size and type of cache
- The size of the address bus determines the maximum size of RAM
- The size of the data bus determines the maximum size of an operand in an instruction
- Pipelining is used to improve efficiency
