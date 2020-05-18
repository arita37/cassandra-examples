#!/bin/bash

for f in ~/CLONES/cassandra/doc/source/development/*.rst
do
    filename=$(basename "$f")
    filename="${filename%.*}"
    echo "Processing $filename"
    pandoc "$f" -f rst -t asciidoc -s -o "$filename.adoc"
done
