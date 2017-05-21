<%@ Page Language="C#" MasterPageFile="~/1Coluna.master" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">

  <table style="width: 100%; height: 100%">
                        <tr>
                            <td valign="top">
                            
                           <div id="fundo">

<br />

<br />
<br />


    <asp:Label ID="lblTexto" runat="server">
     <b> Tarifa balc�o promocional, para a baixa temporada (1/4 a 30/11)</b>, 
      exceto para pacotes com feriado, sujeita a altera��es sem aviso pr�vio.
       
    </asp:Label>
    
    <br />
     <br />
      <br />
      

       <asp:GridView ID="grwValores" runat="server" AutoGenerateColumns="False" Width="100%" DataSourceID="dsPrecos" ShowHeader="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
    
   
  <table border="0" cellpadding="0" cellspacing="2" class="comBordaSimples" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; width: 100%; padding-top: 5px">
                        <tr>
                            <td rowspan="2" style="width: 15%">
                                Tipo e ocupa��o do apartamento</td>
                            <td colspan="3">
                                de domingo � 5� feira</td>
                            <td colspan="3">
                                6� feira e s�bado</td>
                        </tr>
                        <tr>
                            <td style="width: 12%">
                                Luxo no piso t�rreo</td>
                            <td style="width: 12%">
                                Luxo no piso superior</td>
                            <td style="width: 12%">
                                Luxo no piso superior, com varanda</td>
                            <td style="width: 12%">
                                Luxo no piso t�rreo</td>
                            <td style="width: 12%">
                                Luxo no piso superior</td>
                            <td style="width: 12%">
                                Luxo no piso superior, com varanda</td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                1 h�spede</td>
                            <td style="width: 12%">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("LUXO1HOSPEDE", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("LUXO1SUPERIOR", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("LUXOVARANDA1SUPERIOR", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("LUXO1HOSPEDE_FDS", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("LUXO1SUPERIOR_FDS", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label21" runat="server" Text='<%# Eval("LUXOVARANDA1SUPERIOR_FDS", "{0:C}") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                2 h�spedes</td>
                            <td style="width: 12%">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("LUXO2HOSPEDES", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("LUXO2SUPERIOR", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("LUXOVARANDA2SUPERIOR", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("LUXO2HOSPEDE_FDS", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("LUXO2SUPERIOR_FDS", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label22" runat="server" Text='<%# Eval("LUXOVARANDA2SUPERIOR_FDS", "{0:C}") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                3 h�spedes</td>
                            <td style="width: 12%">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("LUXO3HOSPEDES", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("LUXO3SUPERIOR", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("LUXOVARANDA3SUPERIOR", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("LUXO3HOSPEDE_FDS", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label19" runat="server" Text='<%# Eval("LUXO3SUPERIOR_FDS", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label23" runat="server" Text='<%# Eval("LUXOVARANDA3SUPERIOR_FDS", "{0:C}") %>'></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                4 h�spedes</td>
                            <td style="width: 12%">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("LUXO4HOSPEDES", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("LUXO4SUPERIOR", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("LUXOVARANDA4SUPERIOR", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label16" runat="server" Text='<%# Eval("LUXO4HOSPEDE_FDS", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label20" runat="server" Text='<%# Eval("LUXO4SUPERIOR_FDS", "{0:C}") %>'></asp:Label></td>
                            <td style="width: 12%">
                                <asp:Label ID="Label24" runat="server" Text='<%# Eval("LUXOVARANDA4SUPERIOR_FDS", "{0:C}") %>'></asp:Label></td>
                        </tr>
                    </table>
                
              
                  
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="dsPrecos" runat="server" ConnectionString="<%$ ConnectionStrings:cnnString %>"
        SelectCommand="SELECT * FROM [TB_PRECOS]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label25" runat="server">
       <ul>
        <li>
           Tarifa  "net", n�o comission�vel.
	</li>
        <li>
          <b>  N�o � cobrada taxa de servi�o.</b>
               
	</li>
        <li>
         <b>  Inclusos em todas as di�rias:</b> caf� da manh� e servi�o de praia (guarda�sol e cadeiras),uso de piscina de frente para o mar e de estacionamento fechado, no jardim do hotel, com manobrista 24 horas.
	</li>
	
	<li>
	Acrescentar ao valor da di�ria R$ 1,50 de �Room Tax�(opcional), repassado ao Guaruj� Convention & Visitors Bureau.
	
	</li>
	
        <li>
         <b> Di�ria completa:</b> �Check-in� �s 13 horas, �check-out� �s 12 horas,
          independente do hor�rio de entrada no hotel. <br />
       Sa�das entre 12 horas e 18 horas com acr�scimo de meia
       di�ria. Sa�das ap�s 18 horas com acr�scimo igual ao valor 
       de uma di�ria. Quando h� disponibilidade de apartamentos 
       no hotel, no domingo, �late check-out� at� as 15 horas.

	</li>
	
	
	  <li>
    
    
   <b> Cortesias:</b> no caso de beb�s, o hotel oferece ber�o no apartamento dos pais
     e apoio para o preparo de mamadeiras, com acesso � cozinha do 
     hotel;
     uma crian�a com at� 5 anos, no mesmo apartamento do h�spede
     acompanhante, n�o paga di�ria;
     duas crian�as com at� 5 anos, no mesmo apartamento do h�spede
     acompanhante, pagam como um adulto.

    
    </li>
    
    
    <li>
    
   <b>Cart�es de cr�dito: </b>aceitam-se os cart�es de cr�dito VISA, VISA ELECTRON,
                                         CREDICARD-MASTERCARD, REDESHOP e DINERS CLUB. 

    
    </li>
    
    
    
    <li>
    
   N�o se aceitam cheques. 
    
    
    </li>
    
    <li>
    
  <b>  Forma de pagamento:</b> 50% na reserva (�nica forma de garantia de reserva),
                                              50% no �check-in�.

    
    </li>
    
    
    <li>
    
   <b> Central de reservas:</b> DDD      (0xx13)     33 921431ou 33515051<br />
                                                 DDI       (055xx13)  33 921431ou 33515051<br />
                                           FAX      (0xx13)      33921432<br />
                                           E.mail  miramare@hotelmiramare.com.br<br />
                                           SITE      www.hotelmiramare.com.br <br />

    
    </li>
    
    
    <li>
    
     
Condi��es para o cancelamento de reservas: no caso de cancelamento de reservas
 at� 15 dias antes do �check-in�, o valor pago pelo cliente ser� devolvido sem custos.  

    
    </li>
    
	
    </ul>
       
    </asp:Label>
    
    
 
    
    
  <br />
    <br />
    <br />
    
    
    <asp:SqlDataSource ID="dsPacote" runat="server" ConnectionString="<%$ ConnectionStrings:cnnString %>"
        SelectCommand="SELECT [NOMEPACOTE], [NUMERODIARIA_1], [PISOTERREO2HOSPEDES_1], [PISOTERREO3HOSPEDES_1], [PISOTERREO4HOSPEDES_1], [PISOSUPERIOR2HOSPEDES_1], [PISOSUPERIOR3HOSPEDES_1], [PISOSUPERIOR4HOSPEDES_1], [PSVARANDA2HOSPEDES_1], [PSVARANDA3HOSPEDES_1], [NUMERODIARIA_2], [PISOTERREO2HOSPEDES_2], [PISOTERREO3HOSPEDES_2], [PISOTERREO4HOSPEDES_2], [PISOSUPERIOR2HOSPEDES_2], [PISOSUPERIOR3HOSPEDES_2], [PISOSUPERIOR4HOSPEDES_2], [PSVARANDA2HOSPEDES_2], [PSVARANDA3HOSPEDES_2] FROM [TB_PACOTE]">
    </asp:SqlDataSource>
    <asp:GridView ID="grwPacote" runat="server" AutoGenerateColumns="False" DataSourceID="dsPacote" GridLines="None">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <strong>
                    TARIFAS PARA  PACOTES DE REVEILLON, CARNAVAL, SEMANA SANTA, TIRADENTES, DIA DO TRABALHO, 
                    CORPUS CHRISTI, INDEPEND�NCIA DO BRASIL, NOSSA SENHORA APARECIDA, FINADOS, 
                    PROCLAMA��O DA REP�BLICA E NATAL
                    
                    
                    <br />
                    <br />
                    <br />
                    </strong>
                    <br />
                    <br />
                    <table border="1" style="width: 100%">
                        <tr>
                            <td>
                                <table border="0" cellpadding="5" cellspacing="2" style="width: 100%" class="comBordaSimples">
                                    <tr>
                                        <td colspan="4" rowspan="1">
                    <asp:Label ID="Label31" runat="server" Font-Bold="True" Text='<%# Eval("NOMEPACOTE") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2">
                                            Tipo e ocupa��o do apartamento</td>
                                        <td colspan="3">
                                            PACOTE DE
                                            <asp:Label ID="Label27" runat="server" Text='<%# Eval("NUMERODIARIA_1") %>'></asp:Label>
                                            DI�RIAS</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Luxo no piso t�rreo</td>
                                        <td>
                                            Luxo no piso superior</td>
                                        <td>
                                            Luxo no piso superior, com varanda</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            2 h�spedes</td>
                                        <td>
                                            <asp:Label ID="Label28" runat="server" Text='<%# Eval("PISOTERREO2HOSPEDES_1", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label32" runat="server" Text='<%# Eval("PISOSUPERIOR2HOSPEDES_1", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label35" runat="server" Text='<%# Eval("PSVARANDA2HOSPEDES_1", "{0:C}") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            3 h�spedes</td>
                                        <td>
                                            <asp:Label ID="Label29" runat="server" Text='<%# Eval("PISOTERREO3HOSPEDES_1", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label33" runat="server" Text='<%# Eval("PISOSUPERIOR3HOSPEDES_1", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label36" runat="server" Text='<%# Eval("PSVARANDA3HOSPEDES_1", "{0:C}") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            4 h�spedes</td>
                                        <td>
                                            <asp:Label ID="Label30" runat="server" Text='<%# Eval("PISOTERREO4HOSPEDES_1", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label34" runat="server" Text='<%# Eval("PISOSUPERIOR4HOSPEDES_1", "{0:C}") %>'></asp:Label></td>
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
                                            Tipo e ocupa��o do apartamento</td>
                                        <td colspan="3">
                                            PACOTE DE
                                            <asp:Label ID="Label37" runat="server" Text='<%# Eval("NUMERODIARIA_2") %>'></asp:Label>
                                            DI�RIAS</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Luxo no piso t�rreo</td>
                                        <td>
                                            Luxo no piso superior</td>
                                        <td>
                                            Luxo no piso superior, com varanda</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            2 h�spedes</td>
                                        <td>
                                            <asp:Label ID="Label38" runat="server" Text='<%# Eval("PISOTERREO2HOSPEDES_2", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label39" runat="server" Text='<%# Eval("PISOSUPERIOR2HOSPEDES_2", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label40" runat="server" Text='<%# Eval("PSVARANDA2HOSPEDES_2", "{0:C}") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            3 h�spedes</td>
                                        <td>
                                            <asp:Label ID="Label41" runat="server" Text='<%# Eval("PISOTERREO3HOSPEDES_2", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label42" runat="server" Text='<%# Eval("PISOSUPERIOR3HOSPEDES_2", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label43" runat="server" Text='<%# Eval("PSVARANDA3HOSPEDES_2", "{0:C}") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            4 h�spedes</td>
                                        <td>
                                            <asp:Label ID="Label44" runat="server" Text='<%# Eval("PISOTERREO4HOSPEDES_2", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label45" runat="server" Text='<%# Eval("PISOSUPERIOR4HOSPEDES_2", "{0:C}") %>'></asp:Label></td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
  

</div>
                            
                            </td>
                           
                        </tr>
                    </table>



</asp:Content>

