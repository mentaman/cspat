using System;
using System.Collections.Generic;
using System.Text;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.xunit
{
    [PexClass]
    public partial class EqualTests
    {
        /*
        public class ArrayTests
        {
            [Fact]
            public void Array()
            {
                string[] expected = { "@", "a", "ab", "b" };
                string[] actual = { "@", "a", "ab", "b" };

                Assert.Equal(expected, actual);
                Assert.Throws<NotEqualException>(() => Assert.NotEqual(expected, actual));
            }

            [Fact]
            public void ArraysOfDifferentLengthsAreNotEqual()
            {
                string[] expected = { "@", "a", "ab", "b", "c" };
                string[] actual = { "@", "a", "ab", "b" };

                Assert.Throws<EqualException>(() => Assert.Equal(expected, actual));
                Assert.NotEqual(expected, actual);
            }

            [Fact]
            public void ArrayValuesAreDifferentNotEqual()
            {
                string[] expected = { "@", "d", "v", "d" };
                string[] actual = { "@", "a", "ab", "b" };

                Assert.Throws<EqualException>(() => Assert.Equal(expected, actual));
                Assert.NotEqual(expected, actual);
            }
        }
        */

        [PexMethod, PexAllowedException(typeof(EqualException))]
        public void TestEqualPUTArrayTests([PexAssumeUnderTest]string[] i, [PexAssumeUnderTest]string[] j)
        {
            PexAssume.AreElementsNotNull(i);
            PexAssume.AreElementsNotNull(j);
            Assert.Equal(i, j);
        }

        /*
         public void ObjectWithComparable()
        {
            ComparableObject obj1 = new ComparableObject();
            ComparableObject obj2 = new ComparableObject();

            Assert.Equal(obj1, obj2);
            Assert.True(obj1.CompareCalled);
        }
         */

        public class ComparableObject : IComparable
        {
            public bool CompareCalled;

            public int CompareTo(object obj)
            {
                CompareCalled = true;
                return 0;
            }
        }

        [PexMethod]
        public void TestEqualPUTObjectWithComparable([PexAssumeUnderTest]ComparableObject obj1, [PexAssumeUnderTest]ComparableObject obj2)
        {
            Assert.Equal(obj1, obj2);
            Assert.True(obj1.CompareCalled);
        }

        /*
         public void ObjectWithGenericComparable()
        {
            GenericComparableObject obj1 = new GenericComparableObject();
            GenericComparableObject obj2 = new GenericComparableObject();

            Assert.Equal(obj1, obj2);
            Assert.True(obj1.CompareCalled);
        }
         */

        public class GenericComparableObject : IComparable<GenericComparableObject>
        {
            public bool CompareCalled;

            public int CompareTo(GenericComparableObject other)
            {
                CompareCalled = true;
                return 0;
            }
        }

        [PexMethod]
        public void TestEqualPUTObjectWithGenericComparable([PexAssumeUnderTest]GenericComparableObject obj1, [PexAssumeUnderTest]GenericComparableObject obj2)
        {
            Assert.Equal(obj1, obj2);
            Assert.True(obj1.CompareCalled);
        }
    }

}