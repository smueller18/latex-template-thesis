IF NOT EXIST output (call bin\clean-output.bat)

call bin\pdflatex.bat %1
call bin\bibtex.bat %1
call bin\makeglossaries.bat %1
call bin\pdflatex.bat %1
call bin\pdflatex.bat %1
