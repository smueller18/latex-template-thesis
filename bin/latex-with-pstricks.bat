latex -synctex=1 -interaction=batchmode -output-directory output %1
dvips -q* -o output\%1-pics.ps output\%1.dvi
ps2pdf output\%1-pics.ps %1-pics.pdf

pdflatex -synctex=1 -interaction=batchmode -output-directory output %1
