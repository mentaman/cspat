using Xunit;
using Xunit.Sdk;
using Microsoft.Pex.Framework;

[PexClass(typeof(AssertException))]
//100%
public partial class AssertExceptionTests
{
    [Fact, PexMethod]
    public void PreservesUserMessage()
    {
        AssertException ex = new AssertException("UserMessage");

        Assert.Equal("UserMessage", ex.UserMessage);
    }

    [Fact, PexMethod]
    public void UserMessageIsTheMessage()
    {
        AssertException ex = new AssertException("UserMessage");

        Assert.Equal(ex.UserMessage, ex.Message);
    }
}