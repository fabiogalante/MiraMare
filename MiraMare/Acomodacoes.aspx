<%@ Page Language="C#" MasterPageFile="~/Hotel.master" Title="Untitled Page" %>


<%@ Register Namespace="ImageSlideShow" Assembly="ImageSlideShow" TagPrefix="web" %>

<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">

<table style="width: 100%; height: 100%"  >
                        <tr>
                            <td style="width: 500px">
                               <table style="width: 100%; height: 100%">
                                    <tr>
                                        <td valign="top">
                            
                           
                            <web:ImageSlideShow ID="SlideShow1" runat="server" ImagesDirectory="~/Fotos/Acomodacoes"
        CssClass="slideshow" /> 
                            
                            
                            </td>
                                    </tr>
                                </table>
                            
                            </td>
                            <td valign="top">
                            
                       
               
                       <div id="sidebarcontent">
        <h3>
           ACOMODAÇÕES</h3>
        <div class="sbcontentcontainer">
           
                Apartamentos amplos, para até 4 hóspedes, com televisão, ar-condicionado, ventilador
                de teto, frigobar, telefone e cofre.<br />
            
                Oito apartamentos têm ampla varanda de frente para o mar.<br />
         
                Os demais apartamentos são de frente para o mar ou para o jardim do hotel.
            <br />
           
        </div>
    </div>
        
        
        
        
        
  
                       
           
            
            
      
                            
                            </td>
                        </tr>
                    </table>




</asp:Content>

