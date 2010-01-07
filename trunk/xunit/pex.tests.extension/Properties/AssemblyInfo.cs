﻿using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using FieldAccessExtractor;
using Seqex;
using Seqex.CoverageExtractor;
using Seqex.IssueExtractor;
using Seqex.ResultTrackingExtrator;

// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
[assembly: AssemblyTitle("pex.tests.extension")]
[assembly: AssemblyDescription("")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany("")]
[assembly: AssemblyProduct("pex.tests.extension")]
[assembly: AssemblyCopyright("Copyright ©  2009")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]

// Setting ComVisible to false makes the types in this assembly not visible 
// to COM componenets.  If you need to access a type in this assembly from 
// COM, set the ComVisible attribute to true on that type.
[assembly: ComVisible(false)]

// The following GUID is for the ID of the typelib if this project is exposed to COM
[assembly: Guid("41f64576-8e89-4cd9-bf10-2ec989597be3")]

// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:
[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyFileVersion("1.0.0.0")]

[assembly: Seqex]
[assembly: IssueTrack]
[assembly: ProblemObserver]
[assembly: IssueObserver]
[assembly: AssemblyCoverageObserver]
[assembly: InsufficientObjectFactoryObserver]
[assembly: FieldAccessObserver]
[assembly: ResultTracingObserver]