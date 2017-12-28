#! /bin/bash
outputfile=$1
CHAPTERS=$(for chapter in ../Manuscript/*.md ; do echo $chapter; done) 
FONT="./Styles/Fonts/Literata/literata*.woff"
if [ "$outputfile" == "" ]
then
  echo "You must provide a filename with appropriate extension (i.e. file.epub for ePub) for this to work!"
  exit
fi
pandoc $CHAPTERS ../Manuscript/metadata.yaml -s --toc --epub-embed-font=$FONT -o Output/$outputfile
# To embed fonts...
# pandoc $CHAPTERS ../Manuscript/metadata.yaml -s --toc -o Output/$outputfile --epub-embed-font="Styles/Fonts/Ubuntu/Ubuntu-*.ttf"
#cat ../Manuscript/* | pandoc -s -o Output/$outputfile --toc
open Output/$outputfile