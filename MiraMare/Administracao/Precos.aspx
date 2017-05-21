<%@ Page Language="C#" MasterPageFile="~/1Coluna.master" AutoEventWireup="true" CodeFile="Precos.aspx.cs" Inherits="Administracao_Precos" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">

<table align="center">
                        <tr >
                            <td  valign="top">
               
               <br />
                                   
                                   
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administracao/Default.aspx">Voltar</asp:HyperLink><br />                         

<h3>Cadastro de preços</h3>   
   
    
  
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#FF0000" Text="Preços atualizados com sucesso!!"
        Visible="False"></asp:Label><br />
    <br />
  
    
    
    <asp:FormView ID="frmPrecos" runat="server" DataKeyNames="ID" DataSourceID="dsPrecos"
        DefaultMode="Edit" OnItemUpdated="frmPrecos_ItemUpdated">
    
        <EditItemTemplate>
            <table border="0" cellpadding="0" cellspacing="2" class="comBordaSimples" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; width: 100%; padding-top: 5px">
                        <tr>
                            <td rowspan="2" style="width: 15%">
                                Tipo e ocupação do apartamento</td>
                            <td colspan="3">
                                de domingo à 5ª feira</td>
                            <td colspan="3">
                                6ª feira e sábado</td>
                        </tr>
                        <tr>
                            <td style="width: 12%">
                                Luxo no piso térreo</td>
                            <td style="width: 12%">
                                Luxo no piso superior</td>
                            <td style="width: 12%">
                                Luxo no piso superior, com varanda</td>
                            <td style="width: 12%">
                                Luxo no piso térreo</td>
                            <td style="width: 12%">
                                Luxo no piso superior</td>
                            <td style="width: 12%">
                                Luxo no piso superior, com varanda</td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                1 hóspede</td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("LUXO1HOSPEDE", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("LUXO1SUPERIOR", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("LUXOVARANDA1SUPERIOR", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("LUXO1HOSPEDE_FDS", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("LUXO1SUPERIOR_FDS", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox21" runat="server" Text='<%# Bind("LUXOVARANDA1SUPERIOR_FDS", "{0:f}") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                2 hóspedes</td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LUXO2HOSPEDES", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("LUXO2SUPERIOR", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("LUXOVARANDA2SUPERIOR", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("LUXO2HOSPEDE_FDS", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("LUXO2SUPERIOR_FDS", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("LUXOVARANDA2SUPERIOR_FDS", "{0:f}") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                3 hóspedes</td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LUXO3HOSPEDES", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("LUXO3SUPERIOR", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("LUXOVARANDA3SUPERIOR", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("LUXO3HOSPEDE_FDS", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("LUXO3SUPERIOR_FDS", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox23" runat="server" Text='<%# Bind("LUXOVARANDA3SUPERIOR_FDS", "{0:f}") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                4 hóspedes</td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("LUXO4HOSPEDES", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("LUXO4SUPERIOR", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("LUXOVARANDA4SUPERIOR", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("LUXO4HOSPEDE_FDS", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("LUXO4SUPERIOR_FDS", "{0:f}") %>'></asp:TextBox></td>
                            <td style="width: 12%">
                                <asp:TextBox ID="TextBox24" runat="server" Text='<%# Bind("LUXOVARANDA4SUPERIOR_FDS", "{0:f}") %>'></asp:TextBox></td>
                        </tr>
                    </table>
                     <asp:Button ID="btnEditar" runat="server" CommandName="Update" Text="Atualizar" /><br /><br />
        </EditItemTemplate>
    </asp:FormView>
    
    
    <asp:SqlDataSource ID="dsPrecos" runat="server" ConnectionString="<%$ ConnectionStrings:cnnString %>"
            
        UpdateCommand="UPDATE [TB_PRECOS] SET [LUXO1HOSPEDE] = @LUXO1HOSPEDE, [LUXO2HOSPEDES] = @LUXO2HOSPEDES, [LUXO3HOSPEDES] = @LUXO3HOSPEDES, [LUXO4HOSPEDES] = @LUXO4HOSPEDES, [LUXO1SUPERIOR] = @LUXO1SUPERIOR, [LUXO2SUPERIOR] = @LUXO2SUPERIOR, [LUXO3SUPERIOR] = @LUXO3SUPERIOR, [LUXO4SUPERIOR] = @LUXO4SUPERIOR, [LUXOVARANDA1SUPERIOR] = @LUXOVARANDA1SUPERIOR, [LUXOVARANDA2SUPERIOR] = @LUXOVARANDA2SUPERIOR, [LUXOVARANDA3SUPERIOR] = @LUXOVARANDA3SUPERIOR, [LUXOVARANDA4SUPERIOR] = @LUXOVARANDA4SUPERIOR, [LUXO1HOSPEDE_FDS] = @LUXO1HOSPEDE_FDS, [LUXO2HOSPEDE_FDS] = @LUXO2HOSPEDE_FDS, [LUXO3HOSPEDE_FDS] = @LUXO3HOSPEDE_FDS, [LUXO4HOSPEDE_FDS] = @LUXO4HOSPEDE_FDS, [LUXO1SUPERIOR_FDS] = @LUXO1SUPERIOR_FDS, [LUXO2SUPERIOR_FDS] = @LUXO2SUPERIOR_FDS, [LUXO3SUPERIOR_FDS] = @LUXO3SUPERIOR_FDS, [LUXO4SUPERIOR_FDS] = @LUXO4SUPERIOR_FDS, [LUXOVARANDA1SUPERIOR_FDS] = @LUXOVARANDA1SUPERIOR_FDS, [LUXOVARANDA2SUPERIOR_FDS] = @LUXOVARANDA2SUPERIOR_FDS, [LUXOVARANDA3SUPERIOR_FDS] = @LUXOVARANDA3SUPERIOR_FDS, [LUXOVARANDA4SUPERIOR_FDS] = @LUXOVARANDA4SUPERIOR_FDS WHERE [ID] = @ID" DeleteCommand="DELETE FROM [TB_PRECOS] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TB_PRECOS] ([LUXO1HOSPEDE], [LUXO2HOSPEDES], [LUXO3HOSPEDES], [LUXO4HOSPEDES], [LUXO1SUPERIOR], [LUXO2SUPERIOR], [LUXO3SUPERIOR], [LUXO4SUPERIOR], [LUXOVARANDA1SUPERIOR], [LUXOVARANDA2SUPERIOR], [LUXOVARANDA3SUPERIOR], [LUXOVARANDA4SUPERIOR], [LUXO1HOSPEDE_FDS], [LUXO2HOSPEDE_FDS], [LUXO3HOSPEDE_FDS], [LUXO4HOSPEDE_FDS], [LUXO1SUPERIOR_FDS], [LUXO2SUPERIOR_FDS], [LUXO3SUPERIOR_FDS], [LUXO4SUPERIOR_FDS], [LUXOVARANDA1SUPERIOR_FDS], [LUXOVARANDA2SUPERIOR_FDS], [LUXOVARANDA3SUPERIOR_FDS], [LUXOVARANDA4SUPERIOR_FDS]) VALUES (@LUXO1HOSPEDE, @LUXO2HOSPEDES, @LUXO3HOSPEDES, @LUXO4HOSPEDES, @LUXO1SUPERIOR, @LUXO2SUPERIOR, @LUXO3SUPERIOR, @LUXO4SUPERIOR, @LUXOVARANDA1SUPERIOR, @LUXOVARANDA2SUPERIOR, @LUXOVARANDA3SUPERIOR, @LUXOVARANDA4SUPERIOR, @LUXO1HOSPEDE_FDS, @LUXO2HOSPEDE_FDS, @LUXO3HOSPEDE_FDS, @LUXO4HOSPEDE_FDS, @LUXO1SUPERIOR_FDS, @LUXO2SUPERIOR_FDS, @LUXO3SUPERIOR_FDS, @LUXO4SUPERIOR_FDS, @LUXOVARANDA1SUPERIOR_FDS, @LUXOVARANDA2SUPERIOR_FDS, @LUXOVARANDA3SUPERIOR_FDS, @LUXOVARANDA4SUPERIOR_FDS)" SelectCommand="SELECT [ID], [LUXO1HOSPEDE], [LUXO2HOSPEDES], [LUXO3HOSPEDES], [LUXO4HOSPEDES], [LUXO1SUPERIOR], [LUXO2SUPERIOR], [LUXO3SUPERIOR], [LUXO4SUPERIOR], [LUXOVARANDA1SUPERIOR], [LUXOVARANDA2SUPERIOR], [LUXOVARANDA3SUPERIOR], [LUXOVARANDA4SUPERIOR], [LUXO1HOSPEDE_FDS], [LUXO2HOSPEDE_FDS], [LUXO3HOSPEDE_FDS], [LUXO4HOSPEDE_FDS], [LUXO1SUPERIOR_FDS], [LUXO2SUPERIOR_FDS], [LUXO3SUPERIOR_FDS], [LUXO4SUPERIOR_FDS], [LUXOVARANDA1SUPERIOR_FDS], [LUXOVARANDA2SUPERIOR_FDS], [LUXOVARANDA3SUPERIOR_FDS], [LUXOVARANDA4SUPERIOR_FDS] FROM [TB_PRECOS]">
      
        <UpdateParameters>
            <asp:Parameter Name="LUXO1HOSPEDE" Type="Decimal" />
            <asp:Parameter Name="LUXO2HOSPEDES" Type="Decimal" />
            <asp:Parameter Name="LUXO3HOSPEDES" Type="Decimal" />
            <asp:Parameter Name="LUXO4HOSPEDES" Type="Decimal" />
            <asp:Parameter Name="LUXO1SUPERIOR" Type="Decimal" />
            <asp:Parameter Name="LUXO2SUPERIOR" Type="Decimal" />
            <asp:Parameter Name="LUXO3SUPERIOR" Type="Decimal" />
            <asp:Parameter Name="LUXO4SUPERIOR" Type="Decimal" />
            <asp:Parameter Name="LUXOVARANDA1SUPERIOR" Type="Decimal" />
            <asp:Parameter Name="LUXOVARANDA2SUPERIOR" Type="Decimal" />
            <asp:Parameter Name="LUXOVARANDA3SUPERIOR" Type="Decimal" />
            <asp:Parameter Name="LUXOVARANDA4SUPERIOR" Type="Decimal" />
            <asp:Parameter Name="LUXO1HOSPEDE_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXO2HOSPEDE_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXO3HOSPEDE_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXO4HOSPEDE_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXO1SUPERIOR_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXO2SUPERIOR_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXO3SUPERIOR_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXO4SUPERIOR_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXOVARANDA1SUPERIOR_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXOVARANDA2SUPERIOR_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXOVARANDA3SUPERIOR_FDS" Type="Decimal" />
            <asp:Parameter Name="LUXOVARANDA4SUPERIOR_FDS" Type="Decimal" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        
      
    </asp:SqlDataSource>
    <br />
    <br />
    
    </td>
    
    
    
    
    
    
    
    
    </tr>
    
    
    </table>


</asp:Content>

