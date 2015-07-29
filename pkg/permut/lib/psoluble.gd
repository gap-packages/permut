#############################################################################
##
#W  psoluble.gd              Permutability GAP library            ABB&EC&RER
##
#H  @(#)$Id: psoluble.gd,v 0.04 2014/01/16 09:55:00 gap Exp $
##
#Y  Copyright (C)  2000-2014 Adolfo Ballester-Bolinches, Enric Cosme-Ll\'opez
#Y                           and Ramon Esteban-Romero
##
##  This file contains declaration for p-soluble,
##  p-supersoluble, p-nilpotent groups
##
Revision.psoluble_gd := 
  "@(#)$Id: psoluble.gd,v 0.04 2014/01/16 09:55:00 gap Exp $";

#############################################################################
##
#P  IsSylowTowerGroup( <G> ) . . . . for finite groups
##
##  Returns true if the group has a Sylow tower of supersolvable type,
##  else returns false 
##

DeclareProperty("IsSylowTowerGroup",IsGroup);

#############################################################################
##
#F  IsPSupersolvable( <G>, <p> ) . . . . for finite groups
##
## Returns true if the group is p-supersolvable, false otherwise.
## A group $G$ is p-supersolvable if all chief factors of
## order divisible by p are cyclic.
##
##

KeyDependentOperation("IsPSupersolvable", IsGroup, IsPosInt, "prime");



InstallTrueMethod(IsSylowTowerGroup,IsSupersolvableGroup);

Transatlantic(IsPSupersolvable);
Transatlantic(IsPSupersolvableOp);


  #############################################################################
#E psoluble.gd ends here
