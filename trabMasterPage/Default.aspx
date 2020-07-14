<%@ Page Title="Início" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="trabMasterPage.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudoCentral" runat="server">
    <div id="containerManutencao" class="row justify-content-center">
        <div class="col-12 text-center"> 
                <h2 class="mb-3">Manutenções</h2>
                <p>Oferecemos serviços de manutenção de computadores e celulares</p>           
        </div>        
    </div>
    <div id="containerSobre" class="container-fluid">
        <div  class="row">
            <div class="col-md-4">
                <div id="imgSobre">
                    <img src="img/man-using-silver.jpg" height="250px">
                </div>
                
            </div>
            <div class="col-md-8">
                <div class="text-center">
                    <h3 class="mb-3">Sobre</h3>
                </div>
                <br>
                <p>
                    At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.
                </p>
            </div>
        </div>
    </div>
    <div id="containerManutencao" class="row justify-content-center">
        <div class="col-12 text-center"> 
                <h2 class="mb-3">Localização</h2>
                <br>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d17398.576315602884!2d-46.6451736087867!3d-23.54688096552824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce585fbb047051%3A0x1ad799a7c61cd5f3!2sETEC%20de%20S%C3%A3o%20Paulo!5e0!3m2!1spt-BR!2sbr!4v1590611489474!5m2!1spt-BR!2sbr"  frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>


        </div> 
    </div>
</asp:Content>


