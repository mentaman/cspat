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
        public static AssertException Create(
            string userMessage_s,
            string value_s1,
            string value_s2,
            SerializationInfo info_serializationInfo,
            StreamingContext context_streamingContext
        )
        {
            AssertException assertException = new AssertException(userMessage_s);
            ((Exception)assertException).HelpLink = value_s1;
            ((Exception)assertException).Source = value_s2;
            ((Exception)assertException).GetObjectData
                (info_serializationInfo, context_streamingContext);
            return assertException;

            // TODO: Edit factory method of AssertException
            // This method should be able to configure the object in all possible ways.
            // Add as many parameters as needed,
            // and assign their values to each field by using the API.
        }
    }
}
