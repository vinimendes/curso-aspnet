<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="pesqServicos.aspx.cs" Inherits="trabMasterPage.pesqServicos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudoCentral" runat="server">
    <form runat="server">
        <asp:Label ID="Label1" runat="server" Text="Serviços"></asp:Label>
        <asp:TextBox ID="txtBox" runat="server"></asp:TextBox>
        <asp:Button ID="btnPesq" runat="server" Text="Pesquisar" OnClick="btnPesq_Click" />
        <br />
        <hr />
        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" OnDeleteCommand="DataGrid1_DeleteCommand">
            <Columns>
                <asp:BoundColumn DataField="codigo" HeaderText="Código" ReadOnly="True"></asp:BoundColumn>
                <asp:BoundColumn DataField="nome" HeaderText="Serviços"></asp:BoundColumn>
                <asp:BoundColumn DataField="preco" HeaderText="Preço"></asp:BoundColumn>
                <asp:EditCommandColumn CancelText="Cancelar" EditText="Editar" UpdateText="Atualizar"></asp:EditCommandColumn>
                <asp:ButtonColumn CommandName="Delete" Text="Excluir"></asp:ButtonColumn>
            </Columns>
        </asp:DataGrid>
    </form>

    
</asp:Content>
