﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BBS_Application.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Park Computer</title>
    <link href="css/HeadStyle.css" rel="stylesheet" />
    <style type="text/css">
        .MiddleCss {
            height: 300px;
            background-color: #ababab;
            width: 1200px;
            margin: 0 auto;
        }

        .BottomCss {
            margin: 0 auto;
            min-height: 600px;
            width: 1200px;
        }

        .leftCss {
            float: left;
            min-height: 600px;
            height: 950px;
            width: 800px;
        }

        .rightCss {
            float: right;
            width: 350px;
            min-height: 600px;
            height: 950px;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--导航栏-->
            <div class="headCss">
                <div class="head-content">
                    <div class="hr">
                        <ul>
                            <li><a href="HomePage.aspx">
                                <asp:Label ID="homePageLabel" runat="server" Text="首页"></asp:Label></a></li>
                            <li><a href="MyBlog.aspx">
                                <asp:Label ID="MyBlog" runat="server" Text="M博客"></asp:Label></a></li>
                            <li><a href="Category.aspx">
                                <asp:Label ID="category" runat="server" Text="分类"></asp:Label></a></li>
                        </ul>
                    </div>
                    <div class="mid">
                        <asp:TextBox ID="User_Need_Info" runat="server" Height="28px"></asp:TextBox>
                        <asp:Button ID="found_Button" runat="server" Text="搜索" BorderStyle="None" OnClick="found_Button_Click" />
                    </div>
                    <div class="lr">
                        <a id="Sign_In_a" href="Sign_In.aspx">
                            <asp:Label ID="Sign_In" runat="server" Text="登陆"></asp:Label></a>
                        <a id="Register_a" href="index.aspx">
                            <asp:Label ID="Register" runat="server" Text="注册"></asp:Label></a>
                    </div>
                </div>
            </div>
            <!--轮播图片-->

            <link href="css/global.css" rel="stylesheet" type="text/css"/>

            <style type="text/css">
                .bannerbox {
                    width: 100%;
                    position: relative;
                    overflow: hidden;
                }

                .Homebanner {
                    width: 100%;
                    position: relative;
                    height: 600px;
                    overflow: hidden;
                }

                    .Homebanner ul {
                        width: 100%;
                        position: absolute;
                        height: 600px;
                    }

                        .Homebanner ul li {
                            width: 100%;
                            height: 600px;
                            position: absolute;
                            overflow: hidden;
                        }

                            .Homebanner ul li img {
                                width: 1900px;
                                position: absolute;
                                left: 50%;
                                top: 0px;
                                display: block;
                                margin-left: -950px;
                            }

                .Homeleft, .Homeright {
                    background: #000;
                    font-family: "宋体";
                    width: 50px;
                    height: 50px;
                    line-height: 50px;
                    text-align: center;
                    font-size: 40px;
                    color: #fff;
                    position: absolute;
                    top: 45%;
                    cursor: pointer;
                    transition: all .2s ease;
                    opacity: 0;
                    z-index: 899999;
                }

                .Homeleft {
                    left: -60px;
                }

                .Homeright {
                    right: -60px;
                }

                .bannerbox:hover .Homeleft {
                    left: 0px;
                    opacity: 1;
                }

                .bannerbox:hover .Homeright {
                    right: 0px;
                    opacity: 1;
                }

                .Homedot {
                    position: absolute;
                    width: 100%;
                    text-align: center;
                    z-index: 999;
                    bottom: 60px;
                }

                    .Homedot a {
                        display: inline-block;
                        margin: 0px 5px;
                        height: 12px;
                        width: 12px;
                        line-height: 1000px;
                        overflow: hidden;
                        background: url(img/index_229.png) no-repeat;
                    }

                        .Homedot a.cur {
                            background: url(img/index_228.png) no-repeat;
                        }

                .Homebannertext {
                    position: absolute;
                    left: 0px;
                    top: 0px;
                    width: 100%;
                    height: 100%;
                }

                    .Homebannertext img.bigimg {
                        transform: translateY(100px);
                        -moz-transform: translateY(100px);
                        -ms-transform: translateY(100px);
                        -o-transform: translateY(100px);
                        -webkit-transform: translateY(100px);
                    }

                    .Homebannertext dl.bannerone {
                        position: absolute;
                        width: 1180px;
                        left: 50%;
                        margin-left: -590px;
                        top: 251px;
                        text-align: center;
                        z-index: 9999;
                    }

                        .Homebannertext dl.bannerone dt {
                            float: right;
                            font-size: 45px;
                            width: 750px;
                            height: 80px;
                            margin-left: 100px;
                            line-height: 75px;
                            color: #fff;
                            background: #eb3900;
                            transform: translateY(100px);
                            -moz-transform: translateY(100px);
                            -ms-transform: translateY(100px);
                            -o-transform: translateY(100px);
                            -webkit-transform: translateY(100px);
                        }

                        .Homebannertext dl.bannerone dd {
                            float: right;
                            font-size: 29px;
                            color: #fff;
                            background: #000;
                            width: 360px;
                            height: 60px;
                            line-height: 60px;
                            margin-right: 45px;
                            transform: translateY(100px);
                            -moz-transform: translateY(100px);
                            -ms-transform: translateY(100px);
                            -o-transform: translateY(100px);
                            -webkit-transform: translateY(100px);
                        }

                    .Homebannertext dl.bannertwo {
                        position: absolute;
                        width: 1180px;
                        left: 50%;
                        top: 0px;
                        color: #fff;
                        margin-left: -590px;
                        z-index: 9999;
                    }

                        .Homebannertext dl.bannertwo dt {
                            padding-top: 110px;
                            position: relative;
                            transform: translateY(100px);
                            -moz-transform: translateY(100px);
                            -ms-transform: translateY(100px);
                            -o-transform: translateY(100px);
                            -webkit-transform: translateY(100px);
                        }

                            .Homebannertext dl.bannertwo dt h3 {
                                font-size: 50px;
                                line-height: 60px;
                                font-weight: 700;
                                position: relative;
                            }

                            .Homebannertext dl.bannertwo dt p {
                                font-size: 20px;
                                position: relative;
                                padding-top: 20px;
                            }

                    .Homebannertext dl.bannerthree {
                        position: absolute;
                        width: 1220px;
                        left: 50%;
                        margin-left: -610px;
                        top: 0px;
                    }

                        .Homebannertext dl.bannerthree dt {
                            float: left;
                            position: relative;
                            transform: translateX(100px);
                            -moz-transform: translateX(100px);
                            -ms-transform: translateX(100px);
                            -o-transform: translateX(100px);
                            -webkit-transform: translateX(100px);
                        }

                        .Homebannertext dl.bannerthree img {
                            display: block;
                            position: relative;
                            width: auto;
                            height: auto;
                            left: 0px;
                            margin: 0px;
                            top: 0px;
                        }

                        .Homebannertext dl.bannerthree dd {
                            width: 500px;
                            float: left;
                            color: #fff;
                            padding-top: 170px;
                            position: relative;
                            padding-left: 25px;
                            transform: translateX(100px);
                            -moz-transform: translateX(100px);
                            -ms-transform: translateX(100px);
                            -o-transform: translateX(100px);
                            -webkit-transform: translateX(100px);
                        }

                            .Homebannertext dl.bannerthree dd h3 {
                                font-size: 55px;
                                font-weight: 700;
                                line-height: 70px;
                            }

                            .Homebannertext dl.bannerthree dd p {
                                font-size: 20px;
                                line-height: 30px;
                            }

                .bannereffect {
                    opacity: 0;
                    filter: alpha(opacity=0);
                }

                .bannertime {
                    transition: all .8s ease-in-out;
                    -moz-transition: all .8s ease-in-out;
                    -ms-transition: all .8s ease-in-out;
                    -o-transition: all .8s ease-in-out;
                    -webkit-transition: all .8s ease-in-out;
                }

                .bannertime1 {
                    transition: all .8s ease-in-out .2s;
                    -moz-transition: all .8s ease-in-out .2s;
                    -ms-transition: all .8s ease-in-out .2s;
                    -o-transition: all .8s ease-in-out .2s;
                    -webkit-transition: all .8s ease-in-out .2s;
                }

                .bannertime2 {
                    transition: all 1s ease-in-out .2s;
                    -moz-transition: all 1s ease-in-out .2s;
                    -ms-transition: all 1s ease-in-out .2s;
                    -o-transition: all 1s ease-in-out 2s;
                    -webkit-transition: all 1s ease-in-out .2s;
                }

                .Homebanner li.cur .Homebannertext img.bigimg {
                    transform: translateY(0px);
                    -moz-transform: translateY(0px);
                    -ms-transform: translateY(0px);
                    -o-transform: translateY(0px);
                    -webkit-transform: translateY(0px);
                }

                .Homebanner li.cur .Homebannertext dl.bannerone dt {
                    transform: translateY(0px);
                    -moz-transform: translateY(0px);
                    -ms-transform: translateY(0px);
                    -o-transform: translateY(0px);
                    -webkit-transform: translateY(0px);
                }

                .Homebanner li.cur .Homebannertext dl.bannerone dd {
                    transform: translateY(0px);
                    -moz-transform: translateY(0px);
                    -ms-transform: translateY(0px);
                    -o-transform: translateY(0px);
                    -webkit-transform: translateY(0px);
                }

                .Homebanner li.cur .Homebannertext dl.bannertwo dt {
                    transform: translateY(0px);
                    -moz-transform: translateY(0px);
                    -ms-transform: translateY(0px);
                    -o-transform: translateY(0px);
                    -webkit-transform: translateY(0px);
                }

                .Homebanner li.cur .Homebannertext dl.bannerthree dt {
                    transform: translateX(0px);
                    -moz-transform: translateX(0px);
                    -ms-transform: translateX(0px);
                    -o-transform: translateX(0px);
                    -webkit-transform: translateX(0px);
                }

                .Homebanner li.cur .Homebannertext dl.bannerthree dd {
                    transform: translateX(0px);
                    -moz-transform: translateX(0px);
                    -ms-transform: translateX(0px);
                    -o-transform: translateX(0px);
                    -webkit-transform: translateX(0px);
                }

                .Homebanner li.cur .bannereffect {
                    opacity: 1;
                    filter: alpha(opacity=100);
                }

                .Homebanner li.cur1 .bannertime {
                    transition: all .4s linear .2s;
                    -moz-transition: all .4s linear .2s;
                    -ms-transition: all .4s linear .2s;
                    -o-transition: all .4s linear .2s;
                    -webkit-transition: all .4s linear .2s;
                }

                .Homebanner li.cur1 .bannertime1 {
                    transition: all .4s linear .1s;
                    -moz-transition: all .4s linear .1s;
                    -ms-transition: all .4s linear .1s;
                    -o-transition: all .4s linear .1s;
                    -webkit-transition: all .4s linear .1s;
                }

                .Homebanner li.cur1 .bannertime2 {
                    transition: all .4s linear;
                    -moz-transition: all .4s linear;
                    -ms-transition: all .4s linear;
                    -o-transition: all .4s linear;
                    -webkit-transition: all .4s linear;
                }

                .Homebanner li.cur1 .Homebannertext img.bigimg {
                    transform: translateY(100px);
                    -moz-transform: translateY(100px);
                    -ms-transform: translateY(100px);
                    -o-transform: translateY(100px);
                    -webkit-transform: translateY(100px);
                }

                .Homebanner li.cur1 .Homebannertext dl.bannerone dt {
                    transform: translateY(100px);
                    -moz-transform: translateY(100px);
                    -ms-transform: translateY(100px);
                    -o-transform: translateY(100px);
                    -webkit-transform: translateY(100px);
                }

                .Homebanner li.cur1 .Homebannertext dl.bannerone dd {
                    transform: translateY(100px);
                    -moz-transform: translateY(100px);
                    -ms-transform: translateY(100px);
                    -o-transform: translateY(100px);
                    -webkit-transform: translateY(100px);
                }

                .Homebanner li.cur1 .Homebannertext dl.bannertwo dt {
                    transform: translateY(100px);
                    -moz-transform: translateY(100px);
                    -ms-transform: translateY(100px);
                    -o-transform: translateY(100px);
                    -webkit-transform: translateY(100px);
                }

                .Homebanner li.cur1 .Homebannertext dl.bannerthree dt {
                    transform: translateX(100px);
                    -moz-transform: translateX(100px);
                    -ms-transform: translateX(100px);
                    -o-transform: translateX(100px);
                    -webkit-transform: translateX(100px);
                }

                .Homebanner li.cur1 .Homebannertext dl.bannerthree dd {
                    transform: translateX(100px);
                    -moz-transform: translateX(100px);
                    -ms-transform: translateX(100px);
                    -o-transform: translateX(100px);
                    -webkit-transform: translateX(100px);
                }

                .Homebanner li.cur1 .bannereffect {
                    opacity: 0;
                    filter: alpha(opacity=0);
                }


                .index_btn {
                    width: 100%;
                    position: absolute;
                    height: 40px;
                    top: 560px;
                    z-index: 9999;
                    background: #191919;
                }

                    .index_btn ul {
                        margin: 0px auto;
                        padding: 0px;
                        width: 1180px;
                    }

                        .index_btn ul li {
                            float: left;
                            width: 295px;
                            height: 40px;
                            position: relative;
                        }

                            .index_btn ul li span {
                                position: relative;
                                z-index: 999;
                                width: 294px;
                                display: block;
                                height: 40px;
                            }

                                .index_btn ul li span a {
                                    display: block;
                                    width: 294px;
                                    color: #FFF;
                                    background: #191919;
                                    cursor: pointer;
                                    font-size: 14px;
                                    text-align: center;
                                    line-height: 40px;
                                    border-right: 1px solid #a7a7a7;
                                    float: left;
                                    height: 40px;
                                }

                                    .index_btn ul li span a:hover {
                                        color: #FFF;
                                        background: #e60012;
                                    }

                                    .index_btn ul li span a.cur {
                                        border: none;
                                        width: 295px;
                                    }

                            .index_btn ul li em {
                                display: inline-block;
                                height: 40px;
                                padding-left: 30px;
                            }

                                .index_btn ul li em.btn {
                                    background: url(img/btn1.png) no-repeat left center;
                                }

                                .index_btn ul li em.btn1 {
                                    background: url(img/btn3.png) no-repeat left center;
                                }

                                .index_btn ul li em.btn2 {
                                    background: url(img/btn4.png) no-repeat left center;
                                }

                                .index_btn ul li em.btn3 {
                                    background: url(img/btn2.png) no-repeat left center;
                                }

                .index_btnbox {
                    width: 295px;
                    height: 260px;
                    background: #FFF;
                    position: absolute;
                    top: 0px;
                    left: 0px;
                    padding: 20px 0px 0px 0px;
                }

                    .index_btnbox img {
                        display: block;
                        margin: auto;
                    }

                    .index_btnbox p {
                        margin: 0px;
                        padding: 20px 0px 0px 19px;
                    }

                        .index_btnbox p a {
                            display: block;
                            float: left;
                            width: 130px;
                            padding-bottom: 5px;
                            line-height: 24px;
                        }
            </style>

            <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
            <script type="text/javascript" src="js/banner.js"></script>
            <script type="text/javascript">
                $(document).ready(function () {

                    $(".index_btn li").hover(function () {
                        $(this).find("div").stop(true).animate({ top: -280 }, 300);
                    }, function () {
                        $(this).find("div").stop(true).animate({ top: -0 }, 300);
                    });

                });
            </script>

            <div class="bannerbox">

                <div class="Homebanner">
                    <ul>
                        <li class="Load cur" style="z-index: 99">
                            <img src="img/banner2016.jpg" alt=""/>
                            <div class="Homebannertext">
                                <img src="img/banner2016.png" class="bannereffect bannertime bigimg"/>
                                <dl class="bannerone clearfix">
                                    <dt class="bannereffect bannertime1">BBS论坛<b>第一品牌</b>·Park Computer
                                    </dt>
                                    <dd class="bannereffect bannertime2">交换编程思想
                                    </dd>
                                </dl>
                            </div>
                        </li>
                        <li class="Load">
                            <img src="img/banner02.jpg" alt=""/>
                            <div class="Homebannertext">
                                <img src="img/02.png" class="bannereffect bannertime bigimg"/>
                                <dl class="bannertwo clearfix">
                                    <dt class="bannereffect bannertime1">
                                        <h3>专业的BBS信息论坛</h3>
                                        <p>更加方便快捷的网页交流方式</p>
                                    </dt>
                                </dl>
                            </div>
                        </li>
                        <li class="Load">
                            <img src="img/03.jpg" alt=""/>
                            <div class="Homebannertext">
                                <dl class="bannerthree clearfix">
                                    <dt class="bannereffect bannertime">
                                        <img src="img/03-1.png" alt=""/></dt>
                                    <dd class="bannereffect bannertime1">
                                        <h3>持续追求</h3>
                                        <p>为了能使计算机信息更有效率的传播，我们创立了此论坛！</p>
                                    </dd>
                                </dl>
                            </div>
                        </li>
                    </ul>
                    <div class="Homeleft"><</div>
                    <div class="Homeright">></div>
                    <div class="Homedot"><a href="javascript:;" class="cur">1</a><a href="javascript:;">2</a><a href="javascript:;">3</a></div>
                </div>
            <!--博客显示-->
            <div class="BottomCss">
                <!--http://localhost:33013/Default.aspx  合并两个项目中的不同网页-->
                <iframe id="ifrID_left" src="http://localhost:23307/InsertHomePage.aspx" scrolling="No" style="border: none;" class="leftCss"></iframe>
                <!--http://localhost:13374/rightPage_Home.aspx 合并两个项目中的不同网页-->
                <iframe id="ifrID_right" src="http://localhost:23307/rightPage_Home.aspx" scrolling="No" style="border: none;" class="rightCss"></iframe>
            </div>
        </div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="如有建议请联系管理员：1392982138@qq.com"></asp:Label>
            </div>
      </div>
    </form>
</body>
</html>
