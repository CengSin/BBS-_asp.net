﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="foundAnswer.aspx.cs" Inherits="BBS_Application.foundAnswer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Park Computer</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        li {
            list-style: none;
        }
        <!-- 导航栏-- > .headCss {
            height: 50px;
            background-color: #eee;
        }

        .headCss .head-content {
            width: 980px;
            height: 50px;
            margin: 0 auto;
        }

            .headCss .head-content .hr {
                width: 300px;
                height: 50px;
                float: left;
            }

                .headCss .head-content .hr li {
                    float: left;
                }

            .headCss .head-content li a {
                display: inline-table;
                width: 100px;
                height: 50px;
                line-height: 50px;
                padding-left: 30px;
                text-decoration: none;
                color: #000;
            }

                .headCss .head-content li a:hover {
                    background-color: #ababab;
                    text-decoration: none;
                }

            .headCss .head-content .mid {
                width: 220px;
                height: 50px;
                line-height: 50px;
                float: left;
            }

            .headCss .head-content .lr {
                width: 200px;
                height: 50px;
                float: right;
            }

                .headCss .head-content .lr a {
                    display: inline-table;
                    width: 50px;
                    height: 50px;
                    line-height: 50px;
                }
        <!-- 我的头像 + 写文章-- > .writepageBox {
            height: 100px;
        }

        .writepage {
            width: 980px;
            height: 100px;
            margin: 0 auto;
        }

            .writepage .picture {
                width: 200px;
                height: 100px;
                background-color: green;
                float: left;
            }

            .writepage .write {
                width: 100px;
                height: 100px;
                float: right;
                margin-right: 60px;
                line-height: 100px;
            }
        <!-- datagrid-- > .datagridBox {
        }

        .datagrid {
            width: 980px;
            margin: 0 auto;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--标题栏-->
            <div class="headCss">
                <div class="head-content">
                    <div class="hr">
                        <ul>
                            <li><a href="Default.aspx">
                                <asp:Label ID="homePageLabel" runat="server" Text="首页"></asp:Label></a></li>
                            <li><a href="MyBlog.aspx">
                                <asp:Label ID="MyBlog_lbl" runat="server" Text="M博客"></asp:Label></a></li>
                        </ul>
                    </div>
                    <div class="mid">
                        <asp:TextBox Visible="false" ID="User_Need_Info" runat="server" Height="28px"></asp:TextBox>
                        <asp:Button Visible="false" ID="found_Button" runat="server" Text="搜索" BorderStyle="None" />
                    </div>
                    <div class="lr">
                        <a href="Sign_In.aspx">
                            <asp:Label ID="Sign_In" runat="server" Text="登陆"></asp:Label></a>
                        <a href="index.aspx">
                            <asp:Label ID="Register" runat="server" Text="注册"></asp:Label></a>
                    </div>
                </div>
            </div>
            <!--个人头像栏+写文章+文章转移-->
            <div class="writepageBox">
                <div class="writepage">
                    <div class="picture">
                        <asp:Image ID="Image1" runat="server" /></div>
                </div>
            </div>
            <!--datagrid看删改置顶-->
            <div class="datagridBox">
                <div class="datagrid">
                    <h3>搜索到的文章为：</h3>
                    <hr />
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table style="width: 800px; height: 200px">
                                <tr>
                                    <td>
                                        <a href='<%# DataBinder.Eval(Container.DataItem,"NoticeId", "noticeAll.aspx?id={0}")  %>' style="font-size: large;" target="_blank"><%# DataBinder.Eval(Container.DataItem, "NoticeTitle") %></a>
                                    </td>
                                    <td rowspan="2">
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/1.jpg" Height="200px" Width="200px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Width="600px"><%# DataBinder.Eval(Container.DataItem, "NoticeDetail").ToString().Length > 260?DataBinder.Eval(Container.DataItem, "NoticeDetail").ToString().Substring(0, 250)+"...":DataBinder.Eval(Container.DataItem, "NoticeDetail").ToString()%> </asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </form>
</body>
</html>



