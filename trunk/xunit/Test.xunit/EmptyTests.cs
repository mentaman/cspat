using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;


    [PexClass(typeof(Assert))]
//84.62%
public partial class Containers
    {
        [Fact, PexMethod]
        public void IsEmpty()
        {
            List<int> list = new List<int>();

            Assert.Empty(list);
        }

        [Fact, PexMethod]
        public void IsNotEmpty()
        {
            List<int> list = new List<int>();
            list.Add(42);

            EmptyException ex = Assert.Throws<EmptyException>(() => Assert.Empty(list));

            PexAssert.AreEqual("Assert.Empty() failure", ex.Message);
        }

        [Fact, PexMethod]
        public void NullIsNotEmpty()
        {
            Assert.Throws<ArgumentNullException>(() => Assert.Empty(null));
        }

        [Fact, PexMethod]
        public void StringIsEmpty()
        {
            Assert.Empty("");
        }

        [Fact, PexMethod]
        public void StringIsNotEmpty()
        {
            EmptyException ex = Assert.Throws<EmptyException>(() => Assert.Empty("Foo"));

            PexAssert.AreEqual("Assert.Empty() failure", ex.Message);
        }
    }
