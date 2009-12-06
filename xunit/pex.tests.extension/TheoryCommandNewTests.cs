//using System;
//using System.Globalization;
//using Microsoft.Pex.Framework;
//using Xunit.Extensions;
//using Xunit.Sdk;
//using Microsoft.Pex.Framework.Validation;
//using System.Reflection;
//
//namespace pex.tests.extension
//{
//    [PexClass(typeof(TheoryCommand))]
//    public partial class TheoryCommandNewTests
//    {
//        [PexMethod]
//        public void TestConstructor(IMethodInfo testMethod, string displayName, object[] parameters)
//        {
//            PexAssume.IsNull(displayName);
//            PexAssume.IsNotNull(testMethod);
//            PexAssume.IsNotNull(parameters);
//            PexAssume.IsTrue(parameters.Length > 0);
//            var command = new TheoryCommand(testMethod, displayName, parameters);
//            var parameterValues = "";
//            foreach (var parameter in parameters)
//            {
//                object parameterValue = null;
//                if (parameter is string)
//                {
//                    PexAssume.IsTrue((parameter as string).Length <= 50);
//                    parameterValue = "\"" + parameter + "\"";
//                }
//                else
//                {
//                    parameterValue = parameter;
//                }
//                parameterValues += Convert.ToString(parameterValue, CultureInfo.InvariantCulture) + ", ";
//                PexAssume.IsNotNull(parameter);
//            }
//            parameterValues = parameterValues.Remove(parameterValues.Length - 2);
//            var expected = command.TypeName + "." + command.MethodName + "(" +
//                           parameterValues + ")";
//            PexAssert.AreEqual(expected, command.DisplayName);
//           
//        }
//
//        [PexMethod]
//        public void TestExecutePUTDisplayNameUseTypeNameAndMethodNameOfLengthGreaterThanFifty(IMethodInfo testMethod, string displayName, object[] parameters)
//        {
//            PexAssume.IsNotNull(testMethod);
//            PexAssume.IsNotNull(parameters);
//            PexAssume.IsNull(displayName);
//            PexAssume.IsTrue(parameters.Length > 0);
//            var command = new TheoryCommand(testMethod, displayName, parameters);
//            var parameterValues = "";
//            foreach (var parameter in command.Parameters)
//            {
//                PexAssume.IsTrue(parameter is string);
//                var s = (parameter as string);
//                PexAssume.IsTrue(s.Length > 50);
//                var parameterValue = "\"" + s.Substring(0, 50) + "\"...";
//                parameterValues += Convert.ToString(parameterValue, CultureInfo.InvariantCulture) + ", ";
//                PexAssume.IsNotNull(parameter);
//            }
//            parameterValues = parameterValues.Remove(parameterValues.Length - 2);
//            var expected = command.TypeName + "." + command.MethodName + "(" +
//                           parameterValues + ")";
//            PexAssert.AreEqual(expected, command.DisplayName);
//        }
//
//        [PexMethod]
//        public void TestExecutePUTDisplayNameUseTypeNameAndMethodNameOfLengthLessThanFifty(IMethodInfo testMethod, string displayName, object[] parameters)
//        {
//            PexAssume.IsNotNull(testMethod);
//            PexAssume.IsNotNull(parameters);
//            PexAssume.IsNull(displayName);
//            PexAssume.IsTrue(parameters.Length > 0);
//            var command = new TheoryCommand(testMethod, displayName, parameters);
//            var parameterValues = "";
//            foreach (var parameter in command.Parameters)
//            {
//                PexAssume.IsTrue(parameter is string);
//                var s = (parameter as string);
//                PexAssume.IsTrue(s.Length <= 50);
//                var parameterValue = "\"" + s + "\"";
//                parameterValues += Convert.ToString(parameterValue, CultureInfo.InvariantCulture) + ", ";
//                PexAssume.IsNotNull(parameter);
//            }
//            parameterValues = parameterValues.Remove(parameterValues.Length - 2);
//            var expected = command.TypeName + "." + command.MethodName + "(" +
//                           parameterValues + ")";
//            PexAssert.AreEqual(expected, command.DisplayName);
//        }
//
//        // 2.2 2.10
//        [PexMethod]
//        public void TestExecutePUTUsesNotNullDisplayName(IMethodInfo testMethod, string displayName, object[] parameters)
//        {
//            PexAssume.IsNotNull(testMethod);
//            PexAssume.IsNotNull(parameters);
//            PexAssume.IsNotNull(displayName);
//            PexAssume.IsTrue(parameters.Length > 0);
//            var command = new TheoryCommand(testMethod, displayName, parameters);
//            var parameterValues = "";
//            foreach (var parameter in parameters)
//            {
//                object parameterValue = null;
//                if (parameter is string)
//                {
//                    PexAssume.IsTrue((parameter as string).Length <= 50);
//                    parameterValue = "\"" + parameter + "\"";
//                }
//                else
//                {
//                    parameterValue = parameter;
//                }
//                parameterValues += Convert.ToString(parameterValue, CultureInfo.InvariantCulture) + ", ";
//                PexAssume.IsNotNull(parameter);
//            }
//            parameterValues = parameterValues.Remove(parameterValues.Length - 2);
//            var expected = displayName + "(" + parameterValues + ")";
//            PexAssert.AreEqual(expected, command.DisplayName);
//        }
//
//        [PexMethod]
//        public void TestParameterIsNull(IMethodInfo testMethod, string displayName, object[] parameters)
//        {
//            PexAssume.IsNotNull(testMethod);
//            PexAssume.IsNotNull(parameters);
//            PexAssume.IsNotNull(displayName);
//            PexAssume.IsTrue(parameters.Length > 0);
//            var command = new TheoryCommand(testMethod, displayName, parameters);
//            var parameterValues = "";
//            foreach (var parameter in parameters)
//            {
//               PexAssume.IsNull(parameter);
//               parameterValues += Convert.ToString("null", CultureInfo.InvariantCulture) + ", ";
//            }
//            parameterValues = parameterValues.Remove(parameterValues.Length - 2);
//            var expected = displayName + "(" + parameterValues + ")";
//            PexAssert.AreEqual(expected, command.DisplayName);
//        }
//
//        [PexMethod, PexAllowedException(typeof(InvalidOperationException)), PexAllowedException(typeof(Exception))]
//        public void TestExecute(IMethodInfo testMethod, string displayName, object[] parameters,InstrumentedSpy testClass)
//        {
//            PexAssume.IsNotNull(testMethod);
//            PexAssume.IsNotNull(parameters);
//            PexAssume.IsNotNull(displayName);
//            PexAssume.IsNotNull(testClass);
//            PexAssume.AreEqual(testMethod.TypeName, "pex.tests.extension.InstrumentedSpy");
//            PexAssume.AreEqual(testMethod.Name, "PassedTest");
//            PexAssume.IsTrue(parameters.Length > 0);
//            var command = new TheoryCommand(testMethod, displayName, parameters);
//
//            var result = command.Execute(testClass);
//            PexAssert.IsInstanceOfType(result, typeof(PassedResult));
//        }
//    }
//}