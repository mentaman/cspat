using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Pex.Framework;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Sample
{
    [TestClass]
    [PexClass(typeof (UIntStack))]
    public partial class UIntStackPexBasicTestPUT
    {
        //This PUT test class is a holder for parameterized unit tests generalized from conventional unit tests
        //This PUT test class includes parameterized unit tests generalized from UIntStackPexBasicTest, including
        //conventional test cases that are created from JUnit test cases found at:
        /*
         * 
            http://rockfish-cs.cs.unc.edu/testing/
            http://rockfish-cs.cs.unc.edu/jax/lindsey/
            http://rockfish-cs.cs.unc.edu/JAX/
            http://rockfish-cs.cs.unc.edu/JUnitExamples/

            Here are their related papers:
            http://rockfish.cs.unc.edu/pubs/TR02-012.pdf
            http://rockfish.cs.unc.edu/misc/ajax-SEL02abst.pdf
            http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.47.1219
         */

        //Naming convention: for a conventional test case testXXX, the PUT generalized from it is testXXXPUT being prefixed by meaningful 
        //words to indicate the purpose of the PUT, such as TestFullPUTCheckFullAfterPop
        //When filling here a PUT, please copy its corresponding conventional unit test above the PUT and comment
        //out the conventional unit test with /* */. When multiple PUTs are created from the same conventional unit test,
        //you need to copy only the conventional unit test once above the first PUT. Below is one example: generalizing 
        //TestFullPUT1, TestFullPUT2, and TestFullPUT3 from TestFull.

        /*
         *
         *public void TestFull()
        // Tests the fulling of the stack. 
        {
            UIntStack numbers = new UIntStack();
            int k = 3;
            int j = 2;
            numbers.Push(k);
            PexAssert.IsTrue(!numbers.IsFull());
            numbers.Push(j);
            PexAssert.IsTrue(numbers.IsFull());
            numbers.Pop();
            PexAssert.IsTrue(!numbers.IsFull());
        }
         */

        [PexMethod]
        public void TestFullPUTCheckFullAfterPushOnNotNearFull([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() < (numbers.MaxSize() - 1));
            numbers.Push(i);
            PexAssert.IsTrue(!numbers.IsFull());
        }

        [PexMethod]
        public void TestFullPUTCheckFullAfterPushOnNearFull([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() == (numbers.MaxSize() - 1));
            PexAssume.IsTrue(!numbers.IsMember(i));
            numbers.Push(i);
            PexAssert.IsTrue(numbers.IsFull());
        }

        [PexMethod]
        public void TestFullPUTCheckFullAfterPop([PexAssumeUnderTest] UIntStack numbers)
        {
            numbers.Pop();
            PexAssert.IsTrue(!numbers.IsFull());
        }


        /*
        [TestMethod]
        public void TestEmpty()
        // Tests the emptying of the stack.
        {
            UIntStack numbers = new UIntStack();
            int k = 3;
            numbers.Push(k);
            PexAssert.IsTrue(!numbers.IsEmpty());
            numbers.Pop();
            PexAssert.IsTrue(numbers.IsEmpty());
        }*/

        [PexMethod]
        public void TestEmptyPUTCheckEmptyAfterPush([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            numbers.Push(i);
            PexAssert.IsTrue(!numbers.IsEmpty());
        }

        [PexMethod]
        public void TestEmptyPUTCheckEmptyAfterPopOnNotNearEmpty([PexAssumeUnderTest] UIntStack numbers)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() > 1);
            numbers.Pop();
            PexAssert.IsTrue(!numbers.IsEmpty());
        }

        [PexMethod]
        public void TestEmptyPUTCheckEmptyAfterPopOnNearEmpty([PexAssumeUnderTest] UIntStack numbers)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() == 1);
            numbers.Pop();
            PexAssert.IsTrue(numbers.IsEmpty());
        }

        /*
        [TestMethod]
        public void TestMax()
        // Tests whether is a stack is full after a push of the stack. 
        {
            UIntStack numbers = new UIntStack();
            int k = 3;
            //max size is 2
            PexAssert.IsTrue(numbers.MaxSize() == 2);
            numbers.Push(k);
            PexAssert.IsTrue(numbers.MaxSize() == 2);
        }*/


        [PexMethod]
        public void TestMaxPUTCheckMaxAfterPush([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            var maxSize = numbers.MaxSize();
            numbers.Push(i);
            PexAssert.AreEqual(maxSize, numbers.MaxSize());
        }


        /*
        [TestMethod]
        public void TestMember()
        // Tests the emptying of the stack.  
        {
            UIntStack numbers = new UIntStack();
            int k = 3;
            int j = 2;
            numbers.Push(k);
            PexAssert.IsTrue(numbers.IsMember(3));
            numbers.Push(j);
            PexAssert.IsTrue(numbers.IsMember(2));
            numbers.Pop();
            PexAssert.IsTrue(!numbers.IsMember(2));
        }*/

        [PexMethod]
        public void TestMemberPUTCheckMemberAfterPush([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() < numbers.MaxSize());
            numbers.Push(i);
            PexAssert.IsTrue(numbers.IsMember(i));
        }

        [PexMethod]
        public void TestMemberPUTCheckMemberAfterPop([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() < numbers.MaxSize());
            numbers.Push(i);
            numbers.Pop();
            PexAssert.IsTrue(!numbers.IsMember(i));
        }

        /*
        [TestMethod]
        public void TestGetNumberOfElements()
        // Tests the num elem of a stack. 
        {
            UIntStack numbers = new UIntStack();
            int k = 3;
            int j = 2;
            int n = 1;
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 0);
            numbers.Push(k);
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 1);
            numbers.Push(k);
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 1);
            numbers.Push(j);
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 2);
            numbers.Push(n);
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 2);
        }*/

        [PexMethod]
        public void TestGetNumberOfElementsPUTCheckNumberAfterPushOnNotNearFull([PexAssumeUnderTest] UIntStack numbers,
                                                                                int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() == 0);
            int size = numbers.GetNumberOfElements();
            numbers.Push(i);
            PexAssert.AreEqual(size + 1, numbers.GetNumberOfElements());
        }

        [PexMethod]
        public void TestGetNumberOfElementsPUTCheckNumberAfterPushDuplicatedInt([PexAssumeUnderTest] UIntStack numbers,
                                                                                int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() < numbers.MaxSize());
            PexAssume.IsTrue(!numbers.IsMember(i));
            numbers.Push(i);
            int size = numbers.GetNumberOfElements();

            numbers.Push(i);
            PexAssert.AreEqual(size, numbers.GetNumberOfElements());
        }

        [PexMethod]
        public void TestGetNumberOfElementsPUTCheckNumberAfterPushOnNearFull([PexAssumeUnderTest] UIntStack numbers,
                                                                             int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() == numbers.MaxSize());
            int size = numbers.GetNumberOfElements();
            numbers.Push(i);
            PexAssert.AreEqual(size, numbers.GetNumberOfElements());
        }


        /*
        [TestMethod]
        public void TestTop()
        // Tests the peeking at the top of the stack. 
        {
            UIntStack numbers = new UIntStack();
            int k = 3;
            int j = 2;
            int n = 1;
            numbers.Push(k);
            PexAssert.IsTrue(numbers.Top() == k);
            numbers.Push(j);
            PexAssert.IsTrue(numbers.Top() == j);
            //max stack == 2
            numbers.Push(n);
            PexAssert.IsTrue(numbers.Top() == j);

        }*/

        [PexMethod]
        public void TestTopPUTCheckTopAfterPushOnNotNearFull([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() < numbers.MaxSize());
            PexAssume.IsTrue(!numbers.IsMember(i));
            numbers.Push(i);
            PexAssert.AreEqual(i, numbers.Top());
        }

        [PexMethod]
        public void TestTopPUTCheckTopAfterPushOnFull([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() == numbers.MaxSize());
            PexAssume.IsTrue(!numbers.IsMember(i));
            int top = numbers.Top();
            numbers.Push(i);
            PexAssert.AreEqual(top, numbers.Top());
        }

        [PexMethod]
        public void TestTopPUTCheckTopOnEmpty([PexAssumeUnderTest] UIntStack numbers)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() == 0);
            int top = numbers.Top();
            PexAssert.AreEqual(-1, top);
        }

        /*
        [TestMethod]
        public void TestPop()
        // Tests the popping of the stack.  
        {
            UIntStack numbers = new UIntStack();
            int k = 3;
            numbers.Push(k);
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 1);
            PexAssert.IsTrue(numbers.IsMember(k));
            numbers.Pop();
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 0);
            PexAssert.IsTrue(!numbers.IsMember(k));
        }
        */

        [PexMethod]
        public void TestPopPUTCheckNumberAndMemberAfterPop([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() < numbers.MaxSize());
            PexAssume.IsTrue(!numbers.IsMember(i));
            var orginalSize = numbers.GetNumberOfElements();
            numbers.Push(i);
            PexAssert.AreEqual(orginalSize + 1, numbers.GetNumberOfElements());
            numbers.Pop();
            PexAssert.AreEqual(orginalSize, numbers.GetNumberOfElements());
        }

        [PexMethod]
        public void TestPopPUTCheckNumberAfterPopOnEmpty([PexAssumeUnderTest] UIntStack numbers)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() == 0);
            numbers.Pop();
            PexAssert.AreEqual(0, numbers.GetNumberOfElements());
        }

        /*
        [TestMethod]
        public void TestPush()
        // Tests the pushing of the stack. 
        {
            UIntStack numbers = new UIntStack();
            int k = 3;
            int j = 2;
            numbers.Push(k);
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 1);
            PexAssert.IsTrue(numbers.IsMember(k));
            numbers.Push(k);
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 1);
            PexAssert.IsTrue(numbers.IsMember(k));
            numbers.Push(j);
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 2);
            PexAssert.IsTrue(numbers.IsMember(j));
            PexAssert.IsTrue(numbers.IsMember(k));
            PexAssert.IsTrue(numbers.Top() == j);
            numbers.Push(k);
            PexAssert.IsTrue(numbers.GetNumberOfElements() == 2);
            PexAssert.IsTrue(numbers.IsMember(j));
            PexAssert.IsTrue(numbers.IsMember(k));
            PexAssert.IsTrue(numbers.Top() == k);
        }*/

        [PexMethod]
        public void TestPushPUTCheckNumberAndTopAfterPushOnNotNearFull([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() < numbers.MaxSize());
            PexAssume.IsTrue(!numbers.IsMember(i));
            int size = numbers.GetNumberOfElements();
            numbers.Push(i);
            PexAssert.AreEqual(size + 1, numbers.GetNumberOfElements());
            PexAssert.AreEqual(i, numbers.Top());
        }

        [PexMethod]
        public void TestPushPUTCheckNumberAfterPushDuplicateNumber([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() < numbers.MaxSize());
            PexAssume.IsTrue(numbers.IsMember(i));
            int size = numbers.GetNumberOfElements();
            numbers.Push(i);
            PexAssert.AreEqual(size, numbers.GetNumberOfElements());
        }

        [PexMethod]
        public void TestPushPUTCheckNumberAndTopAfterPushOnFull([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.GetNumberOfElements() == numbers.MaxSize());
            PexAssume.IsTrue(!numbers.IsMember(i));
            int size = numbers.GetNumberOfElements();
            int top = numbers.Top();
            numbers.Push(i);
            PexAssert.AreEqual(size, numbers.GetNumberOfElements());
            PexAssert.AreEqual(top, numbers.Top());
            PexAssert.IsTrue(!numbers.IsMember(i));
        }

        [PexMethod]
        public void TestPushPUTCheckNumberAndTopAfterPushDuplicateFirstIntOnFull([PexAssumeUnderTest] UIntStack numbers, int i)
        {
            PexAssume.IsTrue(numbers.IsMember(i));
            PexAssume.AreNotEqual(numbers.Top(),i);
            int size = numbers.GetNumberOfElements();
            numbers.Push(i);
            PexAssert.AreEqual(size, numbers.GetNumberOfElements());
            PexAssert.IsTrue(numbers.IsMember(i));
            PexAssert.AreEqual(i,numbers.Top());
        }
    }
}