# 1.2.2.3 Types of Language
## Translators
### Assembler
Computers execute machine code which is difficult for humans to read, write and debug as it is comprised of 1's and 0's
Assembly language has mnemonics for instructions that are equivalent to machine code but are easier to work with
Translating assembly instructions uses an assembler
Each processor has its own instruction set and so the object code will be hardware specific
### Compiler
A compiler translates a whole program written in a high level language into executable machine code
This requires several stages
The resulting machine code is called object code
The object code produced is hardware specific
### Interpreter
An interpreter translates program code that is written in a high level to machine code and goes line by line rather than translating the whole progam before execution
### Comparison
|Compiler|Interpreter|
|-|-|
|Program can be run many times without needing to be recompiled|Source code can be run on any machine with an interpreter|
|Faster to execute|If a small error is found, no need to recompile the entire program|
|Executable code does not require the interpreter to run|Requires the interpreter to run|
|Compile cannot be easily copied|Errors are less obscure|

An interpreter is useful for program development as parts of the program can be tested without having to recompile
## Compilation
### Bytecode
Most languages do not use just one form of translation
They are most commonly compiled into an intermediary language called bytecode and then interpreted into machine code in a virtual machine
### Stages of compilation
There are many stages to convert source code to object code
They include:
- Lexical analysis
- Symbol table
- Syntax analysis
- Semantic analysis
- Code generation
#### Lexicon
In programming a lexicon is a set of terms, called keywords that the compiler is designed to understand
Compilers for each language will have different lexicons, containing the keywords used by that language
#### Lexical analysis
The compiler breaks down the string of ASCII characters into its component parts called lexemes
First, the compiler finds the keywords and tries to connect the characters between the keywords to find new lexemes
It does this by looking for a character that separates one item from the next (typically a space)
Comments are removed
Some minor error checking will take place such as illegal identifier
It pickms up the identifiers for the procedures, variables and constants
Keywords are replaced with tokens representing their function in the program
#### Symbol Table
The lexer will build a symbol table for every keyword and identifier in the program
The symbol table helps to keep track of the run-time memory address for each identifer
#### Syntax Analysis
The tokens from the lexing stage are split up into phrases
This stage is called syntactic anlysis of parsing
Each phrase is parsed which means that it is checked against the rules of the langauge
If the phrase is not valid, an error will be recorded
This ensures that the way the tokens are arranged makes sense in the grammar of the language
#### Semantic Analysis
It is possible to make a sequence of tokens that has valid syntax but is not a valid program
Semantic analysis checks for this
If and identifier has not been defined then the code can be syntactically correct but the program is invalid because the identifier is invalid
#### Syntax Rules
The grammatical rules of the programming language
Syntax rule can be drawn as a syntax diagram
#### Code Generation
Once the program has been checked the compiler generates the machine code
Each token from the previous stages is converted into machine code instructions
Another task of the code generation stage is to allocate memory locations to the tokens that were noted as variables and constant during lexical analysis
The code generator also works out relative addresses for jumping around within the program
For example, an if statement might cause the program to jump to different points if a condition is met
The relative addreses of easch of these jumps are made explicit in machine code during code generation
Several passes may need to happen because code optimisation will take place
#### Code Optimisation
Source code may be written inefficiently
Removes redundant instructions
Replaces inefficient code with code that achieves the same result but in a more efficient way
Compilers are usually optimised for speed or memory efficiency

## Libraries
### Libraries
Most languages have sets of pre-written and compiled functions called libraries
Examples could include functions for mathematical oeprations
A programmer can also write their own libraries
Library functions can be called within a program
### Linker
The linker needs to put the appropriate mem addresess in place so that the program can call and return from a library function
### Loader
The job of the loader is to copy the program and any linked subroutines into main mem to run
When the exe code was created it may assume the program will load in mem address 0
However, memory addresses in the program will need to be relocated by the loader because some memory will already be in use
## Plenary
- An assembler converts low level code to machine code
- Compilers and interpreters convert from high level code to machinec code
- Many languages convert source code to an intermediate stage called bytecode
- When a program is lexed, syntactically and semantically analysed, and optimised before executable code if generated
- Code from other files called libraries can be used
- Libraries are linked to the exe code by the linker
- The loader copies the exe code into main mem and adjusts the mem addresses