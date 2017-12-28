#! /bin/bash
extension=$1 
FONT="./Styles/Fonts/Literata/literata*.woff"
if [ "$extension" == "" ]
then
  echo "You didn't specify an extension, so I'm gonna assume you want PDFs!"
  extension="pdf"
fi
for chapter in ../Manuscript/*.md 
do 
    trimchap=${chapter:14}
    pandoc $chapter -s --epub-embed-font=$FONT -o Output/${trimchap%.*}.${extension,,}
done