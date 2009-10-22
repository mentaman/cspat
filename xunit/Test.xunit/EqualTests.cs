using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Pex.Framework;
using Xunit;
using Xunit.Sdk;

[PexClass(typeof(Assert))]
public partial class EqualTests
{

    [Fact, PexMethod]
    public void Array()
    {
        string[] expected = { "@", "a", "ab", "b" };
        string[] actual = { "@", "a", "ab", "b" };

        Assert.Equal(expected, actual);
        PexAssert.Throws<NotEqualException>(() => Assert.NotEqual(expected, actual));
    }

    [Fact, PexMethod]
    public void ArraysOfDifferentLengthsAreNotEqual()
    {
        string[] expected = { "@", "a", "ab", "b", "c" };
        string[] actual = { "@", "a", "ab", "b" };

        PexAssert.Throws<EqualException>(() => Assert.Equal(expected, actual));
        Assert.NotEqual(expected, actual);
    }

    [Fact, PexMethod]
    public void ArrayValuesAreDifferentNotEqual()
    {
        string[] expected = { "@", "d", "v", "d" };
        string[] actual = { "@", "a", "ab", "b" };

        PexAssert.Throws<EqualException>(() => Assert.Equal(expected, actual));
        Assert.NotEqual(expected, actual);
    }


    public class ComparableObject : IComparable
    {
        public bool CompareCalled;

        public int CompareTo(object obj)
        {
            CompareCalled = true;
            return 0;
        }
    }


    [Fact, PexMethod]
    public void ObjectWithComparable()
    {
        ComparableObject obj1 = new ComparableObject();
        ComparableObject obj2 = new ComparableObject();

        Assert.Equal(obj1, obj2);
        PexAssert.IsTrue(obj1.CompareCalled);
    }

    [Fact, PexMethod]
    public void ObjectWithGenericComparable()
    {
        GenericComparableObject obj1 = new GenericComparableObject();
        GenericComparableObject obj2 = new GenericComparableObject();

        Assert.Equal(obj1, obj2);
        PexAssert.IsTrue(obj1.CompareCalled);
    }

    [Fact, PexMethod]
    public void ObjectWithoutIComparable()
    {
        NonComparableObject nco1 = new NonComparableObject();
        NonComparableObject nco2 = new NonComparableObject();

        Assert.Equal(nco1, nco2);
    }



    [Fact, PexMethod]
    public void DoubleNegativeInfinityEqualsNegativeInfinity()
    {
        Assert.Equal(Double.NegativeInfinity, Double.NegativeInfinity);
    }

    [Fact, PexMethod]
    public void DoubleNegativeInfinityNotEquals()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(1.23, Double.NegativeInfinity));
    }

    [Fact, PexMethod]
    public void DoublePositiveInfinityEqualsPositiveInfinity()
    {
        Assert.Equal(Double.PositiveInfinity, Double.PositiveInfinity);
    }

    [Fact, PexMethod]
    public void DoublePositiveInfinityNotEquals()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(1.23, Double.PositiveInfinity));
    }

    [Fact, PexMethod]
    public void DoublePositiveInfinityNotEqualsNegativeInfinity()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(Double.NegativeInfinity, Double.PositiveInfinity));
    }



    [Fact, PexMethod]
    public void Select_should_equal_Select()
    {
        IEnumerable<int> items = IntGenerator.Range(1, 12);
        IEnumerable<int> others = IntGenerator.Range(1, 12);

        Assert.Equal(items, others);
    }

    class IntGenerator
    {
        public static IEnumerable<int> Range(int start, int end)
        {
            for (int i = start; i <= end; i++)
                yield return i;
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

            return true;
        }
    }


    [Fact, PexMethod]
    public void CallsIEquatable()
    {
        EquatableObject obj1 = new EquatableObject();
        EquatableObject obj2 = new EquatableObject();

        Assert.Equal(obj1, obj2);

        PexAssert.IsTrue(obj1.Equals__Called);
        PexAssert.AreSame(obj2, obj1.Equals_Other);
    }


    public class GenericComparableObject : IComparable<GenericComparableObject>
    {
        public bool CompareCalled;

        public int CompareTo(GenericComparableObject other)
        {
            CompareCalled = true;
            return 0;
        }
    }


    [Fact, PexMethod]
    public void EqualsNaNFails()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(Double.NaN, 1.234));
    }

    [Fact, PexMethod]
    public void NanEqualsFails()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(1.234, Double.NaN));
    }

    [Fact, PexMethod]
    public void NanEqualsNaNSucceeds()
    {
        Assert.Equal(Double.NaN, Double.NaN);
    }


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


    [Fact, PexMethod]
    public void EqualsNull()
    {
        Assert.Equal<object>(null, null);
    }

    [Fact, PexMethod]
    public void FailsWhenActualIsNullExpectedIsNot()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(new object(), null));
    }

    [Fact, PexMethod]
    public void FailsWhenExpectedIsNullActualIsNot()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(null, new object()));
    }



    [Fact, PexMethod]
    public void DecimalEqualsFails()
    {
        decimal expected = 25;
        decimal actual = 42;

        PexAssert.Throws<EqualException>(() => Assert.Equal(expected, actual));
    }

    [Fact, PexMethod]
    public void DoubleEqualsFails()
    {
        double expected = 25.3;
        double actual = 42.0;

        PexAssert.Throws<EqualException>(() => Assert.Equal(expected, actual));
    }

    [Fact, PexMethod]
    public void EqualsByte()
    {
        byte valueType = 35;
        Byte referenceValue = 35;

        PexAssert.IsTrue(valueType == referenceValue);
        Assert.Equal(referenceValue, valueType);
        Assert.Equal<byte>(valueType, 35);
        Assert.Equal<byte>(referenceValue, 35);
    }

    [Fact, PexMethod]
    public void EqualsDecimal()
    {
        decimal valueType = 35;
        Decimal referenceValue = 35;

        PexAssert.IsTrue(valueType == referenceValue);
        Assert.Equal(referenceValue, valueType);
        Assert.Equal<decimal>(valueType, 35);
        Assert.Equal(valueType, 35M);
        Assert.Equal<decimal>(referenceValue, 35);
    }

    [Fact, PexMethod]
    public void EqualsInt16()
    {
        short valueType = 35;
        Int16 referenceValue = 35;

        PexAssert.IsTrue(valueType == referenceValue);
        Assert.Equal(referenceValue, valueType);
        Assert.Equal<short>(valueType, 35);
        Assert.Equal<short>(referenceValue, 35);
    }

    [Fact, PexMethod]
    public void EqualsInt32()
    {
        int valueType = 35;
        Int32 referenceValue = 35;

        PexAssert.IsTrue(valueType == referenceValue);
        Assert.Equal(referenceValue, valueType);
        Assert.Equal(valueType, 35);
        Assert.Equal(referenceValue, 35);
    }

    [Fact, PexMethod]
    public void EqualsInt64()
    {
        long valueType = 35;
        Int64 referenceValue = 35;

        PexAssert.IsTrue(valueType == referenceValue);
        Assert.Equal(referenceValue, valueType);
        Assert.Equal<long>(valueType, 35);
        Assert.Equal<long>(referenceValue, 35);
    }

    [Fact, PexMethod]
    public void EqualsSByte()
    {
        sbyte valueType = 35;
        SByte referenceValue = 35;

        PexAssert.IsTrue(valueType == referenceValue);
        Assert.Equal(referenceValue, valueType);
        Assert.Equal<sbyte>(valueType, 35);
        Assert.Equal<sbyte>(referenceValue, 35);
    }

    [Fact, PexMethod]
    public void EqualsUInt16()
    {
        ushort valueType = 35;
        UInt16 referenceValue = 35;

        PexAssert.IsTrue(valueType == referenceValue);
        Assert.Equal(referenceValue, valueType);
        Assert.Equal<ushort>(valueType, 35);
        Assert.Equal<ushort>(referenceValue, 35);
    }

    [Fact, PexMethod]
    public void EqualsUInt32()
    {
        uint valueType = 35;
        UInt32 referenceValue = 35;

        PexAssert.IsTrue(valueType == referenceValue);
        Assert.Equal(referenceValue, valueType);
        Assert.Equal<uint>(valueType, 35);
        Assert.Equal<uint>(referenceValue, 35);
    }

    [Fact, PexMethod]
    public void EqualsUInt64()
    {
        ulong valueType = 35;
        UInt64 referenceValue = 35;

        PexAssert.IsTrue(valueType == referenceValue);
        Assert.Equal(referenceValue, valueType);
        Assert.Equal<ulong>(valueType, 35);
        Assert.Equal<ulong>(referenceValue, 35);
    }

    [Fact, PexMethod]
    public void Int32Int64Comparison()
    {
        long l64 = 0;
        int i32 = 0;
        Assert.Equal<long>(l64, i32);
    }

    [Fact, PexMethod]
    public void IntegerLongComparison()
    {
        Assert.Equal<long>(1L, 1);
        Assert.Equal<long>(1, 1L);
    }

    [Fact, PexMethod]
    public void LongEquals()
    {
        Assert.Equal(2L, 2L);
    }

    [Fact, PexMethod]
    public void LongEqualsFails()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(3L, 2L));
    }

    [Fact, PexMethod]
    public void UInt64EqualsFails()
    {
        UInt64 expected = 25;
        UInt64 actual = 42;

        PexAssert.Throws<EqualException>(() => Assert.Equal(expected, actual));
    }



    [Fact, PexMethod]
    public void SingleNegativeInfinityEqualsNegativeInfinity()
    {
        Assert.Equal(Single.NegativeInfinity, Single.NegativeInfinity);
    }

    [Fact, PexMethod]
    public void SingleNumberNotEqualNegativeInfinity()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(1.23f, Single.NegativeInfinity));
    }

    [Fact, PexMethod]
    public void SingleNumberNotEqualPositiiveInfinity()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(1.23f, Single.PositiveInfinity));
    }

    [Fact, PexMethod]
    public void SinglePositiveInfinityEqualsPositiveInfinity()
    {
        Assert.Equal(Single.PositiveInfinity, Single.PositiveInfinity);
    }

    [Fact, PexMethod]
    public void SinglePositiveInfinityNotEqualNegativeInfinity()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal(Single.NegativeInfinity, Single.PositiveInfinity));
    }



    [Fact, PexMethod]
    public void EqualsFail()
    {
        PexAssert.Throws<EqualException>(() => Assert.Equal("expected", "actual"));
    }

    [Fact, PexMethod]
    public void EqualsString()
    {
        string testString = "Test String";
        string expected = testString;
        string actual = testString;

        PexAssert.IsTrue(actual == expected);
        Assert.Equal(expected, actual);
    }

    [Fact, PexMethod]
    public void EqualsStringIgnoreCase()
    {
        string expected = "TestString";
        string actual = "testString";

        PexAssert.IsFalse(actual == expected);
        Assert.NotEqual(expected, actual);
        Assert.Equal(expected, actual, StringComparer.CurrentCultureIgnoreCase);
    }

    [Fact, PexMethod]
    public void String()
    {
        string s1 = "test";
        string s2 = new StringBuilder(s1).ToString();

        PexAssert.IsTrue(s1.Equals(s2));
        Assert.Equal(s2, s1);
    }



    [Fact, PexMethod]
    public void NullableValueTypesCanBeNull()
    {
        DateTime? dt1 = null;
        DateTime? dt2 = null;

        Assert.Equal(dt1, dt2);
    }

}