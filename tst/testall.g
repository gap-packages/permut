LoadPackage("permut");
dirs := DirectoriesPackageLibrary( "permut", "tst" );
TestDirectory(dirs, rec(exitGAP := true));
