﻿using MySql.Data.MySqlClient;
using System;
using System.Data;
using PATOnline.Models;

namespace PATOnline.Controller.ClasesBD
{
    public class C4Accion
    {
        public string query;

        public DataTable C4Read(string fadn, string ano, int estado)
        {
            DataTable dt = new DataTable();
            var mysql = new DBConnection.ConexionMysql();
            if (estado > 1)
            {
                query = String.Format("SELECT '0' as numero, fc.nombre as formato, " +
                "null as mes1, null as mes2, null as mes3, null as anual, null as presupuesto " +
                "FROM admin_formato_c fc WHERE fc.idformato_c = '3' " +
                "UNION ALL " +
                "SELECT cpe.idc4 as numero, fc.nombre as formato, " +
                "cpe.ene_abr as mes1, cpe.may_ago as mes2, cpe.sep_dic as mes3, " +
                "cpe.anual as anual, CONCAT('Q ', cpe.presupuesto) as presupuesto " +
                "FROM pat_c4 cpe " +
                "INNER JOIN admin_formato_c fc ON fc.idformato_c = cpe.fkformato_c " +
                "WHERE cpe.fadn = '{0}' " +
                "AND cpe.ano = '{1}' AND cpe.fkestado = '{2}';", fadn, ano, estado);
            }
            else
            {
                query = String.Format("SELECT '0' as numero, fc.nombre as formato, " +
                "null as mes1, null as mes2, null as mes3, null as anual, null as presupuesto " +
                "FROM admin_formato_c fc WHERE fc.idformato_c = '3' " +
                "UNION ALL " +
                "SELECT cpe.idc4 as numero, fc.nombre as formato, " +
                "cpe.ene_abr as mes1, cpe.may_ago as mes2, cpe.sep_dic as mes3, " +
                "cpe.anual as anual, CONCAT('Q ', cpe.presupuesto) as presupuesto " +
                "FROM pat_c4 cpe " +
                "INNER JOIN admin_formato_c fc ON fc.idformato_c = cpe.fkformato_c " +
                "WHERE cpe.fadn = '{0}' " +
                "AND cpe.ano = '{1}' AND cpe.fkestado IN(1, 2);", fadn, ano, estado);
            }

            mysql.AbrirConexion();
            MySqlDataAdapter consulta = new MySqlDataAdapter(query, mysql.conectar);
            consulta.Fill(dt);
            mysql.CerrarConexion();
            return dt;
        }

        public DataTable C4TotalRead(string fadn, string ano, int estado)
        {
            DataTable dt = new DataTable();
            var mysql = new DBConnection.ConexionMysql();
            if (estado > 1)
            {
                query = String.Format("SELECT cpe.idc4 AS numero, SUM(cpe.presupuesto) AS total " +
                "FROM pat_c4 cpe WHERE fadn = '{0}' AND ano = '{1}' AND fkestado = '{2}'; ", fadn, ano, estado);
            }
            else
            {
                query = String.Format("SELECT cpe.idc4 AS numero, SUM(cpe.presupuesto) AS total " +
                "FROM pat_c4 cpe WHERE fadn = '{0}' AND ano = '{1}' AND fkestado IN(1, 2); ", fadn, ano, estado);
            }

            mysql.AbrirConexion();
            MySqlDataAdapter consulta = new MySqlDataAdapter(query, mysql.conectar);
            consulta.Fill(dt);
            mysql.CerrarConexion();
            return dt;
        }

        public DataTable C4Create(ModeloCPE objCrear)
        {
            var mysql = new DBConnection.ConexionMysql();
            DataTable dt = new DataTable();
            query = String.Format("INSERT INTO pat_c4 (ene_abr, may_ago, sep_dic, presupuesto, fkformato_c, fadn, ano, anual, fkestado) " +
            "VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'); ",
            objCrear.mes1, objCrear.mes2, objCrear.mess3, objCrear.presupuesto, objCrear.fkformato_ce, objCrear.fadn, objCrear.ano, objCrear.anual, objCrear.fkestado);
            mysql.AbrirConexion();
            MySqlDataAdapter consulta = new MySqlDataAdapter(query, mysql.conectar);
            consulta.Fill(dt);
            mysql.CerrarConexion();
            return dt;
        }

        public DataTable C4Seleccionar(int id)
        {
            DataTable dt = new DataTable();
            var mysql = new DBConnection.ConexionMysql();

            query = String.Format("SELECT cpe.idc4 as numero, fc.nombre as formato, " +
            "cpe.ene_abr as mes1, cpe.may_ago as mes2, cpe.sep_dic as mes3, " +
            "cpe.anual as anual, cpe.presupuesto as presupuesto " +
            "FROM pat_c4 cpe " +
            "INNER JOIN admin_formato_c fc ON fc.idformato_c = cpe.fkformato_c " +
            "WHERE cpe.idc4 = '{0}';", id);
            mysql.AbrirConexion();
            MySqlDataAdapter consulta = new MySqlDataAdapter(query, mysql.conectar);
            consulta.Fill(dt);
            mysql.CerrarConexion();
            return dt;
        }

        public Boolean C4Update(ModeloCPE o, int id, int estado)
        {
            var mysql = new DBConnection.ConexionMysql();
            if (estado > 1)
            {
                query = String.Format("SET SQL_SAFE_UPDATES=0; " +
                "UPDATE pat_c4 SET fkestado = '{0}' WHERE idc3 = '{1}'",
                estado, id);
            }
            else
            {
                query = String.Format("SET SQL_SAFE_UPDATES=0; " +
                "UPDATE pat_c4 SET ene_abr = '{1}', may_ago = '{2}', " +
                "sep_dic = '{3}', anual = '{4}', presupuesto = '{5}' WHERE idc4 = '{6}';",
                o.mes1, o.mes2, o.mess3, o.anual, o.presupuesto, id);
            }


            try
            {
                mysql.AbrirConexion();
                MySqlCommand cmd = new MySqlCommand(query, mysql.conectar);
                cmd.ExecuteNonQuery();
                mysql.CerrarConexion();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public int C4Estado(int id)
        {
            try
            {
                var mysql = new DBConnection.ConexionMysql();
                query = String.Format("SELECT fkestado FROM pat_c4 " +
                "WHERE idc4 = '{0}'", id);
                mysql.AbrirConexion();
                MySqlCommand consulta = new MySqlCommand(query, mysql.conectar);
                MySqlDataReader buscar = consulta.ExecuteReader();
                using (buscar)
                {
                    while (buscar.Read())
                    {
                        if (!string.IsNullOrEmpty(buscar.GetString("fkestado")))
                        {
                            return int.Parse(buscar["fkestado"].ToString());
                        }
                    }
                }
                mysql.CerrarConexion();
                return 0;
            }
            catch
            {
                return 0;
            }
        }

        public bool ExisteC4(int formato, string fadn, string anio)
        {
            var mysql = new DBConnection.ConexionMysql();
            query = String.Format("SELECT fkformato_c FROM pat_c4 WHERE fkformato_c = '{0}' AND ano = '{1}' AND fadn = '{2}';", formato, anio, fadn);
            mysql.AbrirConexion();
            MySqlCommand consulta = new MySqlCommand(query, mysql.conectar);
            MySqlDataReader buscar = consulta.ExecuteReader();
            using (buscar)
            {
                while (buscar.Read())
                {
                    if (!string.IsNullOrEmpty(buscar.GetString("fkformato_c")))
                    {
                        return true;
                    }
                }
            }
            mysql.CerrarConexion();
            return false;
        }
    }
}