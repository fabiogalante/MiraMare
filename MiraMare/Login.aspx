<%@ Page Language="C#" MasterPageFile="~/1Coluna.master" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">

<table align="center">
                        <tr >
                            <td style="width: 500px" valign="top">
                                    &nbsp;<asp:Login ID="logHotel" runat="server" DestinationPageUrl="~/Administracao/Default.aspx"
                                    DisplayRememberMe="False" FailureText="Usu�rio ou senha inv�lida" LoginButtonText="Acessar"
                                    PasswordLabelText="Senha:" TitleText="Acesso � �rea restrita" UserNameLabelText="Usu�rio:">
                                </asp:Login>
                            
                            
                            
                            </td>
                                 

    
  
                            </tr>
                            
                            </table>




 



</asp:Content>

