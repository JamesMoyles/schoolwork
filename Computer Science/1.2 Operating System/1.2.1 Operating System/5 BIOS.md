# 1.2.1.5 BIOS
## Booting
__Booting__ a computer is when you load important processes to RAM and give the CPU some instructions
Booting allows for the operating system to be loaded
The computer knows nothing at switch-on so booting needs to happen in small steps
The __BIOS__ (Basic Input Output System) is stored in ROM on the motherboard
It controls the start-up sequence for the computer

### Initial boot
- The power supply starts up
- If producing a steady output, a reset command is sent to the CPU
- The CPU's reset command is hard-coded and executes an instruction at a specific location in the BIOS chip
- This locating contains a __jump__ command that points to the starting address of the BOIS start-up program
- Booting is underway when the CPU starts processing the start-up program

### POST
The post is short for __Power On Self Test__ and it carries out a series of checks on the system
These checks include:
- System memory is OK
- System clock/timer is running
- Processor is OK
- Keyboard is present
- Screen display memory is working
- BIOS is not corrupted
If there is a problem, the motherboard will send a series of beeps through its internal speaker
These __beep codes__ will inform you of the problem

### After POST
BIOS initialises the video card so you see something on the monitor
Looks for other peripherals and signals them to start up
The BIOS contains hardware details for the computer
It will look for a __bootable drive__
It looks for flash devices and other portables first before checking the hard drive
You can change this search order within the BIOS config which can be brought up with a certain key press during start-up
Once a bootable drive is found the instructions in the __boot sector__ of that drive are executed in the CPU
The boot sector is the first region of storage that the computer will read on that device
On a hard disk the boot sector contains the __Master Boot Record__
The MBR is a table indicating where the partitions are located on that hard disk
The CPU needs to know this because it needs to jump to the boot sector of that partition before it can carry on
The MBR points the CPU to the __primary partition__ on the hard disk
This contains the OS
The CPU will now execute the code in the boot sector of the primary partition
This is called the __boot loader__
The boot loader will load all the OS kernel into memory
Device drivers are then loaded
The GUI is then loaded with personal settings
## Safe Mode
If there is some problem with the OS setup (a corrupt driver for example)
Usually the F8 key can be pressed and the boot loader will load the OS in __safe mode__
This is a stripped down version of the OS and only contains the vital device drivers
Even the resolution is turned down so it can work on older monitors
You can then attempt to rectify the problem with the pc

## Summary
- Booting is the process of loading the OS of a computer
- The BIOS checks out the hardware and finds a bootable drive then launching the boot loader
- The boot loader on the drive loads the operating system kernel and device drivers into main memory

Dynamic RAM (DRAM) is the most common form of volatile memory with each memory cell needing a refresh signal in order to maintain the data on it
This timing is called the __refresh cycle__ and is set up in the BIOS
