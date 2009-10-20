using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.xunit
{
    [PexClass(typeof(Assert))]
    public partial class InRangeTests
    {
        /*
        public class RangeForDoubles
        {
            [Fact]
            public void DoubleNotWithinRange()
            {
                Assert.Throws<InRangeException>(() => Assert.InRange(1.50, .75, 1.25));
            }

            [Fact]
            public void DoubleValueWithinRange()
            {
                Assert.InRange(1.0, .75, 1.25);
            }
        }
        */

        [PexMethod]
        //Don't Need PUT
        public void TestInRangePUTDoubleNotWithinRange()
        {
            Assert.Throws<InRangeException>(() => Assert.InRange(1.50, .75, 1.25));
        }

        [PexMethod]
        //Don't Need PUT
        public void TestInRangePUTDoubleValueWithinRange()
        {
            Assert.InRange(1.0, .75, 1.25);
        }

        /*
        public class RangeForInts
        {
            [Fact]
            public void IntNotWithinRangeWithZeroActual()
            {
                Assert.Throws<InRangeException>(() => Assert.InRange(0, 1, 2));
            }

            [Fact]
            public void IntNotWithinRangeWithZeroMinimum()
            {
                Assert.Throws<InRangeException>(() => Assert.InRange(2, 0, 1));
            }

            [Fact]
            public void IntValueWithinRange()
            {
                Assert.InRange(2, 1, 3);
            }
        }
        */

        [PexMethod, PexAllowedException(typeof(InRangeException))]
        public void TestInRangePUTIntNotWithinRangeWithZeroActual(int i, int j)
        {
            Assert.InRange(0, i, j);
        }

        [PexMethod, PexAllowedException(typeof(InRangeException))]
        public void TestInRangePUTIntNotWithinRangeWithZeroMinimum(int i, int j)
        {
            Assert.InRange(i, 0, j);
        }

        [PexMethod]
        //Don't need PUT
        public void TestInRangePUTIntValueWithinRange()
        {
            Assert.InRange(2, 1, 3);
        }


        /*
        public class RangeForStrings
        {
            [Fact]
            public void StringNotWithinRange()
            {
                Assert.Throws<InRangeException>(() => Assert.InRange("adam", "bob", "scott"));
            }

            [Fact]
            public void StringValueWithinRange()
            {
                Assert.InRange("bob", "adam", "scott");
            }
        }
        */

        [PexMethod]
        //Don't need PUT
        public void TestInRangePUTStringNotWithinRange()
        {
            Assert.Throws<InRangeException>(() => Assert.InRange("adam", "bob", "scott"));
        }

        [PexMethod]
        //Don't need PUT
        public void TestInRangePUTStringValueWithinRange()
        {
            Assert.InRange("bob", "adam", "scott");
        }
    }
}