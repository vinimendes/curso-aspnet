<%@ Page Title="Serviços" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="novoServico.aspx.cs" Inherits="trabMasterPage.novoServico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudoCentral" runat="server">
    <div id="containerManutencao" class="row justify-content-center">
        <div class="col-12 text-center"> 
                <h2 class="mb-3">Serviços</h2>
                <br>
        </div>        
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-4">
                <div class="imgServicos text-center">
                    <img src="img/blur-computer.jpg" >
                </div>
                <div>
                    <br>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="imgServicos text-center">
                    <img src="img/serv1.jpg" >
                </div>
                <div>
                    <br>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="imgServicos text-center">
                    <img src="img/blur-computer.jpg" >
                </div>
                <div>
                    <br>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores</p>
                </div>
            </div>
        </div>
    </div>
    <div id="containerContato" class="container-fluid">
        <div class="row">
            <div class="col-12 text-center">
                <h2>Contato</h2>
                <br>
                <br>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                
                    <div class="text-center">
                        <img src="img/whatsapp.png" height="100px">
                    </div>
                    <div class="text-center">
                        <br>
                        <h2>(11)987654321</h2>
                    </div>
                
            </div>
            <div class="col-md-6">
                
                    <div class="text-center">
                        <h2>Telefone</h2>
                        <br>
                        
                    </div>
                    <div id="contatoTel">
                        <h2>(30)12345678</h2>
                    </div>
                
            </div>
        </div>

    </div>

    


    <div id="containerServico" class="container-fluid">
        <div class="row">
            <div class="col-12 text-center">
                <h2>Selecionar Serviço</h2>
                <br>
                <br>
            </div>
        </div>
        <form  runat="server">
                <div class="row">
                <div class="col-md-6">
                    <!-- TEXT BOX AQUI-->
                    <div class="text-center">
                        <p>Serviço:</p>
                        <asp:TextBox ID="txtServico" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="col-md-6">
                    <!-- TEXT BOX 2-->
                    <div class="text-center">
                        <p>Preço</p>
                        <asp:TextBox ID="txtPreco" runat="server"></asp:TextBox>

                    </div>

                </div>
                
            </div>
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <!-- BOTAO-->
                    <asp:Button ID="btnGravar" runat="server" Text="Gravar" OnClick="btnGravar_Click" />
                </div>
            </div>
        </form>
        
    </div>


</asp:Content>
