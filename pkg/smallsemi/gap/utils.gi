#############################################################################
##
#W  utils.gi                       smallsemi - a GAP library of semigroups
#Y  Copyright (C) 2008-2011            Andreas Distler & James D. Mitchell
##
##  Licensing information can be found in the README file of this package.
##
#############################################################################
##

# new for 0.6.3! - SmallsemiMakeDoc - "for no argument"
#############################################################################

InstallGlobalFunction(SmallsemiMakeDoc, 
function()
  MakeGAPDocDoc(Concatenation(PackageInfo("smallsemi")[1]!.
   InstallationPath, "/doc"), "smallsemi.xml",
   ["data.xml", "examples.xml", "intro.xml", "../gap/enums.gd",
   "../gap/properties.gd", "../gap/small.gd", "../gap/autovars.g"],
   "smallsemi");;
end);

# new for 0.6.3! - SmallsemiTestAll - "for no argument"
#############################################################################

InstallGlobalFunction(SmallsemiTestAll, 
function()
  Read(Filename(DirectoriesPackageLibrary("smallsemi","tst"),"testall.g"));;
end);

# new for 0.6.3! - SmallsemiTestManualExamples - "for no argument"
#############################################################################

InstallGlobalFunction(SmallsemiTestManualExamples, 
function()
  SizeScreen([80]); SetInfoLevel(InfoWarning, 0); 
  TestManualExamples(DirectoriesPackageLibrary("smallsemi", "doc")[1]![1], 
  "smallsemi.xml", 
  ["data.xml", "examples.xml", "intro.xml", "../gap/enums.gd",
   "../gap/properties.gd", "../gap/small.gd", "../gap/autovars.g"]);
end);

#EOF
