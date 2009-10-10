using System;
using System.Xml;

namespace Xunit.Sdk
{
    /// <summary>
    /// Represents an xUnit.net test command.
    /// </summary>
    public class TestCommand : ITestCommand
    {
        /// <summary>
        /// The method under test.
        /// </summary>
        protected IMethodInfo testMethod;

        /// <summary>
        /// Initializes a new instance of the <see cref="TestCommand"/> class.
        /// </summary>
        /// <param name="method">The method under test.</param>
        public TestCommand(IMethodInfo method) : this(method, null) { }

        /// <summary>
        /// Initializes a new instance of the <see cref="TestCommand"/> class.
        /// </summary>
        /// <param name="method">The method under test.</param>
        /// <param name="displayName">The display name of the test.</param>
        public TestCommand(IMethodInfo method, string displayName)
        {
            testMethod = method;
            MethodName = method.Name;
            TypeName = method.TypeName;
            DisplayName = displayName ?? TypeName + "." + MethodName;
        }

        /// <inheritdoc/>
        public string DisplayName { get; protected set; }

        /// <summary>
        /// Gets the name of the method under test.
        /// </summary>
        public string MethodName { get; protected set; }

        /// <summary>
        /// Gets the name of the type under test.
        /// </summary>
        public string TypeName { get; protected set; }

        /// <inheritdoc/>
        public virtual bool ShouldCreateInstance
        {
            get { return !testMethod.IsStatic; }
        }

        /// <inheritdoc/>
        public virtual MethodResult Execute(object testClass)
        {
            try
            {
                testMethod.Invoke(testClass, null);
            }
            catch (ParamterCountMismatchException)
            {
                throw new InvalidOperationException("Fact method " + TypeName + "." + MethodName + " cannot have parameters");
            }

            return new PassedResult(testMethod, DisplayName);
        }

        /// <inheritdoc/>
        public virtual XmlNode ToStartXml()
        {
            XmlDocument doc = new XmlDocument();
            doc.LoadXml("<dummy/>");
            XmlNode testNode = XmlUtility.AddElement(doc.ChildNodes[0], "start");

            XmlUtility.AddAttribute(testNode, "name", DisplayName);
            XmlUtility.AddAttribute(testNode, "type", TypeName);
            XmlUtility.AddAttribute(testNode, "method", MethodName);

            return testNode;
        }
    }
}