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
        public void TestIEquable(EquatableObject x, [PexAssumeNotNull]EquatableObject[] list)
        {
            Assert.Contains(x, list);
        }

        [PexMethod, PexAllowedException(typeof (ContainsException))]
        public void TestIEnumerable(int[] x, [PexAssumeNotNull]int[][] list)
        {
            Assert.Contains(x, list);
        }

        [PexMethod, PexAllowedException(typeof(ContainsException))]
        public void TestIComparable(ComparableObject x, [PexAssumeNotNull]ComparableObject[] list)
        {
            Assert.Contains(x, list);
        }

        [PexMethod, PexAllowedException(typeof(ContainsException))]
        public void TestIComparable2(ComparableObject2 x, [PexAssumeNotNull]ComparableObject2[] list)
        {
            Assert.Contains(x, list);
        }

        [PexMethod, PexAllowedException(typeof (ContainsException))]
        public void TestTypeNotEqual(object x, [PexAssumeNotNull]object[] list)
        {
            Assert.Contains(x, list);
        }

//        [PexMethod]
//        //Pattern 2.2
//        public void TestContainsPUTCanSearchForSubstring(string subString, string wholeString)
//        {
//            PexAssume.IsNotNull(subString);
//            PexAssume.IsNotNull(wholeString);
//            PexAssume.IsTrue(wholeString.IndexOf(subString) != -1);
//            PexAssume.IsTrue(wholeString.Length > subString.Length);
//            Assert.Contains(subString, wholeString);
//        }
//
//        [PexMethod]
//        //Pattern 2.2
//        public void TestContainsPUTCanSearchForSubstringCaseInsensitive(string subString, string wholeString)
//        {
//            PexAssume.IsNotNull(subString);
//            PexAssume.IsNotNull(wholeString);
//            PexAssume.IsTrue(wholeString.Contains("A"));
//            PexAssume.IsTrue(subString.Contains("a"));
//            PexAssume.IsTrue(wholeString.Length > subString.Length);
//            Assert.Contains(subString, wholeString, StringComparison.InvariantCultureIgnoreCase);
//        }
//
//        [PexMethod]
//        //Pattern 2.2
//        public void TestContainsPUTSubstringNotFound(string substring, string wholeString)
//        {
//            PexAssume.IsNotNull(substring);
//            PexAssume.IsNotNull(wholeString);
//            PexAssume.IsTrue(wholeString.Length > substring.Length);
//            PexAssume.IsTrue(substring.Length > 0);
//            PexAssume.IsTrue(wholeString.IndexOf(substring) == -1);
//            PexAssert.Throws<ContainsException>(() => Assert.Contains(substring, wholeString));
//        }
//
//        [PexMethod]
//        //Pattern 2.2
//        public void TestContainsPUTSubstringContainsIsCaseSensitiveByDefault(string substring, string wholeString)
//        {
//            PexAssume.IsNotNull(substring);
//            PexAssume.IsNotNull(wholeString);
//            PexAssume.IsTrue(wholeString.Length > substring.Length);
//            PexAssume.IsTrue(substring.Length > 0);
//            PexAssume.IsTrue(wholeString.Contains("a"));
//            PexAssume.IsTrue(substring.Contains("a"));
//            PexAssume.IsTrue(wholeString.IndexOf(substring) != -1);
//            PexAssert.Throws<ContainsException>(() => Assert.Contains(substring, wholeString.ToUpper()));
//        }


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