"%R%" CMD INSTALL --build --no-html .
if errorlevel 1 exit 1

mkdir "%PREFIX%\share\jupyter\kernels\ir"
if errorlevel 1 exit 1

xcopy /s inst\kernelspec\* "%PREFIX%\share\jupyter\kernels\ir\"
if errorlevel 1 exit 1
