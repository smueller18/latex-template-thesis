SET output=output

IF NOT EXIST %output% (mkdir %output%) else (
  :: clear if folder already exists
  del %output%\* /F /Q
  for /d %%p in (%output%\*) Do rmdir /Q /S "%%p"
)

:: create output directories
for /d %%A in (0*) do mkdir %output%\%%A
