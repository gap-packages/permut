LoadPackage("permut");
path := Directory("/home/estebanr/Baixades/gap4r8p10/pkg/permut/doc");;
main:="permut.xml";;
files:=["../lib/permut.gd", "../lib/psoluble.gd", "../lib/permut.gi", "../lib/psoluble.gi"];;
bookname:="permut";;

MakeGAPDocDoc( path, main, files, bookname);
