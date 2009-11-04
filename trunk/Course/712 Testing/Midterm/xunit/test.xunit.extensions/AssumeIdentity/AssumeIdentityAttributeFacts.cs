using System;
using System.Security.Principal;
using System.Threading;
using Microsoft.Pex.Framework;
using Xunit;
using Xunit.Extensions;

public class AssumeIdentityAttributeFact
{
    [Fact, PexMethod]
    public void CreatingWithNullIdentityThrows()
    {
        Assert.Throws<ArgumentException>(() => new AssumeIdentityAttribute(null));
    }

    [Fact, PexMethod]
    public void CreatingWithEmptyIdentityThrows()
    {
        Assert.Throws<ArgumentException>(() => new AssumeIdentityAttribute(""));
    }

    [Fact, PexMethod]
    public void IdentityIsChangedWithinTest()
    {
        AssumeIdentityAttribute attr = new AssumeIdentityAttribute("007");

        attr.Before(null);

        Assert.True(Thread.CurrentPrincipal.IsInRole("007"));
        attr.After(null);
    }

    [Fact, PexMethod]
    public void OriginalIdentityIsReinstatedAfterTest()
    {
        IPrincipal original = Thread.CurrentPrincipal;
        AssumeIdentityAttribute attr = new AssumeIdentityAttribute("007");
        attr.Before(null);

        attr.After(null);

        Assert.Equal(original, Thread.CurrentPrincipal);
    }
}