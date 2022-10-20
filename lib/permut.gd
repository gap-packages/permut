#############################################################################
##
#W  permut.gd              Permutability GAP library              ABB&ECL&RER
##
##
#Y  Copyright (C)  2000-2018 Adolfo Ballester-Bolinches, Enric Cosme-Ll\'opez
#Y                           and Ramon Esteban-Romero
##
##  This file contains declarations of methods for permutability
##

#############################################################################
##
#O  ArePermutableSubgroups( <G>, <U>, <V> ) . . . . for finite groups
#O  ArePermutableSubgroups( <U>, <V> )
##
##  Returns true if <U> and <V> permute, false otherwise.
##

ArePermutableSubgroups:=NewOperation("ArePermutableSubgroups",
                                [IsGroup,IsGroup,IsGroup]);
#DeclareOperation("ArePermutableSubgroups", [IsGroup, IsGroup]);


#############################################################################
##
#O  Permutizer( <G>, <U> ) . . . . for finite groups
##
##  Computes the permutizer of a subgroup U in G.  This is the
## subgroup generated by all the cyclic subgroups of G which permute with U.
##
InParentFOA("Permutizer", IsGroup, IsGroup, DeclareAttribute);

DeclareSynonym("Permutiser", Permutizer);
DeclareSynonym("PermutiserOp", PermutizerOp);
DeclareSynonymAttr("PermutiserInParent", PermutizerInParent);

#############################################################################
##
#A  AllSubnormalSubgroups( <G> ) . . . . for a finite group
##
##  The default method constructs the lattice of subnormal subgroups.
##
DeclareAttribute("AllSubnormalSubgroups", IsGroup and IsFinite);



#############################################################################
##
#O  IsPermutable( <G>, <H> ) . . . . for groups
##
##  This operation returns true if H is permutable in G, false otherwise.
##  H is permutable in G when H permutes with all subgroups of G.
##

InParentFOA("IsPermutable", IsGroup, IsGroup, DeclareProperty);


#############################################################################
##
#O  IsFPermutable( <G>, <H>, <F> ) . . . . for groups
##
##  This operation returns true if a subgroup H of G permutes
##  with all the members of F, where F is a list of subgroups of G.
##


DeclareGlobalFunction( "IsFPermutable" );

#############################################################################
##
#O  OneFSubgroupNotPermutingWith( <G>, <H>, <F> ) . . . . for groups
##
##  This operation returns fail if H permutes with all members of F
##  (a list of subgroups of G); otherwise it returns a member of F which 
##  does not permute with H.
##


DeclareGlobalFunction( "OneFSubgroupNotPermutingWith" );


#############################################################################
##
#O  IsConjugatePermutable( <G>, <H> ) . . . . for groups
##
##  This operation returns true if the subgroup H of G is
##  conjugate-permutable, and false otherwise.
##  H is conjugate-permutable in G when H permutes with H^g for every g of G.
##

InParentFOA("IsConjugatePermutable", IsGroup, IsGroup, DeclareProperty);

#############################################################################
##
#O  IsSPermutable( <G>, <H> ) . . . . for groups
##
##  This operation returns true if a subgroup H of G is S-permutable,
##  and false otherwise. 
##  H is S-permutable in G when H permutes with all Sylow subgroups of G.
##

InParentFOA("IsSPermutable", IsGroup, IsGroup, DeclareProperty);

#############################################################################
##
#O  IsSNPermutable( <G>, <H> ) . . . . for groups
##
##  This operation returns true a subgroup H of a soluble group G
##  is SN-permutable, and false otherwise. 
##  H is SN-permutable in G when H permutes with all system normalisers of G.
##

InParentFOA("IsSNPermutable", IsGroup, IsGroup, DeclareProperty);

#############################################################################
##
#O  OneSubgroupNotPermutingWith( <G>, <H> ) . . . . for groups
##
## This operation finds a subgroup of G which does not permute with H
## if such a subgroup exists, otherwise it returns fail.
##
##
InParentFOA("OneSubgroupNotPermutingWith", IsGroup, IsGroup, DeclareAttribute);



#############################################################################
##
#A  PrimesDividingSize( <G> ) . . . . for groups
##
##  This attribute gives a list of primes dividing the size of G.
##
DeclareAttribute("PrimesDividingSize", IsGroup and IsFinite);

#############################################################################
##
#A  SylowSubgroups( <G> ) . . . . for groups
##
##  This attribute gives a list of one Sylow subgroup for every prime
##  dividing  the size of G
##

DeclareAttribute("SylowSubgroups", IsGroup and IsFinite);


#############################################################################
##
#O  OneSylowSubgroupNotPermutingWith( <G>, <H> ) . . . . for groups
##
## This operation finds a Sylow subgroup of G which does not permute 
## with H if such a subgroup exists, otherwise it returns fail.
##
##
InParentFOA("OneSylowSubgroupNotPermutingWith", IsGroup, IsGroup, DeclareAttribute);

#############################################################################
##
#O  OneSystemNormalizerNotPermutingWith( <G>, <H> ) . . . . for groups
##
## This operation finds a system normaliser of the soluble group G which does
## not permute with H if such a subgroup exists, otherwise it returns fail.
##
##
InParentFOA("OneSystemNormalizerNotPermutingWith", IsGroup, IsGroup, DeclareAttribute);

Transatlantic(OneSystemNormalizerNotPermutingWith);
Transatlantic(OneSystemNormalizerNotPermutingWithOp);
Transatlantic(OneSystemNormalizerNotPermutingWithInParent);

#############################################################################
##
#O  OneConjugateSubgroupNotPermutingWith( <G>, <H> ) . . . . for groups
##
##  This operation finds a conjugate subgroup of H which does not permute
##  with H if such a subgroup exists, otherwise it returns fail.
##

InParentFOA("OneConjugateSubgroupNotPermutingWith", IsGroup, IsGroup, DeclareAttribute);


#############################################################################
##
#O  OneElementShowingNotWeaklyNormal( <G>, <H> ) . . . . for groups
##
##  This operation finds an element g of G such that H is normal in <H, H^g>
##  but H not normal in <H,g> if such an element exists, fail otherwise.
##  H is weakly normal in G when H normal in <H,H^g> implies H normal in <H,g>.
##


InParentFOA("OneElementShowingNotWeaklyNormal", IsGroup,IsGroup, DeclareAttribute);

#############################################################################
##
#O  OneElementShowingNotWeaklySPermutable( <G>, <H> ) . . . . for groups
##
##  This operation finds an element g of G such that H Sper <H, H^g>
##  but H not Sper <H,g> if such an element exists, fail otherwise.
##  H is S-permutable in G when H Sper <H,H^g> implies H Sper <H,g>.
##
InParentFOA("OneElementShowingNotWeaklySPermutable", IsGroup,IsGroup, DeclareAttribute);

#############################################################################
##
#O  IsWeaklyNormal( <G>, <H> ) . . . . for groups
##
##  This operation returns true if a subgroup H of G is
##  weakly normal, false otherwise.
##  H is weakly normal when H^g\le N_G(H) implies g\in N_G(H)
##
InParentFOA("IsWeaklyNormal", IsGroup,IsGroup, DeclareProperty);

#############################################################################
##
#O  IsWeaklySPermutable( <G>, <H> ) . . . . for groups
##
##  This operation returns true if a subgroup H of G is
##  weakly S-permutable, false otherwise.
##  H is weakly S-permutable in G when H Sper <H,H^g> implies H Sper <H,g>.
##
InParentFOA("IsWeaklySPermutable", IsGroup,IsGroup, DeclareProperty);

#############################################################################
##
#O  OneElementShowingNotWeaklyPermutable( <G>, <H> ) . . . . for groups
##
##  This operation finds an element g such that H per <H, H^g> but
##  H not per <H, g> if such an element exists, fail otherwise.
##  H is permutable in G when H per <H,H^g> implies H per <H,g>.
##
InParentFOA("OneElementShowingNotWeaklyPermutable", IsGroup,IsGroup, DeclareAttribute);
#############################################################################
##
#O  IsWeaklyPermutable( <G>, <H> ) . . . . for groups
##
##  This operation returns true if a subgroup H of G is
##  weakly permutable, false otherwise.
##  H is weakly permutable  in G when H per <H, H^g> implies H per <H, g>.
##
InParentFOA("IsWeaklyPermutable", IsGroup,IsGroup, DeclareProperty);

#############################################################################
##
#A  OneSubnormalNonPermutableSubgroup( <G> ) . . . . for finite groups
##
##  The default method finds a non conjugate-permutable subnormal subgroup
##  of G if there exists one such subgroup, it returns fail otherwise.
##

DeclareAttribute("OneSubnormalNonPermutableSubgroup", IsGroup);


#############################################################################
##
#O  OneSubgroupInWhichSubnormalNotNormal( <G>, <H> ) . . . . for groups
##
##  This operation finds a subgroup K of G such that H is subnormal in K,
##  but H is not normal in K if such a subgroup exists, it returns fail otherwise.
##  H satisfies the subnormalizer condition in G when H subnormal in K
##  implies that H is normal in K.
##


InParentFOA("OneSubgroupInWhichSubnormalNotNormal", IsGroup,IsGroup, DeclareAttribute);

#############################################################################
##
#O  IsWithSubnormalizerCondition( <G>, <H> ) . . . . for groups
##
##  This operation returns true if H satisfies the subnormaliser
##  condition in G, false otherwise.
##  H satisfies the subnormalizer condition in G when H subnormal in K
##  implies that H is normal in K.
##


InParentFOA("IsWithSubnormalizerCondition", IsGroup,IsGroup, DeclareProperty);
Transatlantic(IsWithSubnormalizerCondition);
Transatlantic(IsWithSubnormalizerConditionOp);
Transatlantic(IsWithSubnormalizerConditionInParent);

#############################################################################
##
#O  OneSubgroupInWhichSubnormalNotPermutable( <G>, <H> ) . . . . for groups
##
##  This operation finds a subgroup K of G such that H is subnormal in K,
##  but H is not permutable in K if such a subgroup exists,
##  otherwise it returns fail.
##  H satisfies the subpermutizer condition in G when H subnormal in K
##  implies that H is permutable in K.
##


InParentFOA("OneSubgroupInWhichSubnormalNotPermutable", IsGroup,IsGroup, DeclareAttribute);

#############################################################################
##
#O  IsWithSubpermutizerCondition( <G>, <H> ) . . . . for groups
##
##  This operation returns true if H satisfies the subpermutiser condition
##  in G, otherwise it returns false.
##  H satisfies the subpermutizer condition in G when H subnormal in K
##  implies that H is permutable in K.
##


InParentFOA("IsWithSubpermutizerCondition", IsGroup,IsGroup, DeclareProperty);
DeclareSynonym("IsWithSubpermutiserCondition", IsWithSubpermutizerCondition);
DeclareSynonym("IsWithSubpermutiserConditionOp", IsWithSubpermutizerConditionOp);
DeclareSynonymAttr("IsWithSubpermutiserConditionInParent", IsWithSubpermutizerConditionInParent);



#############################################################################
##
#O  OneSubgroupInWhichSubnormalNotSPermutable( <G>, <H> ) . . . . for groups
##
##  This operation finds a subgroup K of G such that H is subnormal in K,
##  but H is not S-permutable in K if such a subgroup exists, 
##  otherwise it returns fail.
##  H satisfies the S-subpermutizer condition in G when H subnormal in K
##  implies that H is S-permutable in K.
##


InParentFOA("OneSubgroupInWhichSubnormalNotSPermutable", IsGroup,IsGroup, DeclareAttribute);

#############################################################################
##
#O  IsWithSSubpermutizerCondition( <G>, <H> ) . . . . for groups
##
##  This operation returns true if H satisfies the S-subpermutiser
##  condition in G, otherwise it returns false.
##  H satisfies the S-subpermutiser condition in G when H subnormal in K
##  implies that H is S-permutable in K.
##


InParentFOA("IsWithSSubpermutizerCondition", IsGroup,IsGroup, DeclareProperty);

DeclareSynonym("IsWithSSubpermutiserCondition", IsWithSSubpermutizerCondition);
DeclareSynonym("IsWithSSubpermutiserConditionOp", IsWithSSubpermutizerConditionOp);
DeclareSynonymAttr("IsWithSSubpermutiserConditionInParent", IsWithSSubpermutizerConditionInParent);




#############################################################################
##
#F  IsAbCp( <G>, <p> ) . . . . for finite groups
##
## Returns true if the group has an abelian Sylow p-subgroup P and every
## subgroup of P is normalised by N_G(P), false otherwise.
##

KeyDependentOperation("IsAbCp", IsGroup, IsPosInt, "prime");

#############################################################################
##
#F  IsCp( <G>, <p> ) . . . . for finite groups
##
## Returns true if every subgroup of a Sylow p-subgroup P of G
## is normalised by N_G(P), false otherwise.
##

KeyDependentOperation("IsCp", IsGroup, IsPosInt, "prime");

#############################################################################
##
#F  IsXp( <G>, <p> ) . . . . for finite groups
##
## Returns true if every subgroup of a Sylow p-subgroup P of G
## is permutable in N_G(P), false otherwise.
##

KeyDependentOperation("IsXp", IsGroup, IsPosInt, "prime");

#############################################################################
##
#F  IsYp( <G>, <p> ) . . . . for finite groups
##
## Returns true if whenever $H\le K$ are two p-subgroups,
## H is S-permutable in N_G(K), false otherwise.
##

KeyDependentOperation("IsYp", IsGroup, IsPosInt, "prime");

#############################################################################
##
#F  IsDedekindSylow( <G>, <p> ) . . . . for finite groups
##
##  Returns true if a Sylow p-subgroup of G is Dedekind, else returns false
##

DeclareGlobalFunction( "IsDedekindSylow" );

#############################################################################
##
#F  IsIwasawaSylow( <G>, <p> ) . . . . for finite groups
##
##  Returns true if a Sylow p-subgroup of G is Iwasawa, else returns false
##

DeclareGlobalFunction( "IsIwasawaSylow" );

#############################################################################
##
#P  IsPTGroup( <G> ) . . . . for finite groups
##
##  Returns true if the group is a PT-group, else returns false 
##

DeclareProperty("IsPTGroup",IsGroup);

#############################################################################
##
#A  OneSubnormalNonSPermutableSubgroup( <G> ) . . . . for finite groups
##
##  The default method finds a non-S-permutable subnormal subgroup of G
##  if such a subgroup exists, fail otherwise.
##

DeclareAttribute("OneSubnormalNonSPermutableSubgroup", IsGroup);

#############################################################################
##
#A  OneSubnormalNonSNPermutableSubgroup( <G> ) . . . . for finite groups
##
##  The default method finds a non SN-permutable subnormal
## (permutable with all system normalisers) subgroup 
##  of the soluble group G if such a subgroup exists, fail otherwise.
##

DeclareAttribute("OneSubnormalNonSNPermutableSubgroup", IsGroup);

#############################################################################
##
#P  IsPSTGroup( <G> ) . . . . for finite groups
##
##  Returns true if the group is a PST-group, else returns false 
##

DeclareProperty("IsPSTGroup",IsGroup);

#############################################################################
##
#P  IsPSNTGroup( <G> ) . . . . for finite groups
##
##  Returns true if the soluble group is a PSNT-group, else returns false
##  A soluble group is a PSNT-group if permutability with system
##  normalisers is transitive.
##

DeclareProperty("IsPSNTGroup",IsGroup);
#############################################################################
##
#A  OneSubnormalNonConjugatePermutableSubgroup( <G> ) . . . . for finite groups
##
##  The default method finds a non conjugate-permutable subnormal subgroup
##  of G if such a subgroup exists, fail otherwise.
##

DeclareAttribute("OneSubnormalNonConjugatePermutableSubgroup", IsGroup);

#############################################################################
##
#P  IsCPTGroup( <G> ) . . . . for finite groups
##
##  Returns true if the group is a CPT-group (every subnormal subgroup
##  is conjugate-permutable), else returns false 
##

DeclareProperty("IsCPTGroup",IsGroup);

#############################################################################
##
#A  OneSubnormalNonNormalSubgroup( <G> ) . . . . for finite groups
##
##  The default method finds a non-normal subnormal subgroup of G 
##  if such a subgroup exists, otherwise returns false.
##

DeclareAttribute("OneSubnormalNonNormalSubgroup", IsGroup);

#############################################################################
##
#P  IsTGroup( <G> ) . . . . for finite groups
##
##  Returns true if the group is a T-group, else returns false 
##

DeclareProperty("IsTGroup",IsGroup);


#############################################################################
##
#A  IwasawaTriple( <G> ) . . . . for finite groups
##
##  Computes an Iwasawa triple for the p-group G
##

DeclareAttribute("IwasawaTriple", IsGroup);


#############################################################################
##
#P  IsSCGroup( <G> ) . . . . for finite groups
##
##  Returns true if the group is an SC-group, and false otherwise.
##  A group is an SC-group if all its chief factors are simple.
##
##
DeclareProperty("IsSCGroup",IsGroup);

#############################################################################
##
#F  IwasawaTripleWithSubgroup( <g>, <x>, <p> ) . . . . for finite groups
##
##  Returns an Iwasawa triple of the p-group g such that x belongs to it
##  if it exists one, fail otherwise.
##

DeclareGlobalFunction( "IwasawaTripleWithSubgroup" );

#############################################################################
##
#F  AllGeneratorsCyclicPGroup( <x>, p ) . . . . for a p-element <x> of a group
##
##  This operation computes all generators of the cyclic group
##  generated by the p-element <x>.
## 
##

DeclareGlobalFunction( "AllGeneratorsCyclicPGroup" );

#############################################################################
##
#O  AreMutuallyPermutableSubgroups( <G>, <U>, <V> ) . . . . for finite groups
#O  AreMutuallyPermutableSubgroups( <U>, <V> )
##
##  This operation returns true if <U> and <V> are mutually permutable,
##  otherwise it returns false.
##  Two subgroups <U> and <V> are mutually permutable
##  if <U> permutes with all subgroups of <V>
##  and <V> permutes with all subgroups of <U>.
##

AreMutuallyPermutableSubgroups:=NewOperation("AreMutuallyPermutableSubgroups",
                                [IsGroup,IsGroup,IsGroup]);

#############################################################################
##
#O  AreTotallyPermutableSubgroups( <G>, <U>, <V> ) . . . . for finite groups
#O  AreTotallyPermutableSubgroups( <U>, <V> )
##
##  This operation returns true if <U> and <V> are totally permutable,
##  otherwise it returns false.
##  Two subgroups <U> and <V> are totally permutable
##  if every subgroup of <U> permutes with every subgroup of <V>.
##

AreTotallyPermutableSubgroups:=NewOperation("AreTotallyPermutableSubgroups",
                                [IsGroup,IsGroup,IsGroup]);

#############################################################################
##
#O  OnePairShowingNotMutuallyPermutableSubgroups( <G>, <U>, <V> ) . . . . for finite groups
#O  OnePairShowingNotMutuallyPermutableSubgroups( <U>, <V> )
##
##  This function returns a pair [U, C] or a pair [D, V] such that
##  U does not permute with C or D does not permute with V if such a pair
##  exists, fail otherwise.
##

OnePairShowingNotMutuallyPermutableSubgroups:=NewOperation("OnePairShowingNotMutuallyPermutableSubgroups",
                                [IsGroup,IsGroup,IsGroup]);

#############################################################################
##
#O  OnePairShowingNotTotallyPermutableSubgroups( <G>, <U>, <V> ) . . . . for finite groups
#O  OnePairShowingNotTotallyPermutableSubgroups( <U>, <V> )
##
##  Returns a pair [C,D] such that C and D do not permute,
##  with C subgroup of U and D subgroup of V if such a pair exists,
##  fail otherwise.
##

OnePairShowingNotTotallyPermutableSubgroups:=NewOperation("OnePairShowingNotTotallyPermutableSubgroups",
                                [IsGroup,IsGroup,IsGroup]);


#############################################################################
##
#O  AreMutuallyFPermutableSubgroups( <G>, <U>, <V>, <FU>, <FV> ) . . . . for finite groups
#O  AreMutuallyFPermutableSubgroups( <U>, <V>, <FU>, <FV> )
##
##  This operation returns true if <U> permutes with <V> and all members
##  of <FV> and <V> permutes with <U> and all members of <FU>. Here <FU>
##  and <FV> are lists of subgroups of <U> and <V>, respectively. 
##

AreMutuallyFPermutableSubgroups:=NewOperation("AreMutuallyFPermutableSubgroups",
                                [IsGroup,IsGroup,IsGroup,IsList, IsList]);

#############################################################################
##
#O  AreTotallyFPermutableSubgroups( <G>, <U>, <V>, <FU>, <FV> ) . . . . for finite groups
#O  AreTotallyFPermutableSubgroups( <U>, <V>, <FU>, <FV> )
##
##  This operation returns true if <U> and all members of <FU> permute
##  with <V> and all members of <FV>. Here <FU> and <FV> are lists of 
##  subgroups of <U> and <V>, respectively.
##

AreTotallyFPermutableSubgroups:=NewOperation("AreTotallyFPermutableSubgroups",
                                [IsGroup,IsGroup,IsGroup,IsList,IsList]);

#############################################################################
##
#O  OnePairShowingNotMutuallyFPermutableSubgroups( <G>, <U>, <V>, <FU>, <FV> ) . . . . for finite groups
#O  OnePairShowingNotMutuallyFPermutableSubgroups( <U>, <V>, <FU>, <FV> )
##
##  This function returns a pair [U, C] or a pair [D, V] such that
##  U does not permute with V or a member of FV or V does not permute
##  with U or a member of FU if such a pair exixts; otherwise,
##  it returns fail. Here FU and FV are lists of subgroups of
##  U and V, respectively.
##

OnePairShowingNotMutuallyFPermutableSubgroups:=NewOperation("OnePairShowingNotMutuallyFPermutableSubgroups",
                                [IsGroup,IsGroup,IsGroup,IsList,IsList]);

#############################################################################
##
#O  OnePairShowingNotTotallyFPermutableSubgroups( <G>, <U>, <V>, <FU>, <FV> ) . . . . for finite groups
#O  OnePairShowingNotTotallyFPermutableSubgroups( <U>, <V>, <FU>, <FV> )
##
##  Returns a pair [C,D] with C in FU or C=U and D in FV or D=V such that
##  C and D do not permute, where FU and FV are lists of subgroups of
##  U and V, respectively, if such a pair exists; otherwise, it returns fail.
##

OnePairShowingNotTotallyFPermutableSubgroups:=NewOperation("OnePairShowingNotTotallyFPermutableSubgroups",
                                [IsGroup,IsGroup,IsGroup,IsList,IsList]);




#############################################################################
##
## True methods
##
##


InstallTrueMethod(IsCPTGroup,IsPTGroup);
InstallTrueMethod(IsConjugatePermutableInParent,IsPermutableInParent);
InstallTrueMethod(IsPSNTGroup,IsNilpotentGroup);
InstallTrueMethod(IsPSNTGroup,IsPTGroup);
InstallTrueMethod(IsPSTGroup,IsNilpotentGroup);
InstallTrueMethod(IsPSTGroup,IsPTGroup);
InstallTrueMethod(IsPSTGroup,IsTGroup);
InstallTrueMethod(IsPTGroup,IsTGroup);
InstallTrueMethod(IsPermutableInParent,IsNormalInParent);
InstallTrueMethod(IsSCGroup, IsPSTGroup);
InstallTrueMethod(IsSNPermutableInParent,IsPermutableInParent);
InstallTrueMethod(IsSPermutableInParent,IsPermutableInParent);
InstallTrueMethod(IsSupersolvableGroup, IsPSNTGroup and IsSolvableGroup);
InstallTrueMethod(IsSupersolvableGroup, IsSolvableGroup and IsSCGroup);
InstallTrueMethod(IsTGroup,IsGroup and IsAbelian);
InstallTrueMethod(IsWeaklyNormalInParent,IsNormalInParent);
InstallTrueMethod(IsWeaklyPermutableInParent,IsPermutableInParent);
InstallTrueMethod(IsWeaklyPermutableInParent,IsWeaklyNormalInParent);
InstallTrueMethod(IsWeaklySPermutableInParent, IsWeaklyPermutableInParent);
InstallTrueMethod(IsWeaklySPermutableInParent,IsSPermutableInParent);
InstallTrueMethod(IsWithSSubpermutizerConditionInParent,IsWeaklySPermutableInParent);
InstallTrueMethod(IsWithSSubpermutizerConditionInParent,IsWithSubpermutizerConditionInParent);
InstallTrueMethod(IsWithSubnormalizerConditionInParent,IsWeaklyNormalInParent);
InstallTrueMethod(IsWithSubpermutizerConditionInParent,IsWeaklyPermutableInParent);
InstallTrueMethod(IsWithSubpermutizerConditionInParent,IsWithSubnormalizerConditionInParent);
