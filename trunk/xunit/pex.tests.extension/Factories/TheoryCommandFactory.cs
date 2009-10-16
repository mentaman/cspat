// <copyright file="TheoryCommandFactory.cs" company="">Copyright ©  2009</copyright>

using System;
using System.Collections.Generic;
using System.Globalization;
using System.Reflection;
using Microsoft.Pex.Framework;
using pex.tests.extension;
using pex.utility;
using Xunit.Extensions;
using Xunit.Sdk;

namespace Xunit.Extensions
{
    public class MMethodInfo : IMethodInfo
    {
        private string name;
        private string typeName;

        public MMethodInfo(string name, string typeName)
        {
            this.name = name;
            this.typeName = typeName;
        }

        public bool IsAbstract
        {
            get
            {
                var call = PexChoose.FromCall(this);
                return call.ChooseResult<bool>();
            }
        }

        public bool IsStatic
        {
            get
            {
                var call = PexChoose.FromCall(this);
                return call.ChooseResult<bool>();
            }
        }

        public MethodInfo MethodInfo
        {
            get
            {
                return Type.GetType(TypeName).GetMethod(Name);
            }
        }

        public string Name
        {
            get
            {
                return name;
            }
        }

        public string ReturnType
        {
            get
            {
                var call = PexChoose.FromCall(this);
                return call.ChooseResult<string>();
            }
        }

        public string TypeName
        {
            get
            {
                return typeName;
            }
        }

        public object CreateInstance()
        {
            return new object();
        }

        public IEnumerable<IAttributeInfo> GetCustomAttributes(Type attributeType)
        {
            return new List<IAttributeInfo>();
        }

        public bool HasAttribute(Type attributeType)
        {
            var call = PexChoose.FromCall(this);
            return call.ChooseResult<bool>();
        }

        public void Invoke(object testClass, params object[] parameters)
        {
            PexAssert.IsNotNull(testClass);
            PexAssert.IsNotNull(parameters);
            var call = PexChoose.FromCall(this);
            if (call.ChooseThrowException())
                throw call.ChooseException(false, new[] {typeof (TargetInvocationException)});
            Type.GetType(TypeName).GetMethod(Name).Invoke(testClass, parameters);
        }
    }


    /// <summary>A factory for Xunit.Extensions.TheoryCommand instances</summary>
    public static partial class TheoryCommandFactory
    {
        public static IMethodInfo MethodInfo;
        public static object[] Parameters;
        public static string DisplayName;

        /// <summary>A factory for Xunit.Extensions.TheoryCommand instances</summary>
        [PexFactoryMethod(typeof (TheoryCommand))]
        public static TheoryCommand Create(string displayName_s, object[] parameters_os, string typeName, string methodName)
        {
            Parameters = parameters_os;
            DisplayName = displayName_s;
            PexRepository.Store("methodName", methodName);
            PexRepository.Store("typeName", typeName);
            PexRepository.Store("parameters", parameters_os);
            PexRepository.Store("DisplayName", displayName_s);
            MethodInfo = new MMethodInfo(methodName,typeName);
            TheoryCommand theoryCommand
                = new TheoryCommand(MethodInfo, displayName_s, parameters_os);
            return theoryCommand;
        }
    }
}