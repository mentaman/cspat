using Xunit;
using Xunit.Sdk;

public class SameTests
{
    [Fact]
    public void BoxedTypesDontWork()
    {
        int index = 0;

        Assert.Throws<SameException>(() => Assert.Same(index, index));
    }

    [Fact]
    public void SameFailsWith()
    {
        object actual = new object();
        object expected = new object();

        try
        {
            Assert.Same(expected, actual);
        }
        catch (AssertException exception)
        {
            Assert.Equal("Assert.Same() Failure", exception.UserMessage);
        }
    }

    [Fact]
    public void ValuesAreNotTheSame()
    {
        Assert.Throws<SameException>(() => Assert.Same("bob", "jim"));
    }

    [Fact]
    public void ValuesAreTheSame()
    {
        string jim = "jim";

        Assert.Same(jim, jim);
    }
}