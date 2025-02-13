﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="查成绩.aspx.cs" Inherits="二二年三月项目.查成绩" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>查成绩</title>
    <link rel="shortcut icon" href="./image/logo.jpg" type="image/x-icon" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" StaticSubMenuIndent="16px" Width="1000px" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="登录注册" Value="登录注册" NavigateUrl="~/数登录.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="查询专业成绩" Value="查询专业成绩" NavigateUrl="~/查成绩.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="个人简历" Value="个人简历" NavigateUrl="~/个人简历.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="个人资料" Value="个人资料" NavigateUrl="~/个人资料.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/判断年月.aspx" Text="判断年月" Value="判断年月"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/日历.aspx" Text="日历" Value="日历"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/找不同.aspx" Text="找不同" Value="找不同"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/中国地图.aspx" Text="中国地图" Value="中国地图"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div class="auto-style1">
            <div class="auto-style1">
                查询专业成绩<br />
                选择专业：<asp:DropDownList ID="ddlMajor" runat="server" DataSourceID="sqsMajor" DataTextField="Major" DataValueField="Major">
                </asp:DropDownList>
            </div>
            <asp:SqlDataSource ID="sqsMajor" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Major] FROM [Student]"></asp:SqlDataSource>
            <div class="auto-style1">
                <br />
                选择课程：<asp:CheckBoxList ID="cblCourse" runat="server" DataSourceID="sqsCourse" DataTextField="CourseName" DataValueField="CourseName" RepeatColumns="4" RepeatDirection="Horizontal" RepeatLayout="Flow">
                </asp:CheckBoxList>
            </div>
            <asp:SqlDataSource ID="sqsCourse" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [CourseName] FROM [Course]"></asp:SqlDataSource>
            <div class="auto-style1">
                <br />
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="查询" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="退出" />
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <br />
            </div>
            <asp:GridView ID="gvResult" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" Width="600px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
