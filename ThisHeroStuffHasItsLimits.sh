#!/bin/sh

prelude=fullprelude
postlude=fullpostlude
decode=fulldecode

JAR=ArnoldC.jar

#echo "Merging files..."
cat mainPrelude.arnoldc > $prelude.arnoldc
cat prelude.arnoldc >> $prelude.arnoldc
cat stateLib.arnoldc >> $prelude.arnoldc

cat mainDecode.arnoldc > $decode.arnoldc
cat decode.arnoldc >> $decode.arnoldc
cat stateLib.arnoldc >> $decode.arnoldc

cat mainPostlude.arnoldc > $postlude.arnoldc
cat postlude.arnoldc >> $postlude.arnoldc
cat stateLib.arnoldc >> $postlude.arnoldc

#echo "Compiling files..."
java -jar $JAR $prelude.arnoldc
java -jar $JAR $decode.arnoldc
java -jar $JAR $postlude.arnoldc

#echo "Launching..."
java $prelude

bfprog=$(xxd -c 1 -ps $1 | xargs -I {} printf '%d ' 0x{})
for i in $bfprog
do
    echo $i | java  $decode
done

java $postlude

rm $prelude* $postlude* $decode*
 
