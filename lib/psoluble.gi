#############################################################################
##
#W  psoluble.gi              Permutability GAP library            ABB&ECL&RER
##
##
#Y  Copyright (C)  2000-2018 Adolfo Ballester-Bolinches, Enric Cosme-Ll\'opez
#Y                           and Ramon Esteban-Romero
##
##  This file contains methods for p-soluble, p-supersoluble,
##  and p-nilpotent groups
##


#############################################################################
##
#M  IsPSupersolvable( <G>, <p> ) . . . . for finite groups
##
## Returns true if the group is p-supersolvable, false otherwise.
## A group $G$ is p-supersolvable if all chief factors of
## order divisible by p are cyclic.
##
##
InstallMethod(IsPSupersolvableOp,
        "for finite supersolvable groups",
        [IsGroup and IsFinite and IsSupersolvableGroup,IsPosInt],
        function(G,p)
    return true;
end);


InstallMethod(IsPSupersolvableOp,
        "method for a finite group with chief series and prime",
        [IsGroup and IsFinite and HasChiefSeries,IsPosInt],function(G,p)
    local cs,x,fact,j,l;
    if Size(G) mod p <>0
       then
        return true;
    fi;
    cs:=ChiefSeries(G);
    l:=List([1..Length(cs)-1],j->Index(cs[j],cs[j+1]));
    return ForAll([1..Length(cs)-1],
                  j->(l[j]=p) or
                  (l[j] mod p <> 0));
end);


InstallMethod(IsPSupersolvableOp,
        "generic method for a finite group and prime",
        [IsGroup and IsFinite,IsPosInt],function(G,p)
    local cs,x,fact;
    if (Size(G) mod p) <> 0 or IsSupersolvable(G)
       then
        return true;
    fi;
    cs:=ChiefSeries(G);
    return IsPSupersolvable(G,p);
end);


#############################################################################
##
#M  IsSylowTowerGroup( <G> ) . . . . for finite groups
##
##  Returns true if the group has a Sylow tower of supersolvable type,
##  else returns false 
##

InstallMethod(IsSylowTowerGroup,"for finite groups",
        [IsGroup and IsFinite],
        function(g)
    local n,pr,l;
    pr:=PrimesDividingSize(g);
    l:=Length(pr);
    return IsSolvableGroup(g) and
           ForAll([1..l],n->IsNormal(g, HallSubgroup(g, pr{[n..l]})));
end);
