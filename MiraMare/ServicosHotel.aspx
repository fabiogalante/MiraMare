<%@ Page Language="C#" MasterPageFile="~/Hotel.master" Title="Untitled Page" %>

<%@ Register Namespace="ImageSlideShow" Assembly="ImageSlideShow" TagPrefix="web" %>


<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">



<table style="width: 100%; height: 100%"  >
                        <tr>
                            <td style="width: 500px">
                               <table style="width: 100%; height: 100%">
                                    <tr>
                                        <td valign="top">
                            
                      <web:ImageSlideShow ID="SlideShow1" runat="server" ImagesDirectory="~/Fotos/Servicos"
        CssClass="slideshow" /> 
                            
                            </td>
                                    </tr>
                                </table>
                            
                            </td>
                            <td valign="top">
                            
                       
               <div id="sidebarcontent">
        <h3>
            SERVIÇOS NO HOTEL</h3>
        <div class="sbcontentcontainer">
         
    
            Farto café da manhã, incluido na diária.<br />
       
            Serviço de lanche no apartamento ou junto à piscina, de frente para o mar.<br />
        
            Guarda-sol e cadeiras de praia.<br />
        
         Salas de estar com televisão e vídeo.<br />
        Estacionamento interno fechado, com serviço de manobrista 24 horas.<br />
        Instalações para serviço de massagem.
                                            
                                            
                                            
  
    <br />
  
    
           
        </div>
    </div>
        
        
        
        
        
  
                       
           
            
            
      
                            
                            </td>
                        </tr>
                    </table>





</asp:Content>

