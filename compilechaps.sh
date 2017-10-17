#! /bin/bash
extension=$1 

if [ "$extension" == "" ]
then
  echo "You didn't specify an extension, so I'm gonna assume you want PDFs!"
  extension="pdf"
fi
for chapter in ../Manuscript/*.md 
do 
    trimchap=${chapter:14}
    pandoc $chapter -s -o Output/${trimchap%.*}.${extension,,}
done