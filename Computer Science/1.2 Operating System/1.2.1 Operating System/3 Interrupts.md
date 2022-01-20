
# 1.2.1.3 Interrupts
### Purpose of Interrupts
It allows for the CPU to react to events regardless of what it is doing at the time of the request
IO devices need to be handled as soon as their events are happening
For example, the CPU would have to be able to react to a mouse movement instantly even if it is trying to process a PowerPoint at that current moment in time
The two methods of handling these signals from predominantly IO are
- Polling
- Interrupts

## Polling
The CPU checks the status of all the devices on a schedule to see if they require any attention or not

|Advantage|Disadvantage|
|-|-|
|Simple and predictable|Inefficient for the CPU|

## Interrupts
The device sends an interrupt signal to the CPU to stop what it is doing and process the interrupt task
The CPU then resumes the task it was carrying out previously
> The interrupt of higher priority is processed first

|Advantage|Disadvantage|
|-|-|
|Immediate response|The processing cost of the context switch|
|Efficient|Complex to code|

### Interrupts in the CPU
The CPU cannot process the interrupt with all its registers storing the information for the current task which needs to go somewhere
The data values in the registers of the CPU are copied over into the stack in main memory
Once the interrupt is handled, the registers are loaded back with their original values that are loaded back in from the stack and the CPU can continue from where it left off
Instructions jumping from current CPU operations to the ISR and back again is called __context switching__
### ISR
The interrupt service routine (ISR) is the set of instructions that have to be carried out when the corresponding event occurs
Steps for handling an interrupt
- IO signal
- Interrupt controller in motherboard detects the signal
- The interrupt controller send an interrupt signal to the CPU
- The CPU receives the interrupt signal
- And exact copy of the registers in the CPU at that moment are stored in the stack
- The CPU starts executing the interrupt service routine
- Interrupt service routine completes
- CPU loads the registers back up with their original values

### Interrupt Priorities
|Interrupt|Example|
|-|-|
|Hardware commands|Power supply failure|
|Program/Software|An error has occurred in a piece of software and it can be sent to the CPU to be handled|
|Timer|A screen recording where every frame the screen has to be captured|
|IO Devices|Mouse click updates|

### Interrupt problems
There are two problems associated with interrupts
#### Latency
The CPU needs to be able to deal with all the interrupt requests that are happening
For example, in a car's computer, it would need to be able to handle many inputs at the same time (throttle, brakes)
#### Stack Overflow
There may be too many interrupts stored in the stack
This will result in a stack overflow if it exceeds the allocated memory in free memory
This is one of the complications with interrupts and highlights why polling may be more effective in certain use cases

## Summary
- The CPU needs to respond to events by suspending currently running processes
- Polling is when the CPU regularly checks an even or peripheral for attention
- An interrupt signal tells the CPU to suspend its current task and carry out the interrupt task
- The CPU checks for interrupts at the end of the FDE cycle
- All registers are copied into the stack before the ISR is carried out
- Copying of registers and jumping to ISR is called __context switching__
- There is an ISR for each input
- Interrupts are arranged in priority order
- Higher priority interrupts can interrupts lower priority ones
- The time taken for an interrupt to be handled is called latency
- Stack overflow may occur if too many interrupts suspend other inputs in the stack
