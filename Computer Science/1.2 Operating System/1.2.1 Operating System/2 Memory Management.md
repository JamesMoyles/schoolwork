# 1.2.1.2 Memory Management
### Purpose of Memory Management
Memory is a very vital resource for a computer to manage
All software runs in memory and all data is stored in some form of memory
The amount of memory required is vastly different depending on the use case
### Memory Manager
The memory manager is part of the operating system
It allows for many processes to run at the same time without interfering with each other assigning each process its own private area of memory
## Forms of Memory Management
### Segmentation
When an executable application is loaded into main memory it becomes a process
For the process to run is requires memory
The operating system allocated memory in a certain way
This is called __segmentation__
|Conceptualisation of memory segmentation|
|:-:|
|Stack Segment|
|Free Memory|
|Data Segment|
|Code Segment|
> This is just a conceptualisation, the data segment does not have to be physically next to the code segment

#### Stack Segment
The stack allows a program to use functions and subroutines
It works by storing the original address of the instruction that call the subroutine and then jumping back to it when the subroutine call is complete
#### Free Memory
The stack will grow and shrink as subroutines are used by the program
Free memory is allocated memory for the stack to grow and shrink as necessary
#### Data Segment
This is where all the variables that the program will use are stored
#### Code Segment
This is where the program instructions for the process are stored
### Virtual Memory
When main memory gets full, the memory manager will have to allocate sections of secondary storage to act as main memory
Virtual memory is very slow
### Pagination
Pagination is the idea of dividing memory into equal sized 'pages' which can be swapped in and out of main memory
There will be millions of these pages defined within memory
#### Page Addressing
The memory manager splits memory into these pages
Every page is numbered and the first address of each page is held in a page table
As main memory fills up, some pages are stored in virtual memory
Data is fetched with an offset method

#### Paging File
The operating system creates a paging file in virtual memory and it holds the pages which the CPU does not need to access data from immediately
The paging file is re-created each time the computer is switched on which makes virtual memory volatile
__The paging file holds:__
- The page number
- Whether or not the page is in main memory
- The first address in the page

###  Pagination vs Segmentation
__They both:__
- Divide up memory
- Managed by memory manager in OS
- They do not physically divide memory, they just manage it
__Where they differ:__

|Pagination|Segmentation|
|-|-|
|Only used if virtual memory is needed|Always used|
|Used to swap data in and out of vm|Used to load and unload processes|
|A page is a fixed size|The size of a segment varies|
|Not divided into smaller elements|Divided into smaller elements|
|Pages are next to each other in memory|Segments are not|

## Memory Issues
Most of the time, the memory manager runs smoothly, however, sometimes things to go wrong resulting in crashes or a slow computer
### Disk Thrashing
Disk thrashing may occur when virtual memory is in heavy use
The hard disk head is many times slower than RAM
At a point, there is more time being spent on swapping pages than on processing data
This can be fixed by installing more RAM
### Memory Leaks
If a program does not flush its data once it is no longer needed, the memory manager will still think that that portion of memory is still being used
This causes the computer to run slower
Writing programs well and rebooting to clear memory fix this
### Stack Overflow
When a program uses many subroutines and calls them within other subroutines it can cause the stack segment to exceed the maximum allowed size
It will cause an error
This can be fixed by writing programs correctly
