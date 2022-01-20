# 1.2.2.4 Programming Language Translators
## Translators
### Assemblers
Computers execute machine code which is very difficult for humans to understand as it is just 1's and 0's\
Assembly code instructions are equivalent to machine code but are mnemonics to make it easier for humans to understand\
An assembly instruction may look like this: `LDA 5`\
Assembly is a low level language and translating code into machne code is done by an assembler\
Because each processor has its own instruction set, the object code produced will be hardware specific
### Compiler
A compiler translates a whole program that is written in a high level language into executable machine code through the use of many stages\
An example of a compiled language is C\
The resulting machine code is called object code\
The object code is hardware specific
### Interpreter
An interpreter translates a program, written in a high level program, line by line and executes it

|Compiler|Interpreter|
|-|-|
|You don't have to recompile when you have the exe|Code can be run on any machine with an interpreter|
|Faster|No need to recompile the whole program on error|
|The exe does not need the interpreter on the device to run||
|Compiled cannot be easily read even with a decompiler||

## Bytecode
Most languages are both compiled and interpreted\
For example, java is compiled to bytecode and then interpreted to machine code use the java virtual machine\

Source code -> Compiler -> Bytecode -> Bytecode interpreter -> Object code

## Stages of Compilation

### Lexical Analysis
Splits up the stream of ASCII characters making up the program into lexemes\
It splits the program up by separators which are typically spaces or semicolons\
Comments are removed\
There is some error checking that happens such as illegal identifier (variable name)\
The lexer builds a symbol table for every keyword and identifier in the program and keep track of the run time memory address for each identifier

### Syntax Analysis
The tokens from lexing are split into phrasing\
This stage is also known as parsing\
Checks the structure of the code to make sure that it agrees with the rules of the language\
If a phrase is not valid then an error will be recorded

### Semantic Analysis
You can create a sequence of tokens that have valid syntax but don't create a valid program\
If an identifier is not previously declared before it has been used then it is not a semantically valid program

### Code Generation
Once the code has been chcked the compiler turns the program into machine code\
Each token from the previous steps is converted into machine code\
It allocates memory locations to tokens when they were flagged as variables and constants during lexing\
The compiler will also figure out the relative addresses for jumping around a program

### Code Optimisation
- Remove redundant instructions
- Replace inefficient code with code that achieves the same result in a more efficient manner
Compilers will either optimise speed or memory as it is often hard to optimise for both
