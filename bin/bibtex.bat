:: copy all bst files to output directory
for %%A in (*.bst) do copy /y %%A output\%%A

:: copy all bib files to output directory
for %%A in (*.bib) do copy /y %%A output\%%A

:: Bibtex requires to be excuted in output path to work correctly
cd output
bibtex %1
cd ..
