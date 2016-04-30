pdflatex $1 || exit 1;
makeglossaries $1 
for i in `ls *.aux` 
do 
  bibtex $i 
done
pdflatex $1 || exit 1;
pdflatex $1 || exit 1;

