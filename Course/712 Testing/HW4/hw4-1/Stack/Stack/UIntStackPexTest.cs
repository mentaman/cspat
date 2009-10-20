using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Pex.Framework;
using Microsoft.VisualStudio.TestTools.UnitTesting; 

namespace Sample
{
    [TestClass]
    [PexClass(typeof(UIntStack))]
    public partial class UIntStackPexTest
    {
        //the following PUT uses only the element to be pushed as a parameter
        //the limitation is that only an empty stack is exercised
        [PexMethod]
        public void TestPushTop(int i)
        {
            UIntStack s = new UIntStack();
            s.Push(i);
            PexAssert.IsTrue(s.Top() != -1); 
        }

        //the following PUT uses both the stack object and the element to be pushed as parameters 
        [PexMethod]
        public void TestPushTopWithStackParam([PexAssumeUnderTest]UIntStack s, int i)
        {
            s.Push(i);
            PexAssert.IsTrue(s.Top() != -1); 
        }

        //the following PUT uses both the stack object and the element to be pushed as parameters 
        [PexMethod]
        public void TestIsEmptyTop([PexAssumeUnderTest]UIntStack s, int i)
        {
            PexAssume.IsFalse(s.IsEmpty());
            PexAssert.IsTrue(s.Top() != -1);
        }

    }
}
