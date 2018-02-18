LoadPackage("permut");
path := Directory("doc");;
main:="permut.xml";;
files:=["../lib/permut.gd", "../lib/psoluble.gd", "../lib/permut.gi", "../lib/psoluble.gi"];;
bookname:="permut";;
gaproot:="../..";;


MakeGAPDocDoc( path, main, files, bookname, gaproot);
