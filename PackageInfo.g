#############################################################################
##
#W  PackageInfo.g              Permutability GAP library          ABB&ECL&RER
##
##
#Y  Copyright (C)  2000-2018 Adolfo Ballester-Bolinches, Enric Cosme-Ll\'opez and
#Y                           Ramon Esteban-Romero
##
##
SetPackageInfo( rec(
                     PackageName := "permut",
                     Subtitle:= "A package to deal with permutability in finite groups",
                     Date:="11/02/2018",
                     Version := "1.04",
                     SourceRepository := rec(
                                              Type := "git",
                                              URL := Concatenation( "https://github.com/gap-packages/", ~.PackageName ),
                                             ),
                     IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
                     SupportEmail   := "Ramon.Esteban@uv.es",
                     PackageWWWHome  := "https://gap-packages.github.io/permut/",
                     PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
                     README_URL      := Concatenation( ~.PackageWWWHome, "README.permut" ),
                     ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                                       "/releases/download/v", ~.Version,
                                                       "/", ~.PackageName, "-", ~.Version ),
                     
                     ArchiveFormats := ".tar.gz",
                     AbstractHTML:="This package provides functions for computing with permutability in finite groups.",
                     Status:="accepted",
                     ##  You must provide the next two entries if and only if the status is 
                     ##  "accepted":
                     # format: 'name (place)'
                     CommunicatedBy := "Alice Niemeyer (Perth)",
                     # format: mm/yyyy
                     AcceptDate := "04/2014",
                     Persons:=[
                                rec(
                                     LastName:="Ballester-Bolinches",
                                     FirstNames:="Adolfo",
                                     IsAuthor:=true,
                                     IsMaintainer:=false,
                                     Email:="Adolfo.Ballester@uv.es",
                                     PostalAddres:=Concatenation(
                                                                  ["Adolfo Ballester-Bolinches\n",
                                                                   "Departament de Matem\\`atiques\n",
                                                                   "Universitat de Val\\`encia\n",
                                                                   "Dr.\\ Moliner, 50\n",
                                                                   "46100 Burjassot, Val\\`encia, Spain"]),
                                     Place:="Burjassot, Val\\`encia",
                                     Institution:="Departament de Matem\\`atiques, Universitat de Val\\`encia"
                                    ),
                                rec(
                                     LastName:="Cosme-Ll\\'opez",
                                     FirstNames:="Enric",
                                     IsAuthor:=true,
                                     IsMaintainer:=false,
                                     WWWHome:="https://www.uv.es/coslloen",
                                     Email:="Enric.Cosme@uv.es",
                                     PostalAddres:=Concatenation(
                                                                  ["Enric Cosme-Ll\\'opez\n",
                                                                   "Departament de Matem\\`atiques\n",
                                                                   "Universitat de Val\\`encia\n",
                                                                   "Dr.\\ Moliner, 50\n",
                                                                   "46100 Burjassot, Val\\`encia, Spain"]),
                                     Place:="Burjassot, Val\\`encia",
                                     Institution:="Departament de Matem\\`atiques, Universitat de Val\\`encia"
                                    ),
                                rec(
                                     LastName:="Esteban-Romero",
                                     FirstNames:="Ram\\'on",
                                     IsAuthor:=true,
                                     IsMaintainer:=true,
                                     WWWHome:="https://www.uv.es/estebanr",
                                     Email:="Ramon.Esteban@uv.es",
                                     PostalAddres:=Concatenation(
                                                                  ["Ramon Esteban-Romero\n",
                                                                   "Departament de Matem\\`atiques\n",
                                                                   "Universitat de Val\\`encia\n",
                                                                   "Dr.\\ Moliner, 50\n",
                                                                   "46100 Burjassot, Val\\`encia, Spain\n",
                                                                   "Permanent: \n",
                                                                   "Institut Universitari de Matem\\`atica Pura i Aplicada\n",
                                                                   "Universitat Polit\\`ecnica de Val\\`encia\n",
                                                                   "Cam{\\'\\i} de Vera, s/n\n",
                                                                   "46022 Val\\`encia, Spain"]),
                                     Place:="Burjassot, Val\\`encia",
                                     Institution:="Departament de Matem\\`atiques, Universitat de Val\\`encia"
                                    )
                     ],
                     
                     Keywords:=[
                                 "permutability", "PT-group", "PST-group",
                                 "T-group", "mutually permutable", "totally permutable",
                                 "Dedekind group", "Iwasawa group"
                     ],
                     Dependencies:=
                     rec(
                          GAP := "4.7.4",
                          NeededOtherPackages:=[["format", "1.3"]],
                          SuggestedOtherPackages:=[],
                          ExternalConditions:=[]
                         ),
                     AvailabilityTest := ReturnTrue,
                     PackageDoc := rec(
                                        BookName  := "PERMUT",
                                        LongTitle := "PERMUT: A package to deal with permutability in finite groups",
                                        SixFile   := "doc/manual.six",
                                        ArchiveURLSubset:=["doc"],
                                        HTMLStart :="doc/chap0.html",
                                        PDFFile:="doc/manual.pdf"),
                     TestFile  := "tst/testall.g"
                                      
                                      
                    ) );
