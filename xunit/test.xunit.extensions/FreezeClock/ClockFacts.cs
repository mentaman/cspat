using System;
using Microsoft.Pex.Framework;
using Xunit;
using Xunit.Extensions;

public class ClockFact
{
    public class Freeze
    {
        [Fact, PexMethod]
        public void DoubleFreezeThrows()
        {
            Clock.Freeze();

            try
            {
                Assert.Throws<InvalidOperationException>(() => Clock.Freeze());
            }
            finally
            {
                Clock.Thaw();
            }
        }
    }

    public class Now
    {
        [Fact, PexMethod]
        public void ConvertsFrozenUtcTimeIntoLocalTime()
        {
            DateTime frozenTime = DateTime.SpecifyKind(DateTime.Now.AddDays(-1), DateTimeKind.Utc);
            Clock.FreezeUtc(frozenTime);

            try
            {
                DateTime result = Clock.Now;

                Assert.NotEqual(frozenTime, result);
                Assert.Equal(frozenTime.ToLocalTime(), result);
            }
            finally
            {
                Clock.Thaw();
            }
        }

        [Fact, PexMethod]
        public void ReturnsToCurrentTimeAfterThaw()
        {
            DateTime frozenTime = DateTime.SpecifyKind(DateTime.Now.AddDays(-1), DateTimeKind.Local);
            Clock.FreezeLocal(frozenTime);
            Clock.Thaw();

            DateTime clockNow = Clock.Now;

            Assert.NotEqual(frozenTime, clockNow);
        }

        [Fact, PexMethod]
        public void UsesCurrentTimeByDefault()
        {
            DateTime now = DateTime.Now;

            DateTime result = Clock.Now;

            Assert.True((result - now).Milliseconds < 1000);
        }

        [Fact, PexMethod]
        public void UsesFrozenLocalTime()
        {
            DateTime frozenTime = DateTime.SpecifyKind(DateTime.Now.AddDays(-1), DateTimeKind.Local);
            Clock.FreezeLocal(frozenTime);

            try
            {
                DateTime result = Clock.Now;

                Assert.Equal(frozenTime, result);
            }
            finally
            {
                Clock.Thaw();
            }
        }
    }

    public class Thaw
    {
        [Fact, PexMethod]
        public void ThawWithoutFreezeThrows()
        {
            Assert.Throws<InvalidOperationException>(() => Clock.Thaw());
        }
    }

    public class UtcNow
    {
        [Fact, PexMethod]
        public void ConvertsFrozenLocalTimeIntoUtcTime()
        {
            DateTime frozenTime = DateTime.SpecifyKind(DateTime.Now.AddDays(-1), DateTimeKind.Local);
            Clock.FreezeLocal(frozenTime);

            try
            {
                DateTime result = Clock.UtcNow;

                Assert.NotEqual(frozenTime, result);
                Assert.Equal(frozenTime.ToUniversalTime(), result);
            }
            finally
            {
                Clock.Thaw();
            }
        }

        [Fact, PexMethod]
        public void ReturnsToCurrentTimeAfterThaw()
        {
            DateTime frozenTime = DateTime.SpecifyKind(DateTime.Now.AddDays(-1), DateTimeKind.Utc);
            Clock.FreezeUtc(frozenTime);
            Clock.Thaw();

            DateTime clockNow = Clock.UtcNow;

            Assert.NotEqual(frozenTime, clockNow);
        }

        [Fact, PexMethod]
        public void UsesCurrentTimeByDefault()
        {
            DateTime now = DateTime.UtcNow;

            DateTime result = Clock.UtcNow;

            Assert.True((result - now).Milliseconds < 1000);
        }

        [Fact, PexMethod]
        public void UsesFrozenUtcTime()
        {
            DateTime frozenTime = DateTime.SpecifyKind(DateTime.Now.AddDays(-1), DateTimeKind.Utc);
            Clock.FreezeUtc(frozenTime);

            try
            {
                DateTime result = Clock.UtcNow;

                Assert.Equal(frozenTime, result);
            }
            finally
            {
                Clock.Thaw();
            }
        }
    }
}