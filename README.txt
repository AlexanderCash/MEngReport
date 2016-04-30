This is a LaTeX class that should handle the MEng project requirements
for the Electronics Department of the University of York. 
=========================================================

To compile it on Linux, run:
	./build.sh MEngProject
	
To delete all build files, run:
	./clean.sh
	
===============================

To compile it on Windows, run:
  BUILD.bat MEngProject
   
And to delete all files run:
  CLEAN.bat
   
===============================
	
To compile it on other machines, it may be a bit of a faff. You need to
run, in this order:

pdflatex MEngProject.tex
makeglossaries MEngProject
for i in all *.aux files
{ 
  bibtex i 
}
pdflatex MEngProject.tex
pdflatex MEngProject.tex


