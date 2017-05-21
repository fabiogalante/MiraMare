<%@ Page Language="C#" MasterPageFile="~/1Coluna.master" AutoEventWireup="true" CodeFile="Reservas.aspx.cs" Inherits="Reservas" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">


  <table align="center" >
                        <tr >
                            <td valign="top">
                            
                           <br />



 <p>
                                            <a href="Contato.aspx">Caso tenha dúvidas, sugestões ou críticas entre em contato
                                            conosco. Utilize este espaço somente para fazer reservas.</a>
                                            
                                            </p>

 
        <h3>
            RESERVAS</h3>
      


<asp:Label ID="lblTexto1" runat="server" Text="Garanta sua reserva enviando pelo fax comprovante do depósito bancário na conta corrente do hotel. Para isso entraremos em contato com você assim que recebermos sua mensagem. "/>

<br />
<br />
           
                <asp:Label ID="Label17" runat="server" Text="Este espaço serve para você entrar em contato com o Hotel Mira-Maré via Internet.
Faça aqui seu pedido de reserva ou envie suas sugestões, dúvidas ou qualquer observação que tenha sobre nossos serviços ou sobre este site."/>

<br />
<br />
            
            <asp:Label ID="Label18" runat="server" Text="O Hotel Mira-Maré agradece a sua colaboração!"/>
            
           
    
<br />
<br />
    
   
    
    <div  style="padding-left:1px">
       


    <fieldset>
    
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    
    
  
    
    
    <table>
        <tr>
            <td style="width: 209px">
    <asp:Label ID="Label3" runat="server" Text="Nome do Hóspede" SkinID="l"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtHospede" runat="server" SkinID="forms" onchange="javascript:this.value=this.value.toUpperCase()" ValidationGroup="reserva"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="reqNome" runat="server" ControlToValidate="txtHospede"
                    ErrorMessage="Informe o nome do hóspede" SetFocusOnError="True" ValidationGroup="reserva">***</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 209px">
    
    <asp:Label ID="Label4" SkinID="l" runat="server" Text="Nome do solicitante da reserva:"></asp:Label></td>
            <td style="width: 100px">
    <asp:TextBox ID="txtSolicitante" runat="server" SkinID="forms" onchange="javascript:this.value=this.value.toUpperCase()" ValidationGroup="reserva"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label SkinID="l" ID="lblCEP" runat="server" ForeColor="#FF0000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label1" runat="server" Text="CEP:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtCEP" runat="server" AutoPostBack="True" OnTextChanged="txtCEP_TextChanged" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCEP"
                    ErrorMessage="Digite seu CEP" SetFocusOnError="True" ValidationGroup="reserva">***</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label5" runat="server" Text="Endereço:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtEndereco" runat="server" Width="286px" onchange="javascript:this.value=this.value.toUpperCase()" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label19" runat="server" Text="Número:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtNumero" runat="server" Width="59px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label20" runat="server" Text="Complemento:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtComplemento" runat="server" onchange="javascript:this.value=this.value.toUpperCase()"
                    ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label6" runat="server" Text="Bairro:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtBairro" runat="server" onchange="javascript:this.value=this.value.toUpperCase()" ValidationGroup="reserva" Width="257px" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label  SkinID="l" ID="Label7" runat="server" Text="Cidade:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtCidade" runat="server" onchange="javascript:this.value=this.value.toUpperCase()" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label2" runat="server" Text="Estado:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtEstado" runat="server" onchange="javascript:this.value=this.value.toUpperCase()" ValidationGroup="reserva"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label8" runat="server" Text="E-mail:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Informe seu e-mail" SetFocusOnError="True" ValidationGroup="reserva">***</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rexMail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="E-mail inválido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ValidationGroup="reserva">***</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label9" runat="server" Text="Telefone::"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtFone" runat="server" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label10" runat="server" Text="Fax:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtFax" runat="server" onchange="javascript:this.value=this.value.toUpperCase()" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label11" runat="server" Text="Data de entrada:"></asp:Label></td>
            <td style="width: 100px">
            
            
             <asp:TextBox ID="txtDtEntrada" runat="server" onkeypress="Mascaras('DATA','ctl00$phMain$txtDtEntrada');"
                                ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
                
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDtEntrada" ErrorMessage="Data inválida"
                                Operator="DataTypeCheck" SetFocusOnError="True" Type="Date" ValidationGroup="reserva">***</asp:CompareValidator>
                
                
                
                </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label12" runat="server" Text="Horário previsto:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtHorario" runat="server" onkeypress="Mascaras('HORA','ctl00$phMain$txtHorario');" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label13" runat="server" Text="Quantos apartamentos?"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtApto" runat="server" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label14" runat="server" Text="Data de saída:"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtDtSaida" runat="server" onkeypress="Mascaras('DATA','ctl00$phMain$txtDtSaida');" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
                
                <asp:CompareValidator ID="cData" runat="server" ControlToValidate="txtDtSaida" ErrorMessage="Data inválida"
                                Operator="DataTypeCheck" SetFocusOnError="True" Type="Date" ValidationGroup="reserva">***</asp:CompareValidator>
                <asp:CompareValidator ID="compData" runat="server" ControlToCompare="txtDtEntrada"
                    ControlToValidate="txtDtSaida" ErrorMessage="Data de saída menor que data de entrada"
                    Operator="GreaterThan" Type="Date" ValidationGroup="reserva">***</asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label15" runat="server" Text="Tipo de diária:"></asp:Label></td>
            <td style="width: 180px">
                <asp:DropDownList ID="drpDiaria" runat="server" ValidationGroup="reserva" Width="213px">
                    <asp:ListItem Value="N&#227;o selecionou a di&#225;ria">Selecione</asp:ListItem>
                    <asp:ListItem>Di&#225;ria 1 pessoa</asp:ListItem>
                    <asp:ListItem>Di&#225;ria 1 casal</asp:ListItem>
                    <asp:ListItem>Di&#225;ria 3 pessoas</asp:ListItem>
                    <asp:ListItem>Di&#225;ria 4 pessoas</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
                </td>
        </tr>
        <tr>
            <td style="width: 209px">
            </td>
            <td style="width: 180px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label SkinID="l" ID="Label16" runat="server" Text="Comentário"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtComentario" runat="server" TextMode="MultiLine" Height="76px" Width="241px" ValidationGroup="reserva" SkinID="forms"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 209px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" ValidationGroup="reserva" OnClick="btnEnviar_Click" /></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="text-align: left">
                <asp:Label ID="lblMensagem" runat="server" Font-Bold="True" ForeColor="#FF0000"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 21px">
                </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="resumo" runat="server" ShowMessageBox="True" ShowSummary="False"
                    ValidationGroup="reserva" />
            </td>
        </tr>
    </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    
  


</fieldset>









       </div>






<div>
                                       
                                       
                                    </div>


                            
                            </td>
                           
                        </tr>
                    </table>


</asp:Content>

