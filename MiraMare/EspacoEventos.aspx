<%@ Page Language="C#" MasterPageFile="~/Hotel.master" Title="Untitled Page" %>


<%@ Register Namespace="ImageSlideShow" Assembly="ImageSlideShow" TagPrefix="web" %>


<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">


<table style="width: 100%; height: 100%"  >
                        <tr>
                            <td style="width: 500px">
                               <table style="width: 100%; height: 100%">
                                    <tr>
                                        <td valign="top">
                            
                      <web:ImageSlideShow ID="SlideShow1" runat="server" ImagesDirectory="~/Fotos/EspacoEventos"  CssClass="slideshow" />
                            
                            </td>
                                    </tr>
                                </table>
                            
                            </td>
                            <td valign="top">
                            
                       
           <div id="sidebarcontent">
        <h3>
       ESPA�OS PARA EVENTOS
       </h3>
        <div class="sbcontentcontainer">
         
   
Compondo espa�o com cerca de 300 metros quadrados, entremeado por jardins, 
h� 2 salas adequadas para boas vindas, reuni�es e coffee break, cada uma 
com capacidade para at� 30 pessoas acomodadas em mesas ou carteiras.
<br />
                                            

           
        </div>
    </div>
        
        
        
        
  
                       
           
            
            
      
                            
                            </td>
                        </tr>
                    </table>



</asp:Content>

