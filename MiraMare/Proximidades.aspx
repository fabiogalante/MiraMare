<%@ Page Language="C#" MasterPageFile="~/Hotel.master" Title="Untitled Page" %>

<%@ Register Namespace="ImageSlideShow" Assembly="ImageSlideShow" TagPrefix="web" %>



<asp:Content ID="Content1" ContentPlaceHolderID="centro" Runat="Server">

<table style="width: 100%; height: 100%"  >
                        <tr>
                            <td style="width: 500px">
                               <table style="width: 100%; height: 100%">
                                    <tr>
                                        <td valign="top">
                            
                            <web:ImageSlideShow ID="SlideShow1" runat="server" ImagesDirectory="~/Fotos/Proximidades"
        CssClass="slideshow" Height="352px" Width="500px" /> 
                            
                            
                            </td>
                                    </tr>
                                </table>
                            
                            </td>
                            <td valign="top">
                            
                       
               
                 <div id="sidebarcontent">
      <h3>
       SERVI�OS PR�XIMOS AO HOTEL</h3>
        <div class="sbcontentcontainer">
          
    
O HOTEL MIRA-MAR� dista poucas quadras dos melhores restaurantes do Guaruj�, 
de um centro de esportes n�uticos, de um centro comercial e da estrada de acesso
 � Praia de Pernambuco e demais praias do litoral norte.                                             
                                           
                                            
                                            
                                            
  
    <br />
    <br />
  
    
           
        </div>
    </div>
        
        
        
        
        
  
                       
           
            
            
      
                            
                            </td>
                        </tr>
                    </table>


</asp:Content>

