using System;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;
using Xunit;
using Xunit.Sdk;

namespace pex.tests.xunit
{
    [PexClass(typeof (Assert))]
    public partial class ContainsNewPUTTests
    {
        [PexMethod, PexAllowedException(typeof (ContainsException))]
        public void TestIEquable(EquatableObject x, EquatableObject[] list)
        {
            Assert.Contains(x, list);
        }

        [PexMethod, PexAllowedException(typeof (ContainsException))]
        public void TestIEnumerable(int[] x, int[][] list)
        {
            Assert.Contains(x, list);
        }

        [PexMethod, PexAllowedException(typeof(ContainsException))]
        public void TestIComparable(ComparableObject x, ComparableObject[] list)
        {
            Assert.Contains(x, list);
        }

        [PexMethod, PexAllowedException(typeof(ContainsException))]
        public void TestIComparable2(ComparableObject2 x, ComparableObject2[] list)
        {
            Assert.Contains(x, list);
        }

        [PexMethod, PexAllowedException(typeof (ContainsException))]
        public void TestTypeNotEqual(object x, object[] list)
        {
            Assert.Contains(x, list);
        }
    }

    public class ComparableObject : IComparable<ComparableObject>
    {
        public int CompareTo(ComparableObject other)
        {
            var call = PexChoose.FromCall(this);
            var result = call.ChooseResult<int>();
            return result;
        }
    }

    public class ComparableObject2 : IComparable
    {
        public int CompareTo(object obj)
        {
            var call = PexChoose.FromCall(this);
            var result = call.ChooseResult<int>();
            return result;
        }
    }

    public class EquatableObject : IEquatable<EquatableObject>
    {
        public bool Equals__Called;
        public EquatableObject Equals_Other;

        public bool Equals(EquatableObject other)
        {
            Equals__Called = true;
            Equals_Other = other;

            var call = PexChoose.FromCall(this);
            var result = call.ChooseResult<bool>();
            return result;
        }
    }
}