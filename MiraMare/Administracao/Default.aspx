<%@ Page Language="C#" MasterPageFile="~/1Coluna.master" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">

<table align="center">
                        <tr >
                            <td valign="top">
                            
                            <h3>Área restrita</h3>
                            Seja bem-vinda
                            <asp:LoginName ID="LoginName1" runat="server" />
                            . Utilize os links abaixo para atualizar as tabelas de preço.<br />
                            <br />
    
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administracao/Precos.aspx">  - Tabela de preços</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Administracao/Pacotes.aspx">  - Tabela de pacotes</asp:HyperLink>
        <br />
        <br />
        <br />
                            
                            
                            
                            
                            </td>
                                 

    
  
                            </tr>
                            
                            </table>



</asp:Content>

