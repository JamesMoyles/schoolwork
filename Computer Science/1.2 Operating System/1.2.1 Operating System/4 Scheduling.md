
# 1.2.1.4 Scheduling
In a multi-tasking computer, many programs may be running simultaneously
Each program needs to run without noticeable delay
This is made possible using scheduling
There are 5 algorithms for scheduling we need to know
## Purpose of scheduling
The task of allocating processor time among running processes
It is done through a part of the operating system known as the scheduler
The scheduler ensures the computer:
- Processes as many tasks as possible
- Makes maximum use of the CPU time
- Makes maximum use of resources such as IO devices
- No task is left uncompleted for too long (even low priority tasks)
- Can alter priorities as needed

## Algorithms
### Round Robin
A queue holding all processes that are ready to run is made
Each process is given an equal amount of CPU time
If the process cannot complete in the given number of cycles, the process joins the back of the queue
If the task completes before the given number of cycles, the next process in queue is loaded immediately

|Advantages|Disadvantages|
|-|-|
|<li>Simple to implement</li>|<li>Does not take into account process priority or length</li>|

### First Come First Served
A queue holding all processes that are ready to run is made
Each process is allowed to run to completion
New processes are loaded into memory whenever space is available

|Advantages|Disadvantages|
|-|-|
|<li>Simple to implement</li>|<li>Does not take into account process priority or length</li><li>A long and low priority job may hold up short and high priority jobs</li>|

### Shortest Job First
The processes are arranged in a queue in order of processing time and run to completion (if not interrupted) with the fewest cycles going first
> If a task joins the queue and is shorter than all the tasks in it, the current task will be interrupted and it will be completed first

|Advantages|Disadvantages|
|-|-|
|<li>Ensures the maximum number of jobs are completed within a given time</li><li>Long processes don't tie up CPU resources</li><li>Minimises average time for a process to be completed</li>|<li>Does not take into account process priority</li><li>Even if a long job is nearly complete a short job joining will interrupt it</li><li>The scheduler can only estimate processing time and may not be accurate</li><li>Long jobs may never complete as they get consistently jumped</li>|

### Shortest Time Remaining
The processes are arranged in a queue in order of processing time remaining and run to completion with the fewest cycles going first (if not interrupted)
If a task joins the queue and is shorter than the remaining time of all the other tasks in the queue, the current task will be interrupted and it will be completed first

|Advantages|Disadvantages|
|-|-|
|<li>Allows short processes to be handled very quickly</li><li>It ensures the maximum number of jobs are completed within a given time</li><li>Takes into account processes that are partially completed</li>|<li>Does not take into account process priority</li><li>Even if a long job is nearly complete a short job joining will interrupt it</li><li>The scheduler can only estimate processing time and may not be accurate</li><li>Long jobs may never complete as they get consistently jumped</li>|

### Multi-Level Feedback Queues
This algorithm creates several queues of different priorities
As a task comes along it is sorted into its relative priority queue
The queues themselves will use one of the aforementioned algorithms
The scheduler may reprioritise jobs at any time, this may be done if:
- A new priority is assigned to a task
- The task has been waiting for too long

|Advantages|Disadvantages|
|-|-|
|<li>Makes sophisticated use of priorities</li>|<li>Complex to implement</li><li>Not very efficient if all jobs have similar priority</li><li>Low priority jobs may take an extremely long time to complete if the queue algorithm does not compensate for wait-time</li>|

### Use of the Algorithms
There is no best algorithm, they are used interchangeably to allow for the fastest possible processing time
Each different type of computer will have a different sort of design for their schedulers to allow for the system to run as efficiently as possible

## Summary
- A program loaded into memory is called a 'process'
- The 'scheduler' has the task of sharing CPU processing time amongst processes
- Round robin gives each process equal processing time
- First come first served allows each process to run to completion
- Shortest job first tries to maximise the number of jobs completed in a given time
- Shortest time remaining tries to complete as many processes as possible
- Multi-level feedback queues make sophisticated use of priority levels
- There is no perfect scheduling algorithm
