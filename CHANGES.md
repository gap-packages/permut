This file describes changes in the Permut package.

## 2.0.6 (2026-07-31)

  - Remove the SmallGrp package dependency from the test suite
  - Require GAP >= 4.11 to enable use of `#@if` in `.tst` files
  - Convert the changelog to Markdown
  - Update the CI setup

## 2.0.5 (2024-01-11)

  - Remove an obsolete email address from the package metadata
  - Fix typos
  - Include further changes suggested by Max Horn

## 2.0.4 (2022-03-27)

  - Fix the misspelled `PostalAddres` field name in `PackageInfo.g`
  - Add a license field to the package metadata
  - Remove the outdated postal address of Ramón Esteban-Romero from
    `PackageInfo.g`
  - Revise the Travis CI setup
  - Include further changes suggested by Olexandr Konovalov and Max Horn

## 2.0.3 (2018-08-19)

  - Add the missing changelog entry for version 2.0.2

## 2.0.2 (2018-08-18)

  - Replace a test whose output had changed

## 2.0.1 (2018-02-18)

  - Add more formats for the web page
  - Add the `.js` and `.css` files to the release archives
  - Fix a typo in the manual

## 2.0.0 (2018-02-18)

  - Fix a bug in `OneSubgroupInWhichSubnormalNotNormal`, `Permutable` and
    `SPermutable` which gave incorrect results due to an incorrect treatment
    of the relation with the parent group
  - Move the package development to GitHub, and use GitHubPagesForGAP for the
    web page
  - Switch to a new version numbering scheme
  - Modify the banner, improve `PrimesDividingSize`, remove obsolete code and
    other minor changes suggested by Max Horn and Alexander Konovalov

## 1.03 (2015-07-30)

  - Fix the incorrect version number in the manual

## 1.02 (2015-07-29)

  - Remove a repeated name in `PackageInfo.g`, as suggested by Olexandr
    Konovalov
  - Fix a test
  - Add the CSS and LAB files to the release archive

## 1.01 (2014-04-15)

  - Fix the path of `PackageInfo.g`, as suggested by Olexandr Konovalov
  - Fix two typos in the manual

## 1.00 (2014-04-14)

  - The package has been accepted by the GAP Council

  Changes proposed by Alice Niemeyer and the anonymous referee:

  - Add a test in `AllGeneratorsCyclicPGroup` for the arguments to be of the
    correct type
  - Make minor changes to the documentation

## 0.04

Changes proposed by Alice Niemeyer and the anonymous referee:

  - Rewrite the documentation in GAPDoc, with minor modifications
  - Rename the old `Why` functions:

    | old name | new name |
    | -------- | -------- |
    | `WhyAreNotMutuallyFPermutableSubgroups` | `OnePairShowingNotMutuallyFPermutableSubgroups` |
    | `WhyAreNotMutuallyPermutableSubgroups` | `OnePairShowingNotMutuallyPermutableSubgroups` |
    | `WhyAreNotTotallyFPermutableSubgroups` | `OnePairShowingNotTotallyFPermutableSubgroups` |
    | `WhyAreNotTotallyPermutableSubgroups` | `OnePairShowingNotTotallyPermutableSubgroups` |
    | `WhyIsNotConjugatePermutable` | `OneConjugateSubgroupNotPermutingWith` |
    | `WhyIsNotCPTGroup` | `OneSubnormalNonConjugatePermutableSubgroup` |
    | `WhyIsNotFPermutable` | `OneFSubgroupNotPermutingWith` |
    | `WhyIsNotPermutable` | `OneSubgroupNotPermutingWith` |
    | `WhyIsNotPSNTGroup` | `OneSubnormalNonSNPermutableSubgroup` |
    | `WhyIsNotPSTGroup` | `OneSubnormalNonSPermutableSubgroup` |
    | `WhyIsNotPTGroup` | `OneSubnormalNonPermutableSubgroup` |
    | `WhyIsNotSNPermutable` | `OneSystemNormaliserNotPermutingWith` |
    | `WhyIsNotSPermutable` | `OneSylowSubgroupNotPermutingWith` |
    | `WhyIsNotTGroup` | `OneSubnormalNonNormalSubgroup` |
    | `WhyIsNotWeaklyNormal` | `OneElementShowingNotWeaklyNormal` |
    | `WhyIsNotWeaklyPermutable` | `OneElementShowingNotWeaklyPermutable` |
    | `WhyIsNotWeaklySPermutable` | `OneElementShowingNotWeaklySPermutable` |
    | `WhyIsNotWithSSubpermutizerCondition` | `OneSubgroupInWhichSubnormalNotSPermutable` |
    | `WhyIsNotWithSubnormalizerCondition` | `OneSubgroupInWhichSubnormalNotNormal` |
    | `WhyIsNotWithSubpermutizerCondition` | `OneSubgroupInWhichSubnormalNotPermutable` |

  - Modify the functions about totally and mutually permutable products to
    avoid the use of `AllCyclicSubgroups`; Zuppos are used instead, and
    `AllCyclicSubgroups` has been deleted
  - Modify `Permutizer` to detect permutable subgroups and to use an
    enumerator instead of all cyclic subgroups
  - Add a probabilistic test to detect lack of permutability before applying
    the deterministic test in `IsPermutable` and `IsIwasawaSylow`
  - Change the type of the arguments of `OneFSubgroupNotPermutingWith` and
    `IsFPermutable`: the third argument now is a list of subgroups of the
    whole group
  - Change the arguments of `AreMutuallyFPermutableSubgroups`,
    `AreTotallyFPermutableSubgroups`,
    `OnePairShowingNotMutuallyPermutableSubgroups` and
    `OnePairShowingNotTotallyPermutableSubgroups` to include lists of
    subgroups of `U` and `V`, respectively, allowing for greater generality
  - Delete `IsPERMUTPSolvable` and `IsPERMUTPNilpotent`, since methods for
    non-soluble groups are available in GAP 4.7.2; they have been replaced by
    `IsPSolvable` and `IsPNilpotent` in the code, and GAP 4.7.2 is required
    now

## 0.03

  - Delete the `InstallFactorMaintenance` and `InstallSubsetMaintenance`
    statements, due to an error in the assignment of `IsPSTGroup` to quotient
    groups

## 0.02

Changes proposed by Leonhard Soicher before refereeing, and others:

  - Move the `*.g` files to the `lib` directory
  - Create the directory `htm` to hold the HTML files
  - Change `PackageInfo.g` to be validated correctly
  - Rearrange the documentation (only chapters)
  - Add a test
  - Move `IsSylowTowerGroup` to `psoluble.g[di]`
  - Apply Transatlantic

## 0.01

  - Initial version
