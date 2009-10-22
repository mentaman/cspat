using System;
using System.Collections;
using System.Collections.Generic;
using Microsoft.Pex.Framework;

namespace pex.tests.xunit
{
    public class MyComparer : IComparer<int>
    {
        public int Compare(int x, int y)
        {
            var call = PexChoose.FromCall(this);
            var compare = call.ChooseResult<int>();
            PexAssume.IsTrue(compare == -1 || compare == 0 || compare == 1);
            return compare;
        }
    }

    public class MyComparer2 : IComparer
    {
        public int Compare(object x, object y)
        {
            var call = PexChoose.FromCall(this);
            var compare = call.ChooseResult<int>();
            PexAssume.IsTrue(compare == -1 || compare == 0 || compare == 1);
            return compare;
        }
    }
}