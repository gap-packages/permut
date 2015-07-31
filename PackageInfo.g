#############################################################################
##
#W  PackageInfo.g              Permutability GAP library          ABB&ECL&RER
##
#H  @(#)$Id: PackageInfo.g,v 1.03 2015/07/30 16:20:39 gap Exp $
##
#Y  Copyright (C)  2000-2015 Adolfo Ballester-Bolinches, Enric Cosme-Ll\'opez and
#Y                           Ramon Esteban-Romero
##
##
SetPackageInfo( rec(
        PackageName := "permut",
        Subtitle:= "A package to deal with permutability in finite groups",
        Date:="30/07/2015",
        PackageInfoURL:="http://www.uv.es/permut/gap/permut/PackageInfo.g",
        AbstractHTML:="This package provides functions for computing with permutability in finite groups.",
        Version := "1.03",
        README_URL := Concatenation(
                              [
                               "http://www.uv.es/permut/gap/permut-",
                               ~.Version,
                               "/README.permut"
                               ]
                              ),
                      PackageWWWHome:=Concatenation(
                              ["http://www.uv.es/permut/gap/permut-",
                             ~.Version, 
                             "/"]
                            ),
                    ArchiveFormats := ".tar.bz2",
                    ArchiveURL := Concatenation(
                              [
                               ~.PackageWWWHome,
                               "permut-",
                               ~.Version
                               ]
                              ),
                      
                      Status:="accepted",
                      ##  You must provide the next two entries if and only if the status is 
                      ##  "accepted":
                      # format: 'name (place)'
                      CommunicatedBy := "Alice Niemeyer (Perth)",
                      # format: mm/yyyy
                      AcceptDate := "04/2014",
                      BannerString:= Concatenation( [
                              "#I --------------------------------------------------------\n",
                              "#I Loading the GAP package ``",
                              ~.PackageName,
                              "'' in version ",
                              ~.Version, "\n",
                              "#I (a package to deal with permutability in finite groups)\n",           
                              "#I by Adolfo Ballester-Bolinches <Adolfo.Ballester@uv.es>,\n",
                              "#I    Enric Cosme-Ll\\'opez <Enric.Cosme@uv.es>,\n",
                              "#I    and Ramon Esteban-Romero <Ramon.Esteban@uv.es> /\n",
                              "#I                             <resteban@mat.upv.es>.\n",
                              "#I\n#I\n#I    Use ``?permut:'' for help.\n",
                              "#I --------------------------------------------------------\n","\n"
                              ] ),
                      Persons:=[
                              rec(
                                LastName:="Ballester-Bolinches",
                                FirstNames:="Adolfo",
                                IsAuthor:=true,
                                IsMaintainer:=false,
                                Email:="Adolfo.Ballester@uv.es",
                                PostalAddres:=Concatenation(
                                        ["Adolfo Ballester-Bolinches\n",
                                         "Departament d'\\`Algebra\n",
                                         "Universitat de Val\\`encia\n",
                                         "Dr.\\ Moliner, 50\n",
                                         "46100 Burjassot, Val\\`encia, Spain"]),
                                Place:="Burjassot, Val\\`encia",
                                Institution:="Departament d'\\`Algebra, Universitat de Val\\`encia"
                                ),
                            rec(
                                LastName:="Cosme-Ll\\'opez",
                                FirstNames:="Enric",
                                IsAuthor:=true,
                                IsMaintainer:=false,
                                WWWHome:="http://www.uv.es/coslloen",
                                Email:="Enric.Cosme@uv.es",
                                PostalAddres:=Concatenation(
                                        ["Enric Cosme-Ll\\'opez\n",
                                         "Departament d'\\`Algebra\n",
                                         "Universitat de Val\\`encia\n",
                                         "Dr.\\ Moliner, 50\n",
                                         "46100 Burjassot, Val\\`encia, Spain"]),
                                Place:="Burjassot, Val\\`encia",
                                Institution:="Departament d'\\`Algebra, Universitat de Val\\`encia"
                                ),
                            rec(
                                LastName:="Esteban-Romero",
                                FirstNames:="Ram\\'on",
                                IsAuthor:=true,
                                IsMaintainer:=true,
                                WWWHome:="http://www.uv.es/estebanr",
                                Email:="Ramon.Esteban@uv.es",
                                PostalAddres:=Concatenation(
                                        ["Ramon Esteban-Romero\n",
                                         "Departament d'\\`Algebra\n",
                                         "Universitat de Val\\`encia\n",
                                         "Dr.\\ Moliner, 50\n",
                                         "46100 Burjassot, Val\\`encia, Spain\n",
                                         "Permanent: \n",
                                         "Institut Universitari de Matem\\`atica Pura i Aplicada\n",
                                         "Universitat Polit\\`ecnica de Val\\`encia\n",
                                         "Cam{\\'\\i} de Vera, s/n\n",
                                         "46022 Val\\`encia, Spain"]),
                                Place:="Burjassot, Val\\`encia",
                                Institution:="Departament d'\\`Algebra, Universitat de Val\\`encia"
                                )
#                              ,
#                            rec(
#                                LastName:="Esteban-Romero",
#                                FirstNames:="Ramon",
#                                IsAuthor:=true,
#                                IsMaintainer:=true,
#                                Email:="resteban@mat.upv.es",
#                                WWWHome:="http://personales.upv.es/~resteban/",
#                                PostalAddress:=Concatenation(
#                                        ["Ramon Esteban-Romero\n",
#                                         "Institut Universitari de Matem\\`atica Pura i Aplicada\n",
#                                         "Universitat Polit\\`ecnica de Val\\`encia\n",
#                                         "Cam{\\'\\i} de Vera, s/n\n",
#                                         "46022 Val\\`encia, Spain"]),
#                                Place:="Val\\`encia",
#                                Institution:="Institut Universitari de Matem\\`atica Pura i Aplicada, Universitat Polit\\`ecnica de Val\\`encia"
#                                )
                            ],
                    
                    Keywords:=[
                            "permutability", "PT-group", "PST-group",
                            "T-group", "mutually permutable", "totally permutable",
                            "Dedekind group", "Iwasawa group"
                            ],
                    Autoload:=false,
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
                            PDFFile:="doc/manual.pdf",
                            Autoload  := true ),
                    TestFile  := "tst/permut.tst"

                    
                    ) );
