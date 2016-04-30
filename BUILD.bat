pdflatex %1.tex
makeglossaries %1
for %%f in (*.aux) do (bibtex %%~nf.aux)
pdflatex %1.tex
pdflatex %1.tex
