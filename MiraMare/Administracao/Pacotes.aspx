<%@ Page Language="C#" MasterPageFile="~/1Coluna.master" AutoEventWireup="true" CodeFile="Pacotes.aspx.cs" Inherits="Administracao_Pacotes" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">


<table align="center">
                        <tr >
                            <td  valign="top">
                                   
                                   
                             

<h3>Promoções</h3>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Administracao/Default.aspx">Voltar</asp:HyperLink><br />
 
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#FF0000" Text="Preços atualizados com sucesso!!"
        Visible="False"></asp:Label><br />
  
    <asp:FormView ID="frmPacotes" runat="server" DataKeyNames="ID" DataSourceID="dsPacotes"
        DefaultMode="Edit" OnItemUpdated="frmPacotes_ItemUpdated">
        <EditItemTemplate>
        
        
        <br />
        <strong>TARIFAS PARA O PACOTE DO PERÍODO: </strong>
                    <asp:TextBox ID="TextBox31" runat="server" Font-Bold="True" Text='<%# Bind("NOMEPACOTE") %>' Width="242px" SkinID="forms"></asp:TextBox><br />
                    <br />
                    <table border="1" style="width: 100%">
                        <tr>
                            <td>
                                <table border="0" cellpadding="5" cellspacing="2" style="width: 100%" class="comBordaSimples">
                                    <tr>
                                        <td rowspan="2">
                                            Tipo e ocupação do apartamento</td>
                                        <td colspan="3">
                                            PACOTE DE
                                            <asp:TextBox ID="TextBox27" runat="server" Text='<%# Bind("NUMERODIARIA_1") %>' style="width:34px"></asp:TextBox>
                                            DIÁRIAS</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Luxo no piso térreo</td>
                                        <td>
                                            Luxo no piso superior</td>
                                        <td>
                                            Luxo no piso superior, com varanda</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            2 hóspedes</td>
                                        <td>
                                            <asp:TextBox ID="TextBox28" runat="server" Text='<%# Bind("PISOTERREO2HOSPEDES_1", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox32" runat="server" Text='<%# Bind("PISOSUPERIOR2HOSPEDES_1", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox35" runat="server" Text='<%# Bind("PSVARANDA2HOSPEDES_1", "{0:f}") %>'></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            3 hóspedes</td>
                                        <td>
                                            <asp:TextBox ID="TextBox29" runat="server" Text='<%# Bind("PISOTERREO3HOSPEDES_1", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox33" runat="server" Text='<%# Bind("PISOSUPERIOR3HOSPEDES_1", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox36" runat="server" Text='<%# Bind("PSVARANDA3HOSPEDES_1", "{0:f}") %>'></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            4 hóspedes</td>
                                        <td>
                                            <asp:TextBox ID="TextBox30" runat="server" Text='<%# Bind("PISOTERREO4HOSPEDES_1", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox34" runat="server" Text='<%# Bind("PISOSUPERIOR4HOSPEDES_1", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table border="1" style="width: 100%">
                        <tr>
                            <td>
                                <table border="0" cellpadding="5" cellspacing="2" style="width: 100%" class="comBordaSimples">
                                    <tr>
                                        <td rowspan="2">
                                            Tipo e ocupação do apartamento</td>
                                        <td colspan="3">
                                            PACOTE DE
                                            <asp:TextBox ID="TextBox37" runat="server" Text='<%# Bind("NUMERODIARIA_2") %>'></asp:TextBox>
                                            DIÁRIAS</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Luxo no piso térreo</td>
                                        <td>
                                            Luxo no piso superior</td>
                                        <td>
                                            Luxo no piso superior, com varanda</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            2 hóspedes</td>
                                        <td>
                                            <asp:TextBox ID="TextBox38" runat="server" Text='<%# Bind("PISOTERREO2HOSPEDES_2", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox39" runat="server" Text='<%# Bind("PISOSUPERIOR2HOSPEDES_2", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox40" runat="server" Text='<%# Bind("PSVARANDA2HOSPEDES_2", "{0:f}") %>'></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            3 hóspedes</td>
                                        <td>
                                            <asp:TextBox ID="TextBox41" runat="server" Text='<%# Bind("PISOTERREO3HOSPEDES_2", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox42" runat="server" Text='<%# Bind("PISOSUPERIOR3HOSPEDES_2", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox43" runat="server" Text='<%# Bind("PSVARANDA3HOSPEDES_2", "{0:f}") %>'></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            4 hóspedes</td>
                                        <td>
                                            <asp:TextBox ID="TextBox44" runat="server" Text='<%# Bind("PISOTERREO4HOSPEDES_2", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox45" runat="server" Text='<%# Bind("PISOSUPERIOR4HOSPEDES_2", "{0:f}") %>'></asp:TextBox></td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
            <asp:Button ID="btnEditar" runat="server" CommandName="Update" Text="Atualizar" /><br /><br />
        
        
        
        
        
        
        
        
        
          
        
            
        </EditItemTemplate>
      
    </asp:FormView>
    
    
    <asp:SqlDataSource ID="dsPacotes" runat="server" ConnectionString="<%$ ConnectionStrings:cnnString %>"
        SelectCommand="SELECT [NOMEPACOTE], [NUMERODIARIA_1], [PISOTERREO2HOSPEDES_1], [PISOTERREO3HOSPEDES_1], [PISOTERREO4HOSPEDES_1], [PISOSUPERIOR2HOSPEDES_1], [PISOSUPERIOR3HOSPEDES_1], [PISOSUPERIOR4HOSPEDES_1], [PSVARANDA2HOSPEDES_1], [PSVARANDA3HOSPEDES_1], [NUMERODIARIA_2], [PISOTERREO2HOSPEDES_2], [PISOTERREO3HOSPEDES_2], [PISOTERREO4HOSPEDES_2], [PISOSUPERIOR2HOSPEDES_2], [PISOSUPERIOR3HOSPEDES_2], [PISOSUPERIOR4HOSPEDES_2], [PSVARANDA2HOSPEDES_2], [PSVARANDA3HOSPEDES_2], [ID] FROM [TB_PACOTE]" DeleteCommand="DELETE FROM [TB_PACOTE] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TB_PACOTE] ([NOMEPACOTE], [NUMERODIARIA_1], [PISOTERREO2HOSPEDES_1], [PISOTERREO3HOSPEDES_1], [PISOTERREO4HOSPEDES_1], [PISOSUPERIOR2HOSPEDES_1], [PISOSUPERIOR3HOSPEDES_1], [PISOSUPERIOR4HOSPEDES_1], [PSVARANDA2HOSPEDES_1], [PSVARANDA3HOSPEDES_1], [NUMERODIARIA_2], [PISOTERREO2HOSPEDES_2], [PISOTERREO3HOSPEDES_2], [PISOTERREO4HOSPEDES_2], [PISOSUPERIOR2HOSPEDES_2], [PISOSUPERIOR3HOSPEDES_2], [PISOSUPERIOR4HOSPEDES_2], [PSVARANDA2HOSPEDES_2], [PSVARANDA3HOSPEDES_2]) VALUES (@NOMEPACOTE, @NUMERODIARIA_1, @PISOTERREO2HOSPEDES_1, @PISOTERREO3HOSPEDES_1, @PISOTERREO4HOSPEDES_1, @PISOSUPERIOR2HOSPEDES_1, @PISOSUPERIOR3HOSPEDES_1, @PISOSUPERIOR4HOSPEDES_1, @PSVARANDA2HOSPEDES_1, @PSVARANDA3HOSPEDES_1, @NUMERODIARIA_2, @PISOTERREO2HOSPEDES_2, @PISOTERREO3HOSPEDES_2, @PISOTERREO4HOSPEDES_2, @PISOSUPERIOR2HOSPEDES_2, @PISOSUPERIOR3HOSPEDES_2, @PISOSUPERIOR4HOSPEDES_2, @PSVARANDA2HOSPEDES_2, @PSVARANDA3HOSPEDES_2)" UpdateCommand="UPDATE [TB_PACOTE] SET [NOMEPACOTE] = @NOMEPACOTE, [NUMERODIARIA_1] = @NUMERODIARIA_1, [PISOTERREO2HOSPEDES_1] = @PISOTERREO2HOSPEDES_1, [PISOTERREO3HOSPEDES_1] = @PISOTERREO3HOSPEDES_1, [PISOTERREO4HOSPEDES_1] = @PISOTERREO4HOSPEDES_1, [PISOSUPERIOR2HOSPEDES_1] = @PISOSUPERIOR2HOSPEDES_1, [PISOSUPERIOR3HOSPEDES_1] = @PISOSUPERIOR3HOSPEDES_1, [PISOSUPERIOR4HOSPEDES_1] = @PISOSUPERIOR4HOSPEDES_1, [PSVARANDA2HOSPEDES_1] = @PSVARANDA2HOSPEDES_1, [PSVARANDA3HOSPEDES_1] = @PSVARANDA3HOSPEDES_1, [NUMERODIARIA_2] = @NUMERODIARIA_2, [PISOTERREO2HOSPEDES_2] = @PISOTERREO2HOSPEDES_2, [PISOTERREO3HOSPEDES_2] = @PISOTERREO3HOSPEDES_2, [PISOTERREO4HOSPEDES_2] = @PISOTERREO4HOSPEDES_2, [PISOSUPERIOR2HOSPEDES_2] = @PISOSUPERIOR2HOSPEDES_2, [PISOSUPERIOR3HOSPEDES_2] = @PISOSUPERIOR3HOSPEDES_2, [PISOSUPERIOR4HOSPEDES_2] = @PISOSUPERIOR4HOSPEDES_2, [PSVARANDA2HOSPEDES_2] = @PSVARANDA2HOSPEDES_2, [PSVARANDA3HOSPEDES_2] = @PSVARANDA3HOSPEDES_2 WHERE [ID] = @ID">
      
        <UpdateParameters>
            <asp:Parameter Name="NOMEPACOTE" Type="String" />
            <asp:Parameter Name="NUMERODIARIA_1" Type="Int32" />
            <asp:Parameter Name="PISOTERREO2HOSPEDES_1" Type="Decimal" />
            <asp:Parameter Name="PISOTERREO3HOSPEDES_1" Type="Decimal" />
            <asp:Parameter Name="PISOTERREO4HOSPEDES_1" Type="Decimal" />
            <asp:Parameter Name="PISOSUPERIOR2HOSPEDES_1" Type="Decimal" />
            <asp:Parameter Name="PISOSUPERIOR3HOSPEDES_1" Type="Decimal" />
            <asp:Parameter Name="PISOSUPERIOR4HOSPEDES_1" Type="Decimal" />
            <asp:Parameter Name="PSVARANDA2HOSPEDES_1" Type="Decimal" />
            <asp:Parameter Name="PSVARANDA3HOSPEDES_1" Type="Decimal" />
            <asp:Parameter Name="NUMERODIARIA_2" Type="Int32" />
            <asp:Parameter Name="PISOTERREO2HOSPEDES_2" Type="Decimal" />
            <asp:Parameter Name="PISOTERREO3HOSPEDES_2" Type="Decimal" />
            <asp:Parameter Name="PISOTERREO4HOSPEDES_2" Type="Decimal" />
            <asp:Parameter Name="PISOSUPERIOR2HOSPEDES_2" Type="Decimal" />
            <asp:Parameter Name="PISOSUPERIOR3HOSPEDES_2" Type="Decimal" />
            <asp:Parameter Name="PISOSUPERIOR4HOSPEDES_2" Type="Decimal" />
            <asp:Parameter Name="PSVARANDA2HOSPEDES_2" Type="Decimal" />
            <asp:Parameter Name="PSVARANDA3HOSPEDES_2" Type="Decimal" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        
        
    </asp:SqlDataSource>
    <br />
    
  
    
  
   
                            
                            
                            
                            </td>
                                 

    
  
                            </tr>
                            
                            </table>


</asp:Content>

