using Microsoft.Pex.Framework;
using Xunit;
using Xunit.Sdk;

[PexClass(typeof(Assert))]
public partial class InRangeTests
{
        [Fact, PexMethod]
        public void DoubleNotWithinRange()
        {
            PexAssert.Throws<InRangeException>(() => Assert.InRange(1.50, .75, 1.25));
        }

        [Fact, PexMethod]
        public void DoubleValueWithinRange()
        {
            Assert.InRange(1.0, .75, 1.25);
        }
 
        [Fact, PexMethod]
        public void IntNotWithinRangeWithZeroActual()
        {
            PexAssert.Throws<InRangeException>(() => Assert.InRange(0, 1, 2));
        }

        [Fact, PexMethod]
        public void IntNotWithinRangeWithZeroMinimum()
        {
            PexAssert.Throws<InRangeException>(() => Assert.InRange(2, 0, 1));
        }

        [Fact, PexMethod]
        public void IntValueWithinRange()
        {
            Assert.InRange(2, 1, 3);
        }
    

        [Fact, PexMethod]
        public void StringNotWithinRange()
        {
            PexAssert.Throws<InRangeException>(() => Assert.InRange("adam", "bob", "scott"));
        }

        [Fact, PexMethod]
        public void StringValueWithinRange()
        {
            Assert.InRange("bob", "adam", "scott");
        }
    
}