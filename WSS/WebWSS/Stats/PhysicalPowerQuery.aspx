﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhysicalPowerQuery.aspx.cs" Inherits="WebWSS.Stats.PhysicalPowerQuery" %>

<%@ Register Src="../Common/ControlOutFile.ascx" TagName="ControlOutFile" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../img/Style.css" rel="stylesheet" type="text/css"></link>

    <script language='JavaScript' src='../img/Admin.Js'></script>

    <script type="text/javascript" src='../img/GetDate.Js'></script>

    <script type="text/javascript">
        var t_id = setInterval(animate, 20);
        var pos = 0; var dir = 2;
        var len = 0;
        function animate() {
            var elem = document.getElementById('progress');
            if (elem != null) {
                if (pos == 0)
                    len += dir;
                if (len > 32 || pos > 79)
                    pos += dir;
                if (pos > 79)
                    len -= dir;
                if (pos > 79 && len == 0)
                    pos = 0;
                elem.style.left = pos; elem.style.width = len;
            }
        }
        function remove_loading() {
            this.clearInterval(t_id);
            var targelem = document.getElementById('loader_container');
            targelem.style.display = 'none';
            targelem.style.visibility = 'hidden';
        }
    </script>

    <style>
        #loader_container
        {
            text-align: center;
            position: absolute;
            top: 40%;
            width: 100%;
            left: 0;
        }
        #loader
        {
            font-family: Tahoma, Helvetica, sans;
            font-size: 11.5px;
            color: #000000;
            background-color: #FFFFFF;
            padding: 10px 0 16px 0;
            margin: 0 auto;
            display: block;
            width: 130px;
            border: 1px solid #5a667b;
            text-align: left;
            z-index: 2;
        }
        #progress
        {
            height: 5px;
            font-size: 1px;
            width: 1px;
            position: relative;
            top: 1px;
            left: 0px;
            background-color: #8894a8;
        }
        #loader_bg
        {
            background-color: #e4e7eb;
            position: relative;
            top: 8px;
            left: 8px;
            height: 7px;
            width: 113px;
            font-size: 1px;
        }
    </style>
</head>
<body onload="remove_loading();">
    <div id="loader_container">
        <div id="loader">
            <div align="center">
                <asp:Label runat="server" Text="<%$ Resources:Language,Tip_PageLoading %>"></asp:Label></div>
            <div id="loader_bg">
                <div id="progress">
                </div>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
    <div class="main">
        <div class="itemtitle">
            <asp:Label ID="LabelTitle" runat="server" Text="商城统计>>元宝日志查询"></asp:Label>
        </div>
        <div class="search">
          <asp:Label runat="server" Text="<%$ Resources:Language,LblBigZone %>"></asp:Label>:
            <asp:DropDownList ID="DropDownListArea1" runat="server" Width="120" AutoPostBack="True"
                OnSelectedIndexChanged="DropDownListArea1_SelectedIndexChanged">
                <asp:ListItem Text="<%$ Resources:Language,LblAllBigZone %>"></asp:ListItem>
            </asp:DropDownList>
             <asp:Label runat="server" Text="<%$Resources:Language,LblService %>"></asp:Label>:<asp:DropDownList ID="DropDownListArea2" runat="server" Width="120">
                 <asp:ListItem Text="<%$ Resources:Language,LblAllZone %>"></asp:ListItem>
            </asp:DropDownList>
            &nbsp; <asp:Label runat="server" Text="<%$Resources:Language,LblQueryTime %>"></asp:Label>:<asp:TextBox ID="tboxTimeB" runat="server" Width="80px" MaxLength="10"></asp:TextBox><a
                style='cursor: pointer;' onclick='PopCalendar.show(document.getElementById("tboxTimeB"), "yyyy-mm-dd", null, null, null, "11");'><img
                    src='../img/Calendar.gif' border='0' style='padding-top: 10px' align='absmiddle'></a>
            元宝类型:<asp:DropDownList ID="ddlGoldType" runat="server">
                <asp:ListItem Text="<%$Resources:Language,LblAllSelect %>"></asp:ListItem>
                <asp:ListItem Value="10055">元宝</asp:ListItem>
                <asp:ListItem Value="10056">绑定元宝</asp:ListItem>
            </asp:DropDownList>
            <asp:Label runat="server" Text="<%$Resources:Language,LblOperateType %>"></asp:Label><asp:DropDownList ID="ddlPara1Type" runat="server">
                <asp:ListItem Text="<%$Resources:Language,LblAllSelect %>"></asp:ListItem>
                <asp:ListItem Value="0">系统兑换</asp:ListItem>
                <asp:ListItem Value="2">商城购物</asp:ListItem>
                <asp:ListItem Value="3">通过LGC 脚本提取绑定元宝</asp:ListItem>
                <asp:ListItem Value="4">玩家购买高级挂机功能</asp:ListItem>
                <asp:ListItem Value="5">通过邮件</asp:ListItem>
                <asp:ListItem Value="6">购买拍卖行道具</asp:ListItem>
                <asp:ListItem Value="7">拍卖行手续费</asp:ListItem>
                <asp:ListItem Value="8">帮会捐献</asp:ListItem>
                <asp:ListItem Value="9">押镖投保消耗</asp:ListItem>
                <asp:ListItem Value="10">镖车升级消耗</asp:ListItem>
                <asp:ListItem Value="11">离线经验</asp:ListItem>
                <asp:ListItem Value="12">GM指令生成的元宝</asp:ListItem>
                <asp:ListItem Value="13">元宝交易行挂单</asp:ListItem>
                <asp:ListItem Value="14">元宝交易行返还的</asp:ListItem>
                <asp:ListItem Value="15">元宝交易行购买的手续费</asp:ListItem>
                <asp:ListItem Value="16">兑换物品消耗</asp:ListItem>
                <asp:ListItem Value="17">命魂五择消耗</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="tboxTimeE" runat="server" Width="120px" MaxLength="10" onFocus="new WdatePicker({skin:'default',startDate:'2011-01-01',isShowClear:false,readOnly:false})"
                class="Wdate" Visible="False"></asp:TextBox>
            &nbsp; 帐户编号:<asp:TextBox ID="tboxUID" runat="server" Width="40px" MaxLength="16"></asp:TextBox>
            &nbsp; <asp:Label runat="server" Text="<%$Resources:Language,LblUserNo %>"></asp:Label>:<asp:TextBox ID="tboxCID" runat="server" Width="40px" MaxLength="16"></asp:TextBox>
            &nbsp; <asp:Label runat="server" Text="<%$Resources:Language,CDK_Remark %>"></asp:Label>:
            <asp:TextBox ID="tboxBAK" runat="server" Width="148px" 
                MaxLength="160"></asp:TextBox>
            &nbsp;
            <asp:Button ID="ButtonSearch" runat="server" Text="<%$Resources:Language,BtnQuery %>" CssClass="button" OnClick="ButtonSearch_Click" />
        </div>
        <div class="titletip">
            <h7><div id="DateSelect" runat="Server"></div>
                <uc1:ControlOutFile ID="ControlOutFile1" runat="server" />
               <asp:Label runat="server" Text="<%$ Resources:Language,LblArea %>"></asp:Label>:                <asp:Label runat="server" Text="<%$ Resources:Language,LblArea %>"></asp:Label>: <span class="tyellow"><asp:Label ID="LabelArea" runat="server" Text=" "></asp:Label></span>   <asp:Label runat="server" Text="<%$Resources:Language,LblTime %>"></asp:Label>:<span class="tyellow"><asp:Label ID="LabelTime" runat="server" Text=""></asp:Label></span></h7>
            <asp:Label ID="lblPageType" runat="server" Text="1" Visible="false"></asp:Label>
            <asp:Label ID="lblEncoding" runat="server" Text="<%$Resources:Language,LblCodeOpen %>" Visible="true"></asp:Label>
            <asp:Label ID="lblDecoding" runat="server" Text="<%$Resources:Language,LblDecodeOpen %>" Visible="false"></asp:Label>
        </div>
        <div class="gridv">
            <div id="PanelPage" runat="server" style="background-color: #005A8C; width: 96%;">
                <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server"
                    AutoGenerateColumns="False" Font-Size="12px" Width="100%" OnSorting="GridView1_Sorting"
                    CellPadding="3" BorderWidth="1px" BorderStyle="None" BackColor="White" BorderColor="#CCCCCC"
                    OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="20">
                    <Columns>
                        <asp:TemplateField HeaderText="帐户编号">
                            <ItemStyle Width="80px" />
                            <ItemTemplate>
                                <%#Eval("UID")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="<%$Resources:Language,LblRoleNo %>">
                            <ItemStyle Width="130px" />
                            <ItemTemplate>
                                <%#GetRoleName(DropDownListArea1.SelectedValue.Split(',')[1],Eval("CID").ToString())%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--       <asp:BoundField DataField="OPID" HeaderText="事件编号">
                            <ItemStyle Width="80px" />
                        </asp:BoundField>--%>
                        <asp:TemplateField HeaderText="元宝类型">
                            <ItemStyle Width="100px" />
                            <ItemTemplate>
                                <%#GetTypeName(ddlGoldType, Eval("OPID").ToString())%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="<%$Resources:Language,LblOperateType %>">
                            <ItemTemplate>
                                <%#GetTypeName(ddlPara1Type, Eval("PARA_1").ToString())%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="PARA_2" HeaderText="元宝变化值">
                            <ItemStyle Width="80px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="OP_BAK" HeaderText="<%$Resources:Language,CDK_Remark %>">
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="备注格式化">
                            <ItemTemplate>
                                <%#GetOPBakFormate(Eval("PARA_1").ToString(),Eval("OP_BAK").ToString())%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="OP_TIME" HeaderText="<%$Resources:Language,LblTime %>">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                    </Columns>
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Size="12px" HorizontalAlign="Center" Font-Bold="True"
                        ForeColor="White" />
                    <RowStyle HorizontalAlign="Center" ForeColor="#000066" />
                    <FooterStyle HorizontalAlign="Center" BackColor="#005a8c" ForeColor="#FFFFFF" Font-Size="Medium" />
                    <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="#D1DDF1" />
                </asp:GridView>
                <div style="margin: 5px 36px; text-align: right;">
                    <asp:Label ID="lblPageIndex" runat="server" Text="1" ForeColor="#FFFFFF"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="/" ForeColor="#FFFFFF"></asp:Label>
                    <asp:Label ID="lblPageCount" runat="server" Text="1" ForeColor="#FFFFFF"></asp:Label>&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="<%$Resources:Language,LblSum %>" ForeColor="#FFFFFF"></asp:Label><asp:Label
                        ID="lblCount" runat="server" Text="1" ForeColor="#FFFFFF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbtnF" runat="server" ForeColor="#FFFFFF" OnClick="lbtnF_Click"  Text="<%$Resources:Language,LblHomePage %>"></asp:LinkButton>&nbsp;
                    <asp:LinkButton ID="lbtnP" runat="server" ForeColor="#FFFFFF" OnClick="lbtnP_Click"   Text="<%$Resources:Language,LblPrviousPage %>"></asp:LinkButton>&nbsp;
                    <asp:LinkButton ID="lbtnN" runat="server" ForeColor="#FFFFFF" OnClick="lbtnN_Click"   Text="<%$Resources:Language,LblPrviousPage %>"></asp:LinkButton>&nbsp;
                    <asp:LinkButton ID="lbtnE" runat="server" ForeColor="#FFFFFF" OnClick="lbtnE_Click"     Text="<%$Resources:Language,LblEndPage %>"></asp:LinkButton>&nbsp;
                    <asp:TextBox ID="tboxPageIndex" runat="server" Width="30px" MaxLength="6">1</asp:TextBox>
                    <asp:Button ID="btnPage" runat="server" Text="<%$Resources:Language,LblGoto %>" CssClass="button" OnClick="btnPage_Click" />
                </div>
            </div>
            <asp:Label ID="lblerro" runat="server" Text="<%$Resources:Language,Tip_Nodata %>" ForeColor="#FF6600"></asp:Label>
            <span style="display: none"><asp:Label runat="server" Text="<%$Resources:Language,Tip_Sign %>"></asp:Label><asp:Label ID="lblinfo" runat="server" Text="" ForeColor="#FF6600"></asp:Label></span>
            <br />
            <br />
        </div>
    </div>
    </form>
</body>
</html>