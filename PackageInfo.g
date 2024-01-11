#############################################################################
##
#W  PackageInfo.g              Permutability GAP library          ABB&ECL&RER
##
##
#Y  Copyright (C)  2000-2022 Adolfo Ballester-Bolinches, Enric Cosme-Ll\'opez and
#Y                           Ramon Esteban-Romero
##
##
SetPackageInfo( rec(
                     PackageName := "permut",
                     Subtitle:= "A package to deal with permutability in finite groups",
                     Date:="11/01/2024", # dd/mm/yyyy format
                     License :="GPL-2.0-or-later",
                     Version := "2.0.5",
                     SourceRepository := rec(
                                              Type := "git",
                                              URL := Concatenation( "https://github.com/gap-packages/", ~.PackageName ),
                                             ),
                     IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
                     SupportEmail   := "Ramon.Esteban@uv.es",
                     PackageWWWHome  := "https://gap-packages.github.io/permut/",
                     PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
                     README_URL      := Concatenation( ~.PackageWWWHome, "README.md" ),
                     ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                                       "/releases/download/v", ~.Version,
                                                       "/", ~.PackageName, "-", ~.Version ),
                     
                     ArchiveFormats := ".tar.gz .tar.bz2 .zip",
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
                                     PostalAddress:=Concatenation(
                                                                  ["Departament de Matemàtiques\n",
                                                                   "Universitat de València\n",
                                                                   "Dr. Moliner, 50\n",
                                                                   "46100 Burjassot, València, Spain"]),
                                     Place:="Burjassot, València",
                                     Institution:="Departament de Matemàtiques, Universitat de València"
                                    ),
                                rec(
                                     LastName:="Cosme-Llópez",
                                     FirstNames:="Enric",
                                     IsAuthor:=true,
                                     IsMaintainer:=false,
                                     WWWHome:="https://www.uv.es/coslloen",
                                     Email:="Enric.Cosme@uv.es",
                                     PostalAddress:=Concatenation(
                                                                  ["Departament de Matemàtiques\n",
                                                                   "Universitat de València\n",
                                                                   "Dr. Moliner, 50\n",
                                                                   "46100 Burjassot, València, Spain"]),
                                     Place:="Burjassot, València",
                                     Institution:="Departament de Matemàtiques, Universitat de València"
                                    ),
                                rec(
                                     LastName:="Esteban-Romero",
                                     FirstNames:="Ramón",
                                     IsAuthor:=true,
                                     IsMaintainer:=true,
                                     WWWHome:="https://www.uv.es/estebanr",
                                     Email:="Ramon.Esteban@uv.es",
                                     PostalAddres:=Concatenation(
                                                                  ["Departament de Matemàtiques\n",
                                                                   "Universitat de València\n",
                                                                   "Dr. Moliner, 50\n",
                                                                   "46100 Burjassot, València, Spain\n"]),
                                     Place:="Burjassot, València",
                                     Institution:="Departament de Matemàtiques, Universitat de València"
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
                                        HTMLStart :="doc/chap0_mj.html",
                                        PDFFile:="doc/manual.pdf"),
                     TestFile  := "tst/testall.g"
                                      
                                      
                    ) );
