Our project is xunit. It could be downloaded from http://xunit.codeplex.com/SourceControl/ListDownloadableCommits.aspx

Project web: http://sites.google.com/site/xushengxiaoshome/Home/an-empirical-study-of-parameterized-unit-test-generalization-in-xunit

Pex version we use is 0.19.41025.0

Phase of test generalization:

The conventional unit tests we generalizaed are in:

EqualTests.cs
AssertExceptionTests.cs
ContainsTests.cs
DoesNotContainTest.cs
EmptyTests.cs
FalseTests.cs
InRangeTests.cs
TrueTests.cs
TheoryCommandTests.cs

The PUTs we created are in pex.tests.xunit and pex.tests.extension projects. 
The file names are the same as the original conventional unit tests.


The phase of adding new PUTs:

The Classes we add New PUTs: 

ContainsNewPUTTests.cs
DoesnotContainsNewPUTTests.cs
InRangeNewPUTTests.cs
EmptyTests.cs (only Method "TestEmptyPUTIsNotEmpty" in the original generalized PUT class)

