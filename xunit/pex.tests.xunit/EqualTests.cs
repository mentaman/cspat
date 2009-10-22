using System;
using System.Collections.Generic;
using System.Text;
using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;
using Microsoft.Pex.Framework.Validation;

namespace pex.tests.xunit
{
    [PexClass(typeof(Assert))]
    public partial class EqualTests
    {
        //ArrayTests Begin
        
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
		//Pattern 2.2, 2.10
        public void TestEqualPUTArrayTests([PexAssumeUnderTest]string[] i, [PexAssumeUnderTest]string[] j)
        {
            PexAssume.IsTrue(i.Length > 0);
            PexAssume.IsTrue(j.Length > 0);
            Assert.Equal(i, j);
        }

        //End

        //ComparableTests Begin

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
		//Pattern 2.2
        public void TestEqualPUTObjectWithComparable([PexAssumeUnderTest]ComparableObject obj1, [PexAssumeUnderTest]ComparableObject obj2)
        {
            Assert.Equal(obj1, obj2);
            PexAssert.IsTrue(obj1.CompareCalled);
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
		//Pattern 2.2
        public void TestEqualPUTObjectWithGenericComparable([PexAssumeUnderTest]GenericComparableObject obj1, [PexAssumeUnderTest]GenericComparableObject obj2)
        {
            Assert.Equal(obj1, obj2);
            PexAssert.IsTrue(obj1.CompareCalled);
        }

        /*
        public void ObjectWithoutIComparable()
        {
            NonComparableObject nco1 = new NonComparableObject();
            NonComparableObject nco2 = new NonComparableObject();

            Assert.Equal(nco1, nco2);
        }
         */

        [PexMethod]
		//Pattern 2.2
        public void TestEqualPUTObjectWithoutIComparable([PexAssumeUnderTest]GenericComparableObject obj1, [PexAssumeUnderTest]GenericComparableObject obj2)
        {
            Assert.Equal(obj1, obj2);
        }

        //End

        //DoubleInfinityTests Begin
        /*
        public void DoubleNegativeInfinityEqualsNegativeInfinity()
        {
            Assert.Equal(Double.NegativeInfinity, Double.NegativeInfinity);
        }
         */

        [PexMethod]
        //Don't need PUT
        public void TestEqualPUTDoubleNegativeInfinityEqualsNegativeInfinity()
        {
            Assert.Equal(Double.NegativeInfinity, Double.NegativeInfinity);
        }

        /*
         public void DoubleNegativeInfinityNotEquals()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(1.23, Double.NegativeInfinity));
        }
         */

        [PexMethod]
		//Pattern 2.2
        public void TestEqualPUTDoubleNegativeInfinityNotEquals(Double i)
        {
            PexAssume.IsTrue(i > 0);
            Assert.Throws<EqualException>(() => Assert.Equal(i, Double.NegativeInfinity));
        }

        /*
         public void DoublePositiveInfinityEqualsPositiveInfinity()
        {
            Assert.Equal(Double.PositiveInfinity, Double.PositiveInfinity);
        }
         */

        [PexMethod]
        //Don't need PUT
        public void TestEqualPUTDoublePositiveInfinityEqualsPositiveInfinity()
        {
            Assert.Equal(Double.PositiveInfinity, Double.PositiveInfinity);
        }

        /*
         public void DoublePositiveInfinityNotEquals()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(1.23, Double.PositiveInfinity));
        }
         */

        [PexMethod]
		//Pattern 2.2
        public void TestEqualPUTDoublePositiveInfinityNotEquals(Double i)
        {
            PexAssume.IsTrue(i < Double.PositiveInfinity);
            Assert.Throws<EqualException>(() => Assert.Equal(i, Double.PositiveInfinity));
        }

        /*
         public void DoublePositiveInfinityNotEqualsNegativeInfinity()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(Double.NegativeInfinity, Double.PositiveInfinity));
        }
         */

        [PexMethod]
        //Don't need PUT
        public void TestEqualPUTDoublePositiveInfinityNotEqualsNegativeInfinity()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(Double.NegativeInfinity, Double.PositiveInfinity));
        }

        //End

        //EnumerableTests Begin

        class IntGenerator
        {
            public static IEnumerable<int> Range(int start, int end)
            {
                for (int i = start; i <= end; i++)
                    yield return i;
            }
        }

        /*
        public void Select_should_equal_Select()
        {
            IEnumerable<int> items = IntGenerator.Range(1, 12);
            IEnumerable<int> others = IntGenerator.Range(1, 12);

            Assert.Equal(items, others);
        }
         */

        [PexMethod]
		//Pattern 2.2
        public void TestEqualPUTSelectShouldEqualSelect([PexAssumeUnderTest]IEnumerable<int> items, [PexAssumeUnderTest]IEnumerable<int> others)
        {
            Assert.Equal(items, others);
        }

        public class EquatableObject : IEquatable<EquatableObject>
        {
            public bool Equals__Called;
            public EquatableObject Equals_Other;

            public bool Equals(EquatableObject other)
            {
                Equals__Called = true;
                Equals_Other = other;

                return true;
            }
        }

       
        //End

        //EquatableObjectTests Begin

        /*
        public void CallsIEquatable()
        {
            EquatableObject obj1 = new EquatableObject();
            EquatableObject obj2 = new EquatableObject();

            Assert.Equal(obj1, obj2);

            Assert.True(obj1.Equals__Called);
            Assert.Same(obj2, obj1.Equals_Other);
        }
         */

        [PexMethod]
		//Pattern 2.2
        public void TestEqualPUTCallsIEquatable([PexAssumeUnderTest]EquatableObject obj1, [PexAssumeUnderTest]EquatableObject obj2)
        {
            Assert.Equal(obj1, obj2);

            PexAssert.IsTrue(obj1.Equals__Called);
            PexAssert.AreSame(obj2, obj1.Equals_Other);
        }

        //End

        //NaNTests Begin

        /*
         public void EqualsNaNFails()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(Double.NaN, 1.234));
        }

         public void NanEqualsFails()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(1.234, Double.NaN));
        }

         */

        [PexMethod]
        //Not include i =  j = NaN
		//Pattern 2.2
        public void TestEqualPUTEqualsFails([PexAssumeUnderTest]Double i, [PexAssumeUnderTest]Double j)
        {
            PexAssume.IsTrue(Double.IsNaN(i) || Double.IsNaN(j));
            Assert.Throws<EqualException>(() => Assert.Equal(i, j));
        }

        /*
         public void NanEqualsNaNSucceeds()
        {
            Assert.Equal(Double.NaN, Double.NaN);
        }
         */

        [PexMethod]
        //Don't need PUT
        public void TestEqualPUTNanEqualsNaNSucceeds()
        {
            Assert.Equal(Double.NaN, Double.NaN);
        }

        //End

        public class NonComparableObject
        {
            public override bool Equals(object obj)
            {
                return true;
            }

            public override int GetHashCode()
            {
                return 42;
            }
        }

        //NullTests Begin

        /*
         public void EqualsNull()
        {
            Assert.Equal<object>(null, null);
        }
         */

        /*
         public void FailsWhenActualIsNullExpectedIsNot()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(new object(), null));
        }
         */



        /*
         public void FailsWhenExpectedIsNullActualIsNot()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(null, new object()));
        }
         */

        [PexMethod(MaxRuns = 100)]
		//Pattern 2.1
        public void TestEqualPUTNullTests(object i, object j)
        {
            Assert.Throws<EqualException>(() => Assert.Equal(i, j));
        }

        //End

        //NumericTests Begin

        /*
         public void DecimalEqualsFails()
        {
            decimal expected = 25;
            decimal actual = 42;

            Assert.Throws<EqualException>(() => Assert.Equal(expected, actual));
        }
         */

        [PexMethod, PexAllowedException(typeof(EqualException))]
        //Pattern 2.1 2.10
        public void TestEqualPUTDecimalEqualsFails(decimal i, decimal j)
        {
            Assert.Equal(i, j);
        }

        /*
         public void DoubleEqualsFails()
        {
            double expected = 25.3;
            double actual = 42.0;

            Assert.Throws<EqualException>(() => Assert.Equal(expected, actual));
        }
         */

        [PexMethod, PexAllowedException(typeof(EqualException))]
        //Pattern 2.1
        public void TestEqualPUTDoubleEqualsFails(double i, double j)
        {
            Assert.Equal(i, j);
        }

        /*
         public void EqualsByte()
        {
            byte valueType = 35;
            Byte referenceValue = 35;

            Assert.True(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<byte>(valueType, 35);
            Assert.Equal<byte>(referenceValue, 35);
        }

         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsByte(byte i, Byte j)
        {
            PexAssume.IsTrue(i == j);
            
            var valueType = i;
            var referenceValue = j;

            PexAssert.IsTrue(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<byte>(valueType, i);
            Assert.Equal<byte>(referenceValue, j);
        }

        /*
         public void EqualsDecimal()
        {
            decimal valueType = 35;
            Decimal referenceValue = 35;

            Assert.True(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<decimal>(valueType, 35);
            Assert.Equal(valueType, 35M);
            Assert.Equal<decimal>(referenceValue, 35);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsDecimal(decimal i, Decimal j)
        {
            PexAssume.IsTrue(i == j);

            var valueType = i;
            var referenceValue = j;

            PexAssert.IsTrue(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal(valueType, i);
            Assert.Equal(referenceValue, j);
        }

        /*
         public void EqualsInt16()
        {
            short valueType = 35;
            Int16 referenceValue = 35;

            Assert.True(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<short>(valueType, 35);
            Assert.Equal<short>(referenceValue, 35);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsInt16(short i, Int16 j)
        {
            PexAssume.IsTrue(i == j);

            var valueType = i;
            var referenceValue = j;

            PexAssert.IsTrue(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<short>(valueType, i);
            Assert.Equal<short>(referenceValue, j);
        }

        /*
         public void EqualsInt32()
        {
            int valueType = 35;
            Int32 referenceValue = 35;

            Assert.True(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal(valueType, 35);
            Assert.Equal(referenceValue, 35);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsInt32(int i, Int32 j)
        {
            PexAssume.IsTrue(i == j);

            var valueType = i;
            var referenceValue = j;

            PexAssert.IsTrue(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal(valueType, i);
            Assert.Equal(referenceValue, j);
        }

        /*
         public void EqualsInt64()
        {
            long valueType = 35;
            Int64 referenceValue = 35;

            Assert.True(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<long>(valueType, 35);
            Assert.Equal<long>(referenceValue, 35);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsInt64(long i, Int64 j)
        {
            PexAssume.IsTrue(i == j);

            var valueType = i;
            var referenceValue = j;

            PexAssert.IsTrue(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<long>(valueType, i);
            Assert.Equal<long>(referenceValue, j);
        }

        /*
         public void EqualsSByte()
        {
            sbyte valueType = 35;
            SByte referenceValue = 35;

            Assert.True(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<sbyte>(valueType, 35);
            Assert.Equal<sbyte>(referenceValue, 35);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsSByte(sbyte i, SByte j)
        {
            PexAssume.IsTrue(i == j);

            var valueType = i;
            var referenceValue = j;

            PexAssert.IsTrue(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<sbyte>(valueType, i);
            Assert.Equal<sbyte>(referenceValue, j);
        }

        /*
         public void EqualsUInt16()
        {
            ushort valueType = 35;
            UInt16 referenceValue = 35;

            Assert.True(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<ushort>(valueType, 35);
            Assert.Equal<ushort>(referenceValue, 35);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsUInt16(ushort i, UInt16 j)
        {
            PexAssume.IsTrue(i == j);

            var valueType = i;
            var referenceValue = j;

            PexAssert.IsTrue(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<ushort>(valueType, i);
            Assert.Equal<ushort>(referenceValue, j);
        }

        /*
         public void EqualsUInt32()
        {
            uint valueType = 35;
            UInt32 referenceValue = 35;

            Assert.True(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<uint>(valueType, 35);
            Assert.Equal<uint>(referenceValue, 35);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsUInt32(uint i, UInt32 j)
        {
            PexAssume.IsTrue(i == j);

            var valueType = i;
            var referenceValue = j;

            PexAssert.IsTrue(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<uint>(valueType, i);
            Assert.Equal<uint>(referenceValue, j);
        }

        /*
         public void EqualsUInt64()
        {
            ulong valueType = 35;
            UInt64 referenceValue = 35;

            Assert.True(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<ulong>(valueType, 35);
            Assert.Equal<ulong>(referenceValue, 35);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsUInt64(ulong i, UInt64 j)
        {
            PexAssume.IsTrue(i == j);

            var valueType = i;
            var referenceValue = j;

            PexAssert.IsTrue(valueType == referenceValue);
            Assert.Equal(referenceValue, valueType);
            Assert.Equal<ulong>(valueType, i);
            Assert.Equal<ulong>(referenceValue, j);
        }

        /*
         public void Int32Int64Comparison()
        {
            long l64 = 0;
            int i32 = 0;
            Assert.Equal<long>(l64, i32);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTInt32Int64Comparison(long i, int j)
        {
            PexAssume.IsTrue(i == j);

            Assert.Equal<long>(i, j);
        }

        /*
         public void IntegerLongComparison()
        {
            Assert.Equal<long>(1L, 1);
            Assert.Equal<long>(1, 1L);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTIntegerLongComparison(long i, int j)
        {
            PexAssume.IsTrue(i == j);
            Assert.Equal<long>(i, j);
            Assert.Equal<long>(j, i);
        }

        /*
         public void LongEquals()
        {
            Assert.Equal(2L, 2L);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTLongEquals(long i, long j)
        {
            PexAssume.IsTrue(i == j);

            Assert.Equal(j, i);
        }

        /*
         public void LongEqualsFails()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(3L, 2L));
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTLongEqualsFails(long i, long j)
        {
            PexAssume.IsFalse(i == j);

            Assert.Throws<EqualException>(() => Assert.Equal(i, j));
        }

        /*
         public void UInt64EqualsFails()
        {
            UInt64 expected = 25;
            UInt64 actual = 42;

            Assert.Throws<EqualException>(() => Assert.Equal(expected, actual));
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTLongEqualsFails(UInt64 i, UInt64 j)
        {
            PexAssume.IsFalse(i == j);

            Assert.Throws<EqualException>(() => Assert.Equal(i, j));
        }

        //End

        //SingleInfinityTests Begin

        /*
         public void SingleNegativeInfinityEqualsNegativeInfinity()
        {
            Assert.Equal(Single.NegativeInfinity, Single.NegativeInfinity);
        }

         public void SingleNumberNotEqualNegativeInfinity()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(1.23f, Single.NegativeInfinity));
        }
         */

        [PexMethod, PexAllowedException(typeof(EqualException))]
        //Pattern 2.1 2.10
        public void TestEqualPUTSingleNegativeInfinity(double i)
        {
            Assert.Equal(i, Single.NegativeInfinity);
        }

        /*
         public void SingleNumberNotEqualPositiiveInfinity()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(1.23f, Single.PositiveInfinity));
        }

         public void SinglePositiveInfinityEqualsPositiveInfinity()
        {
            Assert.Equal(Single.PositiveInfinity, Single.PositiveInfinity);
        }
         */

        [PexMethod, PexAllowedException(typeof(EqualException))]
        //Pattern 2.1 2.10
        public void TestEqualPUTSinglePositiveInfinity(double i)
        {
            Assert.Equal(i, Single.PositiveInfinity);
        }

        /*
         public void SinglePositiveInfinityNotEqualNegativeInfinity()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(Single.NegativeInfinity, Single.PositiveInfinity));
        }
         */

        [PexMethod]
        //Don't need PUT
        public void TestEqualPUTSinglePositiveInfinityNotEqualNegativeInfinity()
        {
            Assert.Throws<EqualException>(() => Assert.Equal(Single.NegativeInfinity, Single.PositiveInfinity));
        }

        //End

        //StringTests Begin

        /*
         public void EqualsFail()
        {
            Assert.Throws<EqualException>(() => Assert.Equal("expected", "actual"));
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTStringEqualsFail(string i, string j)
        {
            PexAssume.IsFalse(i == j);
            Assert.Throws<EqualException>(() => Assert.Equal(i, j));
        }

        /*
         public void EqualsString()
        {
            string testString = "Test String";
            string expected = testString;
            string actual = testString;

            Assert.True(actual == expected);
            Assert.Equal(expected, actual);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTEqualsString(string i, string j)
        {
            PexAssume.IsTrue(i == j);
            Assert.True(i == j);
            Assert.Equal(i, j);
        }

        /*
         public void EqualsStringIgnoreCase()
        {
            string expected = "TestString";
            string actual = "testString";

            Assert.False(actual == expected);
            Assert.NotEqual(expected, actual);
            Assert.Equal(expected, actual, StringComparer.CurrentCultureIgnoreCase);
        }
         */

        [PexMethod]
        //Pattern 2.2 got problem
        public void TestEqualPUTEqualsStringIgnoreCase([PexAssumeUnderTest]string i, [PexAssumeUnderTest]string j)
        {
            PexAssume.IsFalse(i == j);
            Assert.False(j == i);
            Assert.NotEqual(i, j);
            Assert.Equal(i, j, StringComparer.CurrentCultureIgnoreCase);
        }

        /*
         [Fact]
        public void String()
        {
            string s1 = "test";
            string s2 = new StringBuilder(s1).ToString();

            Assert.True(s1.Equals(s2));
            Assert.Equal(s2, s1);
        }
         */

        [PexMethod]
        //Pattern 2.4 Round Trip?
        public void TestEqualPUTString([PexAssumeUnderTest]string s1)
        {
            string s2 = new StringBuilder(s1).ToString();
            Assert.True(s1.Equals(s2));
            Assert.Equal(s2, s1);
        }


        //End

        //NullableValueTypesTests Begin

        /*
         public void NullableValueTypesCanBeNull()
        {
            DateTime? dt1 = null;
            DateTime? dt2 = null;

            Assert.Equal(dt1, dt2);
        }
         */

        [PexMethod]
        //Pattern 2.2
        public void TestEqualPUTNullableValueTypesCanBeNull(DateTime? dt1, DateTime? dt2)
        {
            PexAssume.IsTrue(dt1 == dt2);
            Assert.Equal(dt1, dt2);
        }

        //End
    }

}