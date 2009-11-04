using Microsoft.Pex.Framework;
using Xunit;
using Xunit.Sdk;

[PexClass(typeof(Assert))]
public partial class TrueTests
{
    [Fact, PexMethod]
    public void AssertTrue()
    {
        Assert.True(true);
    }

    [Fact, PexMethod]
    public void AssertTrueThrowsExceptionWhenFalse()
    {
        TrueException exception = PexAssert.Throws<TrueException>(() => Assert.True(false));

        PexAssert.AreEqual("Assert.True() Failure", exception.UserMessage);
    }
}