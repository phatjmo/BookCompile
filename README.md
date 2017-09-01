This is a book compiler script that utilizes Pandoc (www.pandoc.org) to convert a book project written in markdown to a variety of formats such as ePub, ODF and PDF.

Clone this project or create it as a submodule in a folder called "BookCompile". Locate your chapter files in an adjacent folder called "Manuscript". Use the sample template ePUB Metafile ePub.yml to specify the metadata for your book, such as the cover image location.

Name your Manuscript MD files beginning with a zero-based order number as you wish them to be organized in your Book. (I.e. "01_MyStoryBegins.md"). Make sure there is a line at the beginning or end of the document otherwise pandoc mushes them in an odd way and escapes all the formatting.

Makefile is WIP...