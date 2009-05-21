using Microsoft.Cci;

namespace CFGBuilder
{
    public class CFGBuilderBase : BaseCodeTraverser
    {
        public override void Visit(INamespaceDefinition namespaceDefinition)
        {
            namespaceDefinition.Dispatch(this);
        }

        public override void Visit(INestedUnitNamespace nestedUnitNamespace)
        {
            this.Visit(nestedUnitNamespace.Members);
        }

        public override void Visit(INestedUnitSetNamespace nestedUnitSetNamespace)
        {
            this.Visit(nestedUnitSetNamespace.Members);
        }

        public override void Visit(IRootUnitNamespace rootUnitNamespace)
        {
            this.Visit(rootUnitNamespace.Members);
        }

        public override void Visit(IRootUnitSetNamespace rootUnitSetNamespace)
        {
            this.Visit(rootUnitSetNamespace.Members);
        }

        public override void Visit(ITypeDefinition typeDefinition)
        {
            typeDefinition.Dispatch(this);
        }

        public override void Visit(INamespaceTypeDefinition namespaceTypeDefinition)
        {
            var definition = namespaceTypeDefinition as ITypeDefinition;
            Visit(definition.Methods);
        }

        public override void Visit(INamespaceMember namespaceMember)
        {
            if (this.stopTraversal) return;
            INamespaceDefinition/*?*/ nestedNamespace = namespaceMember as INamespaceDefinition;
            if (nestedNamespace != null)
                this.Visit(nestedNamespace);
            else
            {
                ITypeDefinition/*?*/ namespaceType = namespaceMember as ITypeDefinition;
                if (namespaceType != null)
                    this.Visit(namespaceType);
                else
                {
                    ITypeDefinitionMember/*?*/ globalFieldOrMethod = namespaceMember as ITypeDefinitionMember;
                    if (globalFieldOrMethod != null)
                    {
                    }
                    else
                    {
                        INamespaceAliasForType/*?*/ namespaceAlias = namespaceMember as INamespaceAliasForType;
                        if (namespaceAlias != null)
                            this.Visit(namespaceAlias);
                        else
                        {
                            //TODO: error
                            namespaceMember.Dispatch(this);
                        }
                    }
                }
            }
        }

        public override void Visit(IMethodDefinition method)
        {
            Visit(method.Body);
        }
    }
}