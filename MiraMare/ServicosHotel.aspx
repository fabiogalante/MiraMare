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
            SERVI�OS NO HOTEL</h3>
        <div class="sbcontentcontainer">
         
    
            Farto caf� da manh�, incluido na di�ria.<br />
       
            Servi�o de lanche no apartamento ou junto � piscina, de frente para o mar.<br />
        
            Guarda-sol e cadeiras de praia.<br />
        
         Salas de estar com televis�o e v�deo.<br />
        Estacionamento interno fechado, com servi�o de manobrista 24 horas.<br />
        Instala��es para servi�o de massagem.
                                            
                                            
                                            
  
    <br />
  
    
           
        </div>
    </div>
        
        
        
        
        
  
                       
           
            
            
      
                            
                            </td>
                        </tr>
                    </table>





</asp:Content>

