<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <title>标准图形符号数据库系统</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/plugins/bootstrap-table/bootstrap-table.min.css">
    <script src="${ctx}/static/plugins/jquery/jquery-1.9.1.min.js"></script>
    <script src="${ctx}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="${ctx}/static/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <!--[if lt IE 9]>
    <script src="${ctx}/static/source/js/html5shiv.min.js"></script>
    <script src="${ctx}/static/source/js/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        body{margin:0;padding:0;overflow-x:hidden;}
        html, body{height:100%;}
        img{border:none;}
        *{font-family:'微软雅黑';font-size:12px;color:#626262;}
        dl,dt,dd{display:block;margin:0;}
        a{text-decoration:none;}

        /*left*/
        .leftsidebar_box{width:160px;height:auto !important;overflow:visible !important;position:fixed;height:100% !important;background-color:#3992d0;}
        .line{height:2px;width:100%;background-image:url(${ctx}/static/source/image/left/line_bg.png);background-repeat:repeat-x;}
        .leftsidebar_box dt{padding-left:40px;padding-right:10px;background-repeat:no-repeat;background-position:10px center;color:#f5f5f5;font-size:14px;position:relative;line-height:48px;cursor:pointer;}
        .leftsidebar_box dd{background-color:#317eb4;padding-left:40px;}
        .leftsidebar_box dd a{color:#f5f5f5;line-height:20px;}
        .leftsidebar_box dt img{position:absolute;right:10px;top:20px;}
        .system_log dt{background-image:url(${ctx}/static/source/image/left/system.png)}
        .custom dt{background-image:url(${ctx}/static/source/image/left/custom.png)}
        .channel dt{background-image:url(${ctx}/static/source/image/left/channel.png)}
        .app dt{background-image:url(${ctx}/static/source/image/left/app.png)}
        .cloud dt{background-image:url(${ctx}/static/source/image/left/cloud.png)}
        .syetem_management dt{background-image:url(${ctx}/static/source/image/left/syetem_management.png)}
        .source dt{background-image:url(${ctx}/static/source/image/left/source.png)}
        .statistics dt{background-image:url(${ctx}/static/source/image/left/statistics.png)}
        .leftsidebar_box dl dd:last-child{padding-bottom:10px;}

        .leftsidebar_box{
            padding-top: 50px;
        }
        .content{
            padding-top: 50px;
            height: 100%;
            overflow: visible !important;
            margin-left: 180px;

        }
    </style>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">标准图形符号数据库系统</a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Amayadream <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">修改密码</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">注销</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="leftsidebar_box">
        <div class="line"></div>
        <dl class="system_log">
            <dt onClick="changeImage()">标准符号<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">标志用符号</a></dd>
            <dd><a href="#">设备用符号</a></dd>
            <dd><a href="#">技术文件用符号</a></dd>
        </dl>

        <dl class="custom">
            <dt onClick="changeImage()">非标准符号<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">非标准符号</a></dd>
        </dl>

        <dl class="channel">
            <dt>注册符号<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">标志用符号</a></dd>
            <dd><a href="#">设备用符号</a></dd>
            <dd><a href="#">技术文件用符号</a></dd>
        </dl>

        <dl class="app">
            <dt onClick="changeImage(this)">标准简介<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">标准简介</a></dd>
        </dl>

        <dl class="cloud">
            <dt>系统配置<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">特征配置</a></dd>
            <dd><a href="#">标准配置</a></dd>
            <dd><a href="#">有效期配置</a></dd>
        </dl>

        <dl class="syetem_management">
            <dt>系统管理<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">系统简介</a></dd>
            <dd><a href="#">更新历史</a></dd>
            <dd><a href="#">用户登录统计</a></dd>
            <dd><a href="#">系统日志</a></dd>
            <dd><a href="#">符号下载统计</a></dd>
            <dd><a href="#">数据库备份与还原</a></dd>
        </dl>

        <dl class="source">
            <dt>用户管理<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">注册用户管理</a></dd>
            <dd><a href="#">特许用户管理</a></dd>
        </dl>

        <dl class="statistics">
            <dt>统计分析<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
            <dd class="first_dd"><a href="#">客户统计</a></dd>
        </dl>
    </div>

    <div class="content">
        <h1>Hello, world</h1>
    </div>

    <script type="text/javascript">
        $(".leftsidebar_box dt").css({"background-color":"#3992d0"});
        $(".leftsidebar_box dt img").attr("src","${ctx}/static/source/image/left/select_xl01.png");
        $(function(){
            $(".leftsidebar_box dd").hide();
            $(".leftsidebar_box dt").click(function(){
                $(".leftsidebar_box dt").css({"background-color":"#3992d0"})
                $(this).css({"background-color": "#317eb4"});
                $(this).parent().find('dd').removeClass("menu_chioce");
                $(".leftsidebar_box dt img").attr("src","${ctx}/static/source/image/left/select_xl01.png");
                $(this).parent().find('img').attr("src","${ctx}/static/source/image/left/select_xl.png");
                $(".menu_chioce").slideUp();
                $(this).parent().find('dd').slideToggle();
                $(this).parent().find('dd').addClass("menu_chioce");
            });
        });
    </script>
</body>
</html>
