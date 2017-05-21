<%@ Page Language="C#" MasterPageFile="~/1Coluna.master" AutoEventWireup="true" CodeFile="Contato.aspx.cs" Inherits="Contato" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">

 <table align="center">
                        <tr >
                            <td style="width: 500px" valign="top">
                            
                          
        <h3>
            Contato</h3>
       
    
   
   
                Entre em contato pelo e-mail <a href="mailto:miramare@hotelmiramare.com.br">miramare@hotelmiramare.com.br</a> ou preencha o formulário
                abaixo:
            <p>
                Nome:<br />
                <asp:TextBox ID="txtNome" runat="server" SkinID="forms"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome"
                    ErrorMessage="Informe seu nome"></asp:RequiredFieldValidator></p>
            <p>
                E-mail:<br />
                <asp:TextBox ID="txtEmail" runat="server" SkinID="forms"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Informe seu e-mail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="E-mail inválido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></p>
            <p>
                Telefone ou celular:<br />
                <asp:TextBox ID="txtFone" runat="server" SkinID="forms"></asp:TextBox>
                </p>
            <p>
                Mensagem:<br />
                <asp:TextBox ID="txtMensagem" runat="server" Height="116px" TextMode="MultiLine" Width="340px" SkinID="forms"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMensagem"
                    ErrorMessage="Digite sua mensagem"></asp:RequiredFieldValidator></p>
            <p>
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />&nbsp;</p>
            <p>
                <strong><span style="font-size: 1.5em; font-family: tahoma, arial, helvetica, sans-serif">
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label><br />
                </span></strong>
                
                
              
                
    
   
                            
                            </td>
                           
                        </tr>
                    </table>

 

</asp:Content>

