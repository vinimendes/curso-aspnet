<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="trabMasterPage.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudoCentral" runat="server">
    <div class="container login-container">
        <div class="row">
            <div class="col-md-12 login-form-1">
                <h3>Login</h3>
                <form runat="server">
                    <div class="form-group">
                            <asp:TextBox ID="txtLogin" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtSenha" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnEnv" class="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnv_Click" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblIncorre"  runat="server" Text=""></asp:Label>
                        </div>
                </form>
            </div>
        </div>

    </div>
</asp:Content>
