using Microsoft.Pex.Framework;
using Xunit;
using Xunit.Sdk;

[PexClass(typeof(Assert))]
public partial class FalseTests
{
    [Fact,PexMethod]
    public void AssertFalse()
    {
        Assert.False(false);
    }

    [Fact, PexMethod]
    public void AssertFalseThrowsExceptionWhenTrue()
    {
        try
        {
            Assert.False(true);
        }
        catch (AssertException exception)
        {
            PexAssert.AreEqual("Assert.False() Failure", exception.UserMessage);
        }
    }
}