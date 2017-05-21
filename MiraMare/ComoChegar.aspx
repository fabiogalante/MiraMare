<%@ Page Language="C#" MasterPageFile="~/Hotel.master" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">



<table style="width: 100%; height: 100%"  >
                        <tr>
                            <td style="width: 500px">
                               <table style="width: 100%; height: 100%">
                                    <tr>
                                        <td valign="top">
                            
                           
                          <br />

<asp:ImageButton ID="imgMapa" runat="server" ImageUrl="~/Fotos/Mapa.jpg" OnClientClick="window.open('JPG.aspx', '','width=936,height=500,left=0,top=0,scrollbars=yes, resizable=yes')" />


    <br />  

Clique na imagem para amplicar o mapa.

   <br />

                            
                            
                            </td>
                                    </tr>
                                </table>
                            
                            </td>
                            <td valign="top">
                            
                       
               <div id="sidebarcontent">
      <h3>
    <asp:Label ID="lblComo" runat="server" Text="COMO CHEGAR"></asp:Label>
</h3>
        <div class="sbcontentcontainer">
          
    
       
       
   O HOTEL MIRA-MARÉ localiza-se no nº4479 da Avenida Miguel Estéfano,
costeira à Praia da Enseada, no Guarujá. Dista uma hora de viagem de São Paulo,
pela Via dos Imigrantes ou Via Anchieta, com acesso direto  através da  Via Piaçaguera, ou pelo serviço de balsa Santos-Guarujá ou Guarujá-Bertioga.
<br />CEP: 11440-534

   
                                            
                                            
                                            
  
    <br />
  
    
           
        </div>
    </div>
        
  
                       
           
            
            
      
                            
                            </td>
                        </tr>
                    </table>




</asp:Content>

