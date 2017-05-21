<%@ Page Language="C#" MasterPageFile="~/1Coluna.master" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">

<table align="center">
                        <tr >
                            <td style="width: 500px" valign="top">
                                    &nbsp;<asp:Login ID="logHotel" runat="server" DestinationPageUrl="~/Administracao/Default.aspx"
                                    DisplayRememberMe="False" FailureText="Usuário ou senha inválida" LoginButtonText="Acessar"
                                    PasswordLabelText="Senha:" TitleText="Acesso à área restrita" UserNameLabelText="Usuário:">
                                </asp:Login>
                            
                            
                            
                            </td>
                                 

    
  
                            </tr>
                            
                            </table>




 



</asp:Content>

