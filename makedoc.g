##  This builds the documentation of the permut package
##  Needs: GAPDoc package, latex, pdflatex, mkindex
##  
##  Call this with GAP from within the package directory.

if fail = LoadPackage("AutoDoc", ">= 2019.07.17") then
    Error("AutoDoc 2019.07.17 or newer is required");
fi;

AutoDoc(rec( scaffold := rec( MainPage := false )));
