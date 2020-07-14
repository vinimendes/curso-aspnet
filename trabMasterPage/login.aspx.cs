using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabMasterPage
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnv_Click(object sender, EventArgs e)
        {
            Conexao bancoUsuario = new Conexao();
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            int qtde;
            String login = txtLogin.Text.Trim();
            String senha = txtSenha.Text.Trim();
            String strSql = "select count(*) as qtde from usuario where login = @login and senha = @senha;";

            bancoUsuario.conectar();
            bancoUsuario.command.CommandText = strSql;
            bancoUsuario.command.Parameters.Add("@login", SqlDbType.VarChar).Value = login;
            bancoUsuario.command.Parameters.Add("@senha", SqlDbType.VarChar).Value = senha;
            dAdapter.SelectCommand = bancoUsuario.command;
            dAdapter.Fill(dt);
            
            qtde = Convert.ToInt32(dt.Tables[0].DefaultView[0].Row["qtde"]);

            if(qtde == 1)
            {
                Session["logado"] = 1;
                Response.Redirect("~/pesqServicos.aspx");
            } else
            {
                lblIncorre.Text = "O login ou a senha está incorreta";
            }
            
        }
    }
}