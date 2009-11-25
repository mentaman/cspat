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
        [PexMethod]
        //Pattern 2.2
        public void TestDoesNotContainPUTCanSearchForSubstrings([PexAssumeUnderTest]String i, [PexAssumeUnderTest]String j)
        {
            PexAssume.IsFalse(j.Contains(i));
            PexAssume.IsTrue(i.Length < j.Length);
            Assert.DoesNotContain(i, j);
        }

        [PexMethod]
        //Pattern 2.2
        public void TestDoesNotContainPUTCanSearchForSubstringsCaseInsensitive([PexAssumeNotNull]string i, [PexAssumeNotNull]string j)
        {
            PexAssume.IsTrue(i.Length > 0 && j.Length > 0);
            PexAssume.IsTrue(i.Contains("a"));
            PexAssume.IsTrue(j.Contains(i));
            PexAssert.Throws<DoesNotContainException>(
                () => Assert.DoesNotContain(i.ToUpper(), j, StringComparison.InvariantCultureIgnoreCase));
        }

        [PexMethod]
        //Pattern 2.2
        public void TestDoesNotContainPUTSubstringDoesNotContainIsCaseSensitiveByDefault([PexAssumeNotNull]string i, [PexAssumeNotNull]string j)
        {
            PexAssume.IsTrue(i.Length > 0 && j.Length > 0);
            PexAssume.IsTrue(j.Contains(i));
            PexAssume.IsTrue(j.Contains("a") && i.Contains("a"));
            Assert.DoesNotContain(i.ToUpper(), j);
        }

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