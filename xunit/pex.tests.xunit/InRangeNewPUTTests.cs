using System;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Xunit;
using Xunit.Sdk;

namespace pex.tests.xunit
{
    [PexClass(typeof(Assert))]
    public partial class InRangeNewPUTTests
    //5 * 2.10
    {
        [PexMethod]
        public void InRangeTestEquable(EquatableObject i, EquatableObject j, EquatableObject value)
        {
            Assert.InRange(value, i, j);
        }

        [PexMethod]
        public void InRangeTestEnumerable(int[] i, int[] j, int[] value)
        {
            Assert.InRange(value, i, j);
        }

        [PexMethod, PexAllowedException(typeof(InRangeException))]
        public void InRangeTestComparable(ComparableObject i, ComparableObject j, ComparableObject value)
        {
            Assert.InRange(value, i, j);
        }

        [PexMethod, PexAllowedException(typeof(InRangeException))]
        public void InRangeTestComparable2 (ComparableObject2 i, ComparableObject2 j, ComparableObject2 value)
        {
            Assert.InRange(value, i, j);
        }

        [PexMethod, PexAllowedException(typeof(InRangeException))]
        public void InRangeTestObject(object i, object j, object value)
        {
            Assert.InRange(value, i, j);
        }
    }
}