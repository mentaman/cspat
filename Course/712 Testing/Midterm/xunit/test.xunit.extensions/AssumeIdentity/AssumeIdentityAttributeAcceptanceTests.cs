using System.Security;
using System.Security.Permissions;
using System.Threading;
using Microsoft.Pex.Framework;
using Xunit;
using Xunit.Extensions;

public class AssumeIdentityAttributeAcceptanceTests
{
    [Fact, PexMethod, AssumeIdentity("casper")]
    public void AttributeChangesRoleInTestMethod()
    {
        Assert.True(Thread.CurrentPrincipal.IsInRole("casper"));
    }

    [Fact, PexMethod]
    public void CallingSecuredMethodWillThrow()
    {
        Assert.Throws<SecurityException>(() => DefeatVillian());
    }

    [Fact, PexMethod, AssumeIdentity("Q")]
    public void CallingSecuredMethodWithWrongIdentityWillThrow()
    {
        Assert.Throws<SecurityException>(() => DefeatVillian());
    }

    [Fact, PexMethod, AssumeIdentity("007")]
    public void CallingSecuredMethodWithAssumedIdentityPasses()
    {
        Assert.DoesNotThrow(() => DefeatVillian());
    }

    [PrincipalPermission(SecurityAction.Demand, Role = "007")]
    public void DefeatVillian() { }
}