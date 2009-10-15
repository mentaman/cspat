// <copyright file="TheoryCommandFactory.cs" company="">Copyright ©  2009</copyright>

using System;
using System.Collections.Generic;
using System.Globalization;
using System.Reflection;
using Microsoft.Pex.Framework;
using pex.tests.extension;
using Xunit.Extensions;
using Xunit.Sdk;

namespace Xunit.Extensions
{
    public class MMethodInfo : IMethodInfo
    {
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
                MethodInfo methodInfo = typeof (TheoryCommandTests.InstrumentedSpy).GetMethod("PassedTest");
                return methodInfo;
            }
        }

        public string Name
        {
            get
            {
                var call = PexChoose.FromCall(this);
                return call.ChooseResult<string>();
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
                var call = PexChoose.FromCall(this);
                return call.ChooseResult<string>();
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
            var call = PexChoose.FromCall(this);
            if (call.ChooseThrowException())
                throw call.ChooseException(false, new[] {typeof (TargetInvocationException)});
        }
    }


    /// <summary>A factory for Xunit.Extensions.TheoryCommand instances</summary>
    public static partial class TheoryCommandFactory
    {
        /// <summary>A factory for Xunit.Extensions.TheoryCommand instances</summary>
        [PexFactoryMethod(typeof (TheoryCommand))]
        public static TheoryCommand Create(string displayName_s, object[] parameters_os, IMethodInfo methodInfo)
        {
            //            TheoryCommand command = new TheoryCommand(Reflector.Wrap(methodInfo), null, null);
            TheoryCommand theoryCommand
                = new TheoryCommand(methodInfo, displayName_s, parameters_os);
            return theoryCommand;
        }
    }
}