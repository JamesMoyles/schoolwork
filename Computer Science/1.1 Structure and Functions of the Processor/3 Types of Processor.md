# 1.1.1.3 Types of Processor
John von Neumann and Alan Turing both proposed the stored program concept
## Stored program concept
A program must be loaded into main memory to be executed by the processor
The instructions are fetched one at a time, decoded and executed sequentially by the processor
The sequence of instructions can only be changed by a condition or unconditional jump instruction 
### John von Neumann
The most common implementation of this concept is the von Neumann architecture
Instructions and data are stored in a common main memory and transferred using a single shared bus
Advantages:
- Almost all general purpose computes are based on von Neumann's principles
- Simplifies the design of the control unit
- Data from memory and from devices are accessed in the same way
### Harvard Architecture
Instructions and data are stored in separate memories
Program instructions are no longer competing for the same bus
Use cases:
Different sized memories and word lengths can be used for data and instructions
Harvard principles are used with embedded systems where speed takes priority over complexities of design
### Von Neumann vs Harvard
|von Neumann|Harvard|
|-|-|
|Used in general purpose computers|Used in embedded systems|
|Data and instructions share the same memory|Instructions and data are held in separate memories|
|Both use the same length|May Use different word lengths|
|One bus for data and instructions is a bottleneck|Separate buses allow parallel access to data and instructions|
|Control unit for two buses is more complicated and expensive|One bus is simpler for control unit design|
### Modern Processor Architectures
Modern CPU chips incorporate aspects of both architectures
Harvard is used in the cache where it is split into instructions and data
## CISC and RISC
### CISC
In Complex Instruction Set Computers (CISC), a large instruction set is used to accomplish tasks in as few lines of assembly language as possible
> A CISC instruction combines the "load/store" instruction with the actual instruction

A single instruction such as `MULT A, B` is capable of multiplying A by B and storing the result back in A
### RISC
Reduced Instruction Set Computers (RISC) take an opposing approach
A minimal number of simply instructions taking one clock cycle accomplish all required operations in multi-purpose registers
### CISC vs RISC
|CISC|RISC|
|-|-|
|Quicker to code|Hardware is simpler to build with fewer circuits|
|The compiler has very little work to do when translating|Pipelining is possible|
|Very little RAM is required to store the instruction|RAM is cheap and RISC use of RAM allow for better performance processors at less cost|
## Multi-core and Parallel Systems
Multi-core processors distribute tasks among the many processing cores and can process in parallel
They are known as __parallel systems__
### Using Parallel Processing
Software has to be written to take advantage of the multiple cores
In browsers, each tab may be processed simultaneously for example
### Co-processor Systems
A __co-processor__ is an extra processor used to supplement the functions of the main processor
Carries out a limited range of functions
### GPU
A Graphics Processing Unit (GPU) has thousands of small and efficient cores designed for parallel processing to manipulate computer graphics and image processing
A GPU may come in the form of a graphics card or on the CPU
The GPU can accelerate applications which require lots of parallel processing
## Processing
### Sequential Processing
Instructions are carried out, one at a time, in the order in which they were received
This is inherently slow
### Pipelining
The CPU is doing all of the parts of the FDE at the same time and overlaps them
This greatly improves performance
While pipeline 1 is doing 'Fetch', pipeline 2 is doing 'decode' on the previous instruction and pipeline 3 is executing the instruction before that.
### Arrays Processing
An array processor has several ALUs
This allows several elements of an array to be processed at the same time
A single instruction is issued by the control unit and that instruction is applied to a number of data sets at the same time
If the instructions rely on each other then you cannot use parallel processing
This dependency makes array processing hard to implement#
### Multi-core processing
Multiple instructions are working on multiple data sets
Each core carries out parts of the main task
The job scheduler is responsible for assigning these parts to each core
Not all problems can be broken down this way however
## Summary
- There are two main processor architectures
	- Von Neumann
	- Harvard
- There are two main types of instructions set
	- CISC
	- RISC
- Multicore systems which enable parallel processing are common
- GPUs are used for graphics processing and many other applications
- Parallel processing is the simultaneous processing of data
- Pipelining in a CPU is a form of parallel processing
- An array processor is an example of Single Instruction Multiple Data
- A multi-core processor is an example of Multiple Instruction Multiple Data
- Many problems cannot be made parallel because some parts depend on other parts
- It can be difficult to write code that makes optimal use of the multi-core CPUs
