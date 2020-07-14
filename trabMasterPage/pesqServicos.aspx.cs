using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace trabMasterPage
{
    public partial class pesqServicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Convert.ToInt32(Session["logado"]) != 1 || Session["logado"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

    
        public void Pesquisar(){
            String sql = "select * from servico where nome like '%" + txtBox.Text + "%';";

            SqlDataAdapter dataAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            Conexao bancoPesquisa = new Conexao();
            bancoPesquisa.conectar();

            bancoPesquisa.command.CommandText = sql;
            dataAdapter.SelectCommand = bancoPesquisa.command;
            dataAdapter.Fill(dt);
            bancoPesquisa.fecharBanco();
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();

        }

        
        

        protected void btnPesq_Click(object sender, EventArgs e)
        {
            Pesquisar();
            
        }

        protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
        {
            int codGrid = Convert.ToInt32(e.Item.Cells[0].Text);

            Conexao bancoGrid = new Conexao();
            bancoGrid.conectar();
            bancoGrid.command.CommandText = "delete servico where codigo = @codGrid";
            bancoGrid.command.Parameters.Add("@codGrid", SqlDbType.Int).Value = codGrid;
            bancoGrid.command.ExecuteNonQuery();
            bancoGrid.fecharBanco();

            Pesquisar();

        }
    }
}