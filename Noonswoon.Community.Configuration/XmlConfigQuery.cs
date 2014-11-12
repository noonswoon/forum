using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using log4net;

namespace Noonswoon.Community.Configuration
{
    public class XmlConfigQuery : IXmlConfigQuery
    {
        private ILog _log = LogManager.GetLogger(typeof(XmlConfigQuery).Name);
        public IList<XmlConfig> LoadAllXmlConfigsFromDatabase()
        {
            var xmlConfigs = new List<XmlConfig>();
            var connectionString = ConfigurationManager.AppSettings["ConnectionString"];
            using (var connection = new SqlConnection(connectionString))
            using (var command = connection.CreateCommand())
            {
                command.CommandText = "SELECT * FROM XmlConfig";

                connection.Open();
                var reader = command.ExecuteReader();
                while (reader.Read())
                {
                    xmlConfigs.Add(new XmlConfig()
                                       {
                                           SourceName = Convert.ToString(reader["SourceName"]),
                                           Setting = Convert.ToString(reader["Setting"])
                                       });
                }
            }

            return xmlConfigs;
        }

        public XmlConfig GetXmlConfigFromDatabase(string sourceName)
        {
            XmlConfig xmlConfig = null;
            var connectionString = ConfigurationManager.AppSettings["connectionString"];
            using (var connection = new SqlConnection(connectionString))
            using (var command = connection.CreateCommand())
            {
                command.CommandText = "SELECT * FROM XmlConfig WHERE SourceName = @sourceName";
                command.Parameters.AddWithValue("sourceName", sourceName);

                connection.Open();
                var reader = command.ExecuteReader();
                while (reader.Read())
                {
                    xmlConfig = new XmlConfig()
                                    {
                                        SourceName = Convert.ToString(reader["SourceName"]),
                                        Setting = Convert.ToString(reader["Setting"])
                                    };
                }
            }

            return xmlConfig;
        }

        public void AddOrUpdateXmlConfig(XmlConfig xmlConfig)
        {
            if (GetXmlConfigFromDatabase(xmlConfig.SourceName) == null)
            {
                //_log.DebugFormat("add config sourceName: {0}", xmlConfig.SourceName);
                //add
                var connectionString = ConfigurationManager.AppSettings["connectionString"];
                using (var connection = new SqlConnection(connectionString))
                using (var command = connection.CreateCommand())
                {
                    command.CommandText = @"INSERT INTO XmlConfig (SourceName,Setting) 
                                        VALUES (@sourceName,@setting)";
                    command.Parameters.Add(new SqlParameter("sourceName", xmlConfig.SourceName));
                    command.Parameters.Add(new SqlParameter("setting", xmlConfig.Setting));

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
            else
            {

               // _log.DebugFormat("update config sourceName: {0}", xmlConfig.SourceName);
                //update
                var connectionString = ConfigurationManager.AppSettings["connectionString"];
                using (var connection = new SqlConnection(connectionString))
                using (var command = connection.CreateCommand())
                {
                    command.CommandText = @"UPDATE XmlConfig 
                                        SET Setting = @setting 
                                        WHERE SourceName = @sourceName";
                    command.Parameters.Add(new SqlParameter("sourceName", xmlConfig.SourceName));
                    command.Parameters.Add(new SqlParameter("setting", xmlConfig.Setting));
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}