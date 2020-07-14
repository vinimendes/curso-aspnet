using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace trabMasterPage
{
    public class Conexao
    {
        public SqlConnection conexaoBanco;
        public SqlCommand command;
        string StrConexao = "Server=localhost;DataBase=exe_servicos;user id=sa;password=**;";

        public void conectar()
        {
            conexaoBanco = new SqlConnection(StrConexao);
            conexaoBanco.Open();
            command = new SqlCommand();
            command.Connection = conexaoBanco;
        }

        public void fecharBanco()
        {
            command = null;
            conexaoBanco.Close();
            conexaoBanco = null;
        }
        
    }
}
