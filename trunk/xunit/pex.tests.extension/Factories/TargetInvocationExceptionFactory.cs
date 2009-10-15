// <copyright file="TargetInvocationExceptionFactory.cs" company="">Copyright ©  2009</copyright>

using System;
using Microsoft.Pex.Framework;
using System.Reflection;
using System.Runtime.Serialization;

namespace System.Reflection
{
    /// <summary>A factory for System.Reflection.TargetInvocationException instances</summary>
    public static partial class TargetInvocationExceptionFactory
    {
        /// <summary>A factory for System.Reflection.TargetInvocationException instances</summary>
        [PexFactoryMethod(typeof(TargetInvocationException))]
        public static TargetInvocationException Create()
        {
            TargetInvocationException targetInvocationException
               = new TargetInvocationException("message", new Exception());
            return targetInvocationException;

        }
    }
}
