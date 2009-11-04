using System;
using System.Collections.Generic;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.xunit
{
    // generalize 7 tests
    [PexClass(typeof(Assert))]
    public partial class InRangeTests
    {//43.06%
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
        // 2.2 2.10
        public void TestInRangePUTDoubleValueInRange(double i,double j, double value)
        {
            PexAssume.IsTrue(i < j);
            Assert.InRange(value,i,j);
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
        // 2.2 2.10
        public void TestInRangePUTIntValue(int i, int j,int value)
        {
            PexAssume.IsTrue(i < j);
            PexAssume.IsTrue(i == 0 || j == 0 || value == 0 || (i != 0 && j != 0 && value != 0));
            Assert.InRange(value, i, j);
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

//        [PexMethod]
//        public void TestInRangePUTStringNotWithinRange()
//        {
//            PexAssert.Throws<InRangeException>(() => Assert.InRange("adam", "bob", "scott"));
//        }

        [PexMethod, PexAllowedException(typeof(InRangeException))]
        //2.2 2.10
        public void TestInRangePUTStringValueWithinRange([PexAssumeNotNull]string value, [PexAssumeNotNull]string i, [PexAssumeNotNull]string j)
        {
            PexAssume.IsTrue(i.CompareTo(j) == -1);
            Assert.InRange(value, i, j);
        }
    }
}