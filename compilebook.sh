#! /bin/bash
outputfile=$1
CHAPTERS=$(for chapter in ../Manuscript/*.md ; do echo $chapter; done) 

if [ "$outputfile" == "" ]
then
  echo "You must provide a filename with appropriate extension (i.e. file.epub for ePub) for this to work!"
  exit
fi
pandoc $CHAPTERS ../Manuscript/metadata.yaml -s --toc -o Output/$outputfile
#cat ../Manuscript/* | pandoc -s -o Output/$outputfile --toc
open Output/$outputfile