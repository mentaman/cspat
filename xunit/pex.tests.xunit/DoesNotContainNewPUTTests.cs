using System;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Xunit;
using Xunit.Sdk;

namespace pex.tests.xunit
{
    [PexClass(typeof(Assert))]
    public partial class DoesNotContainsNewPUTTests
        //5 * 2.10
    {
        [PexMethod, PexAllowedException(typeof(DoesNotContainException))]
        public void TestIEquable(EquatableObject x, [PexAssumeNotNull]EquatableObject[] list)
        {
            Assert.DoesNotContain(x, list);
        }

        [PexMethod, PexAllowedException(typeof(DoesNotContainException))]
        public void TestIEnumerable(int[] x, [PexAssumeNotNull]int[][] list)
        {
            Assert.DoesNotContain(x, list);
        }

        [PexMethod, PexAllowedException(typeof(DoesNotContainException))]
        public void TestIComparable(ComparableObject x, [PexAssumeNotNull]ComparableObject[] list)
        {
            Assert.DoesNotContain(x, list);
        }

        [PexMethod, PexAllowedException(typeof(DoesNotContainException))]
        public void TestIComparable2(ComparableObject2 x, [PexAssumeNotNull]ComparableObject2[] list)
        {
            Assert.DoesNotContain(x, list);
        }

        [PexMethod, PexAllowedException(typeof(DoesNotContainException))]
        public void TestTypeNotEqual(object x, [PexAssumeNotNull]object[] list)
        {
            Assert.DoesNotContain(x, list);
        }
    }
}