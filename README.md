arnoldc-brainfuck2c
===================

This is a first attempt to produce a Brainfuck to C compiler in ArnoldC. A great part of the 
ArnoldC code had been generated using this https://github.com/aranega/uml2arnoldc UML generator (more than 90%).
The UML model used as generator input: http://repository.genmymodel.com/vincent.aranega/Brainfuck2C.

     $ sh ./ThisHeroStuffHasItsLimits.sh bf-example/hello.bf > hello.c
     $ gcc -o hello hello.c
     $ ./hello
     Hello World!

## Requirements

You should have `xxd` and the `ArnoldC.jar` from https://github.com/lhartikk/ArnoldC.

