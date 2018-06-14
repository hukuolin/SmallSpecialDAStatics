﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Text;
using System.Data;
using Coolite.Ext.Web;
using WSS.DBUtility;
using System.Data.SqlClient;
using System.Configuration;

namespace WSS.Web.Admin.GameTool
{
    /// <summary>
    /// $codebehindclassname$ 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class GameServersSave : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/json";

            var GameCode = string.Empty;
            var GameZoneID = string.Empty;

            if (!string.IsNullOrEmpty(context.Request["GameCode"]))
            {
                GameCode = context.Request["GameCode"];//游戏编号
            }
            if (!string.IsNullOrEmpty(context.Request["GameZoneID"]))
            {
                GameZoneID = context.Request["GameZoneID"];//游戏编号
            }

            GameCode = "100001";
            GameZoneID = "100001001";

            Response sr = new Response(true);


            try
            {

                //寻龙记
                if (GameCode == "100001")
                {

                    string WebSUrl = WSS.BLL.AllOther.GetWebServiceUrl(GameZoneID);
                    if (WebSUrl.Length > 10)
                    {
                        WebServiceXLJ.WebServiceGame xlj = new WebServiceXLJ.WebServiceGame();
                        xlj.Url = WebSUrl;
                        xlj.Credentials = System.Net.CredentialCache.DefaultCredentials;
                        string jsonsrequest = context.Request.Form[0].ToString();
                        xlj.SaveGameServers(jsonsrequest);
                    }
                }
            }
            catch (System.Exception e)
            {
                sr.Success = false;
                sr.Msg = e.Message;
            }


            sr.Write();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}