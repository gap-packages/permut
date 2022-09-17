############################################################################
##
#W  bugtest.tst                GAP tests                    ABB&ECL&RER
##
##
#Y  Copyright (C)  2015-2018,  Adolfo Ballester-Bolinches, Enric Cosme-Ll\'opez,
##                        and Ramon Esteban-Romero
##
##  This  file  tests  some functions that  deal with permutability
##
gap> START_TEST("bugtest.tst");
gap> "The following result was wrong in previous versions of permut\n";
"The following result was wrong in previous versions of permut\n"
gap> g:=SymmetricGroup(3);;h:=Subgroup(g,[(1,2,3)]);;k:=Subgroup(h,[(1,2,3)]);;
gap> OneSubgroupInWhichSubnormalNotPermutable(g,k);
fail
gap> STOP_TEST( "bugtest.tst", 7000000 );

##############################################################################
##
#E
