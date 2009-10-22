// <copyright file="AssertExceptionFactory.cs" company="">Copyright ©  2009</copyright>

using System;
using Microsoft.Pex.Framework;
using Xunit.Sdk;
using System.Runtime.Serialization;

namespace Xunit.Sdk
{
    /// <summary>A factory for Xunit.Sdk.AssertException instances</summary>
    public static partial class AssertExceptionFactory
    {
        /// <summary>A factory for Xunit.Sdk.AssertException instances</summary>
        [PexFactoryMethod(typeof(AssertException))]
        public static AssertException Create(string userMessage)
        {
            var assertException = new AssertException(userMessage);
            return assertException;
        }
    }
}
