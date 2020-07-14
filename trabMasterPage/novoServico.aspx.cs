using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace trabMasterPage
{
    public partial class novoServico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            String servico = txtServico.Text;
            Decimal preco = Convert.ToDecimal(txtPreco.Text);
            String sql = "insert into servico(nome, preco) values('" + servico +"', '" + preco + "');";
                          
            //CONEXAOO 
            Conexao bancoServico = new Conexao();

            bancoServico.conectar();
            bancoServico.command.CommandText = sql;
            bancoServico.command.ExecuteNonQuery();

            bancoServico.fecharBanco();




        }
    }
}