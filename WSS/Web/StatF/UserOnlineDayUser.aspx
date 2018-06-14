﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserOnlineDayUser.aspx.cs"
    Inherits="WSS.Web.StatF.UserOnlineDayUser" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="WSS.DBUtility" %>
<%@ Import Namespace="InfoSoftGlobal" %>
<%@ Register Assembly="Coolite.Ext.Web" Namespace="Coolite.Ext.Web" TagPrefix="ext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>统计系统</title>

    <script type="text/javascript" src="FusionCharts/FusionCharts.js"></script>

    <script type="text/javascript">
        var showResult = function(btn) {
            Ext.example.msg('Button Click', 'You clicked the {0} button', btn);
        };

        var showResultText = function(btn, text) {
            Ext.example.msg('Button Click', 'You clicked the {0} button and entered the text "{1}".', btn, text);
        };

        var submitValue = function(grid, hiddenFormat, format) {
            hiddenFormat.setValue(format);
            grid.submitData(false);
        }

        function exportChart(exportFormat) {
            if (FusionCharts("mychart").exportChart)
                FusionCharts("mychart").exportChart({ "exportFormat": exportFormat });
            else
                Ext.Msg.alert('提示', '请等待图表加载完毕...');
        }
        function updateChart(xmlstr) {
            FusionCharts("mychart").setDataXML(xmlstr);
        }
    </script>

    <script runat="server">
        string ConnStr = System.Configuration.ConfigurationManager.AppSettings["ConnectionStringDigGameDB"];
        DataSet ds;
        StringBuilder xmlData = new StringBuilder();
        string chartitle = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                this.FromDate.Value = DateTime.Now.AddDays(-300).ToShortDateString();
                this.ToDate.Value = DateTime.Now.ToShortDateString();
                SetChart();
            }

        }
        private void SetChart()
        {

            string sql = @"SELECT F_ID, F_Year, F_Month, F_Day, F_BigZone, F_ZoneID, F_LoginNGSID, F_ACU, F_PCU, F_PCUTime FROM T_GameOnlineBaseDig_Day WHERE  1=1 and cast(cast(F_Year as varchar(4))+'-'+cast(F_Month as varchar(2))+'-'+cast(F_Day as varchar(2)) as datetime) >='" + this.FromDate.Value + "'  and cast(cast(F_Year as varchar(4))+'-'+cast(F_Month as varchar(2))+'-'+cast(F_Day as varchar(2)) as datetime) <='" + this.ToDate.Value + "'";

            sql = @"SELECT max(F_Year) as F_Year,max(F_Month) as F_Month,max(F_Day) as F_Day, sum(F_LoginNum) as F_LoginNum, sum(F_LoginIpNum) as F_LoginIpNum, sum(F_ExitNum) as F_ExitNum, sum(F_ExitIpNum) as F_ExitIpNum, sum(F_OnlineNum) as F_OnlineNum, sum(F_OnlineIpNum) as F_OnlineIpNum, sum(F_OnlineTime) as F_OnlineTime
FROM         T_GameOnlineBaseDig WHERE  1=1 and cast(cast(F_Year as varchar(4))+'-'+cast(F_Month as varchar(2))+'-'+cast(F_Day as varchar(2)) as datetime) >='" + this.FromDate.Value + "'  and cast(cast(F_Year as varchar(4))+'-'+cast(F_Month as varchar(2))+'-'+cast(F_Day as varchar(2)) as datetime) <='" + this.ToDate.Value + "' group by cast(cast(F_Year as varchar(4))+'-'+cast(F_Month as varchar(2))+'-'+cast(F_Day as varchar(2)) as datetime) order by cast(cast(F_Year as varchar(4))+'-'+cast(F_Month as varchar(2))+'-'+cast(F_Day as varchar(2)) as datetime) asc";

            DbHelperSQLP sp = new DbHelperSQLP();
            sp.connectionString = ConnStr;
            ds = sp.Query(sql);

            if (ds == null)
            {
                return;
            }

            chartitle = "用户活动走势图[" + Convert.ToDateTime(this.FromDate.Value).ToShortDateString() + "至" + Convert.ToDateTime(this.ToDate.Value).ToShortDateString() + "]";


            xmlData.Append("<chart caption='" + chartitle + "' xAxisName='日期' yAxisName='数量' showValues= '0' numberPrefix=''  aboutMenuItemLabel='关于 神龙游' aboutMenuItemLink='#' exportEnabled='1' exportAction='Download' exportShowMenuItem = '0'  exportfilename='SLYCharts' exportAtClient='0' exportHandler='Export_Handler/FCExporter.aspx' exportDialogMessage='数据转换中,请稍候...' animation='1'  numVDivLines='10'  >");

            string str0 = "<categories>";
            string str1 = "<dataset seriesName='登录次数'>";
            string str2 = "<dataset seriesName='登录IP数'>";
            string str3 = "<dataset seriesName='退出次数'>";
            string str4 = "<dataset seriesName='退出IP数'>";
            string str5 = "<dataset seriesName='平均在线人数'>";
            string str6 = "<dataset seriesName='在线IP数'>";
            string str7 = "<dataset seriesName='总在线时长'>";

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                DateTime dateS = Convert.ToDateTime(dr["F_Month"] + "-" + dr["F_Month"] + "-" + dr["F_Day"] + "");
                str0 += " <category label='" + dateS.ToString("MM-dd周ddd") + "' />";
                str1 += "<set value='" + dr["F_LoginNum"] + "' />";
                str2 += "<set value='" + dr["F_LoginIpNum"] + "' />";
                str3 += "<set value='" + dr["F_ExitNum"] + "' />";
                str4 += "<set value='" + dr["F_ExitIpNum"] + "' />";
                str5 += "<set value='" + dr["F_OnlineNum"] + "' />";
                str6 += "<set value='" + dr["F_OnlineIpNum"] + "' />";
                str7 += "<set value='" + dr["F_OnlineTime"] + "' />";

            }
            str0 += " </categories>";
            str1 += "</dataset>";
            str2 += "</dataset>";
            str3 += "</dataset>";
            str4 += "</dataset>";
            str5 += "</dataset>";
            str6 += "</dataset>";
            str7 += "</dataset>";

            str7 = "";

            //foreach (ListItem ck in CheckBoxList1.Items)
            //{
            //    if (!ck.Selected)
            //    {
            //        switch (ck.Value)
            //        {
            //            case "登录次数":
            //                str1 = "";
            //                break;
            //            case "登录IP数":
            //                str2 = "";
            //                break;
            //            case "退出次数":
            //                str3 = "";
            //                break;
            //            case "退出IP数":
            //                str4 = "";
            //                break;
            //            case "在线人数":
            //                str5 = "";
            //                break;
            //            case "在线IP数":
            //                str6 = "";
            //                break;
            //            case "在线时长":
            //                str7 = "";
            //                break;
            //        }
            //    }
            //}


            xmlData.Append(str0 + str1 + str2 + str3 + str4 + str5 + str6 + str7);

            xmlData.Append("</chart>");

            //FusionCharts.SetRenderer("javascript");
            // FusionCharts.SetRenderer("flash");

            Literal1.Text = FusionCharts.RenderChart("FusionCharts/MSLine.swf?ChartNoDataText=提示:没有相关数据,无法生成图表!", "", xmlData.ToString(), "mychart", "1000", "500", false, true);



            Store1.DataSource = ds.Tables[0].DefaultView;
            Store1.DataBind();
        }
        [AjaxMethod]
        public string GetXmlstr1()
        {
            SetChart();
            return xmlData.ToString();
        }
        protected void MyData_Refresh(object sender, StoreRefreshDataEventArgs e)
        {
            SetChart();
        }

        protected void SaveExcel(object sender, EventArgs e)
        {
            SetChart();
            SetExcelFromData(ds.Tables[0], chartitle);
        }

        public void SetExcelFromData(System.Data.DataTable dt, string FileName)
        {
            string data = FileName + "\n";

            string[] colms = { "年|F_Year", "月|F_Month", "日|F_Day", "大区|F_BigZone", "战区|F_ZoneID", "战线|F_LoginNGSID", "平均在线|F_ACU", "最高在线|F_PCU", "最高在线时间|F_PCUTime" };


            //写出列名 
            foreach (DataColumn column in dt.Columns)
            {
                //data += column.ColumnName + "", "";
                foreach (string colm in colms)
                {
                    if (colm.Split('|')[1] == column.ColumnName)
                    {
                        data += colm.Split('|')[0] + ",";
                        break;
                    }
                }
            }
            data += "\n";

            //写出数据 
            foreach (DataRow row in dt.Rows)
            {
                foreach (DataColumn column in dt.Columns)
                {
                    //data += row[column].ToString() + ", ";
                    foreach (string colm in colms)
                    {
                        if (colm.Split('|')[1] == column.ColumnName)
                        {
                            data += row[column].ToString() + ",";
                            break;
                        }
                    }

                }
                data += "\n";
            }
            data += "\n";

            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + Context.Server.UrlEncode(FileName) + ".csv");
            Response.ContentType = "application/ms-excel";
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            Response.Write(data);
            Response.End();
        }


        public void SetExcelFromData1(System.Data.DataSet ds, string FileName)
        {
            string data = "";
            //data = ds.DataSetName + "\n";

            foreach (DataTable tb in ds.Tables)
            {
                //data += tb.TableName + "\n";
                data += "<table cellspacing=\"0\" cellpadding=\"5\" rules=\"all\" border=\"1\">";
                //写出列名
                data += "<tr style=\"font-weight: bold; white-space: nowrap;\">";
                foreach (DataColumn column in tb.Columns)
                {
                    data += "<td>" + column.ColumnName + "</td>";
                }
                data += "</tr>";

                //写出数据
                foreach (DataRow row in tb.Rows)
                {
                    data += "<tr>";
                    foreach (DataColumn column in tb.Columns)
                    {
                        if (column.ColumnName.Equals("证件编号") || column.ColumnName.Equals("报名编号"))
                            data += "<td style=\"vnd.ms-excel.numberformat:@\">" + row[column].ToString() + "</td>";
                        else
                            data += "<td>" + row[column].ToString() + "</td>";
                    }
                    data += "</tr>";
                }
                data += "</table>";
            }

            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "GB2312";
            //Response.Charset = "UTF-8";
            Response.AppendHeader("Content-Disposition", "attachment;filename=" + FileName + System.DateTime.Now.ToString("_yyMMdd_hhmm") + ".xls");
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");//设置输出流为简体中文
            Response.ContentType = "application/ms-excel";//设置输出文件类型为excel文件。 
            EnableViewState = false;
            Response.Write(data);
            Response.End();


        }

        /// <summary>
        /// Delete special symbol
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public string DelSpecialStr(string str)
        {
            string result = str;
            string[] strQuota = { "~", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "`", ";", "'", ",", ".", "/", ":", "/,", "<", ">", "?" };
            for (int i = 0; i < strQuota.Length; i++)
            {
                if (result.IndexOf(strQuota[i]) > -1)
                    result = result.Replace(strQuota[i], "");
            }
            return result;
        }

        
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <ext:ScriptManager ID="ScriptManager1" runat="server" StateProvider="None"  CleanResourceUrl="False" />
    <ext:Store ID="Store1" runat="server" OnRefreshData="MyData_Refresh">
        <Reader>
            <ext:JsonReader ReaderID="F_ID">
                <Fields>
                    <ext:RecordField Name="F_ID" Type="int" />
                    <ext:RecordField Name="F_Year" Type="int" />
                    <ext:RecordField Name="F_Month" Type="int" />
                    <ext:RecordField Name="F_Day" Type="int" />
                    <ext:RecordField Name="F_BigZone" Type="String" />
                    <ext:RecordField Name="F_ZoneID" Type="String" />
                    <ext:RecordField Name="F_LoginNGSID" Type="String" />
                    <ext:RecordField Name="F_ACU" Type="int" />
                    <ext:RecordField Name="F_PCU" Type="int" />
                    <ext:RecordField Name="F_PCUTime" Type="String" />
                </Fields>
            </ext:JsonReader>
        </Reader>
        <Listeners>
            <LoadException Handler="Ext.Msg.alert('数据加载失败,请稍候重试', e.message )" />
        </Listeners>
    </ext:Store>
    <ext:ViewPort ID="ViewPort1" runat="server">
        <Body>
            <ext:BorderLayout ID="BorderLayout1" runat="server">
                <North MarginsSummary="5 5 5 5">
                    <ext:Panel ID="Panel1" runat="server" Title="描述" Height="60" BodyStyle="padding: 5px;"
                        Frame="true" Icon="Information">
                        <Body>
                           用户活动走势图  &nbsp;&nbsp;&nbsp;ACU:平均在线 PCU:是高在线 &nbsp;[统计日期默认为最近30天]
                        </Body>
                    </ext:Panel>
                </North>
                <Center MarginsSummary="0 5 0 5">
                    <ext:TabPanel ID="TabPanel1" runat="server">
                        <TopBar>
                            <ext:Toolbar ID="Toolbar2" runat="server" BodyStyle="padding:15px;">
                                <Items>
                                    <ext:Label ID="Label11" Height="30" Text="开始日期:&nbsp;" runat="server" />
                                    <ext:DateField runat="server" ID="FromDate" Vtype="daterange" AllowBlank="false"
                                        FieldLabel="To">
                                    </ext:DateField>
                                    <ext:Label ID="Label13" Text="&nbsp;结束日期:&nbsp;" runat="server" />
                                    <ext:DateField runat="server" ID="ToDate" Vtype="daterange" AllowBlank="false" FieldLabel="From">
                                        <Listeners>
                                            <Render Handler="#{FromDate}.endDateField = '#{ToDate}';this.startDateField = '#{FromDate}';#{FromDate}.isValid()" />
                                        </Listeners>
                                    </ext:DateField>
                                    <ext:Label ID="Label1" Text="&nbsp;" runat="server" />
                                    <ext:Button ID="Button1" runat="server" Text="统计" Icon="ApplicationViewGallery">
                                        <Listeners>
                                            <Click Handler="if(#{FromDate}.isValid() && #{ToDate}.isValid()){ Coolite.AjaxMethods.GetXmlstr1({success: function(result){updateChart(result);},eventMask: {showMask: true,minDelay: 500,msg:'正在获取数据并执行操作...',customtarget:'TabPanel1'}});}else Ext.Msg.alert('提示', '请确认日期填写符合要求!');" />
                                        </Listeners>
                                    </ext:Button>
                                    <%--<ext:ToolbarFill ID="ToolbarFill2" runat="server" />--%>
                                    <ext:Button ID="Button5" runat="server" Text="刷新" Icon="ArrowRefresh">
                                        <Listeners>
                                            <Click Handler="Coolite.AjaxMethods.GetXmlstr1({success: function(result){updateChart(result);},eventMask: {showMask: true,minDelay: 500,msg:'正在获取数据并执行操作...',customtarget:'TabPanel1'}});" />
                                        </Listeners>
                                    </ext:Button>
                                    <ext:Button ID="Button6" runat="server" Text="导出Excel" Icon="PageExcel" AutoPostBack="True"
                                        OnClick="SaveExcel">
                                    </ext:Button>
                                    <ext:Button ID="Button7" runat="server" Text="导出图片" Icon="Picture">
                                        <Listeners>
                                            <Click Handler="JavaScript:#{TabPanel1}.setActiveTab('Tab1');exportChart('PNG')" />
                                        </Listeners>
                                    </ext:Button>
                                </Items>
                            </ext:Toolbar>
                        </TopBar>
                        <Tabs>
                            <ext:Tab ID="Tab1" runat="server" Title="折线图" Icon="ChartCurve" AutoScroll="true"
                                BodyStyle="padding: 2px;">
                                <Body>
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                </Body>
                            </ext:Tab>
                            <ext:Tab ID="Tab2" runat="server" Title="数据" Icon="DatabaseGo" BodyStyle="padding: 2px;">
                                <Body>
                                    <%-- <ext:Panel ID="Panel3" runat="server" Height="300" Header="false">
                                        <Body>--%>
                                    <ext:FitLayout ID="FitLayout2" runat="server">
                                        <ext:GridPanel ID="GridPanel2" runat="server" Title="" StoreID="Store1" Border="false"
                                            SelectionMemory="Disabled" TrackMouseOver="True" AutoExpandColumn="F_PCUTime">
                                            <ColumnModel ID="ColumnModel2" runat="server">
                                                <Columns>
                                                    <ext:Column ColumnID="F_Year" DataIndex="F_Year" Header="年">
                                                    </ext:Column>
                                                    <ext:Column DataIndex="F_Month" Header="月">
                                                    </ext:Column>
                                                    <ext:Column DataIndex="F_Day" Header="日">
                                                    </ext:Column>
                                                    <ext:Column DataIndex="F_BigZone" Header="大区">
                                                    </ext:Column>
                                                    <ext:Column DataIndex="F_ZoneID" Header="战区">
                                                    </ext:Column>
                                                    <ext:Column DataIndex="F_LoginNGSID" Header="战线">
                                                    </ext:Column>
                                                    <ext:Column DataIndex="F_ACU" Header="平均在线">
                                                    </ext:Column>
                                                    <ext:Column DataIndex="F_PCU" Header="最高在线">
                                                    </ext:Column>
                                                    <ext:Column DataIndex="F_PCUTime" Header="最高在线发生时间">
                                                    </ext:Column>
                                                </Columns>
                                            </ColumnModel>
                                            <SelectionModel>
                                                <ext:RowSelectionModel ID="RowSelectionModel2" runat="server" />
                                            </SelectionModel>
                                            <BottomBar>
                                                <ext:PagingToolbar ID="PagingToolBar2" runat="server" PageSize="20" StoreID="Store1"
                                                    DisplayInfo="false" />
                                            </BottomBar>
                                            <LoadMask ShowMask="true" />
                                        </ext:GridPanel>
                                    </ext:FitLayout>
                                    <%--</Body>
                                    </ext:Panel>--%>
                                </Body>
                            </ext:Tab>
                        </Tabs>
                    </ext:TabPanel>
                </Center>
            </ext:BorderLayout>
        </Body>
    </ext:ViewPort>
    </form>
</body>
</html>