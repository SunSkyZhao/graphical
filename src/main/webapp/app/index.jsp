<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <title>标准图形符号数据库系统</title>
    <jsp:include page="${ctx}/app/include/header.jsp"/>
    <style type="text/css">
        .side {
            width: 10%;
            height: 100%;
            float:left;
            padding-top: 50px;
        }
        .content {
            width: 90%;
            height: 90%;
            float:left;
            padding-top: 60px;
            padding-left: 10px;
            overflow-y:auto;
            overflow-x:auto;
        }
        .footer {
            width: 90%;
            height: 10%;
            text-align: center;
            float:left;
            padding-top: 50px;
        }
        body{margin:0;padding:0;overflow-x:hidden;}
        html, body{height:100%;}
        img{border:none;}
        *{font-family:'微软雅黑';font-size:12px;color:#626262;}
        dl,dt,dd{display:block;margin:0;}
        a{text-decoration:none;}

        /*left*/
        .side{overflow:visible !important;background-color:#3992d0;}
        .line{height:2px;width:100%;background-image:url(${ctx}/static/source/image/left/line_bg.png);background-repeat:repeat-x;}
        .side dt{padding-left:40px;padding-right:10px;background-repeat:no-repeat;background-position:10px center;color:#f5f5f5;font-size:14px;position:relative;line-height:48px;cursor:pointer;}
        .side dd{background-color:#317eb4;padding-left:40px;}
        .side dd a{color:#f5f5f5;line-height:20px;}
        .side dt img{position:absolute;right:10px;top:20px;}
        .system_log dt{background-image:url(${ctx}/static/source/image/left/system.png)}
        .custom dt{background-image:url(${ctx}/static/source/image/left/custom.png)}
        .channel dt{background-image:url(${ctx}/static/source/image/left/channel.png)}
        .app dt{background-image:url(${ctx}/static/source/image/left/app.png)}
        .cloud dt{background-image:url(${ctx}/static/source/image/left/cloud.png)}
        .syetem_management dt{background-image:url(${ctx}/static/source/image/left/syetem_management.png)}
        .source dt{background-image:url(${ctx}/static/source/image/left/source.png)}
        .statistics dt{background-image:url(${ctx}/static/source/image/left/statistics.png)}
        .side dl dd:last-child{padding-bottom:10px;}
    </style>
</head>
<body>
<!-- 头部 -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">标准图形符号在线浏览平台</a>
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

<!-- 侧边栏 -->
<div class="side">
    <div class="line"></div>
    <dl class="system_log">
        <dt>标准符号<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
        <dd class="first_dd"><a href="javascript:;" class="menu" name="${ctx}/demo">标志用符号</a></dd>
        <dd><a href="javascript:;" class="menu">设备用符号</a></dd>
        <dd><a href="javascript:;" class="menu">技术文件用符号</a></dd>
    </dl>

    <dl class="custom">
        <dt>非标准符号<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
        <dd class="first_dd"><a href="javascript:;" class="menu">非标准符号</a></dd>
    </dl>

    <dl class="channel">
        <dt>注册符号<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
        <dd class="first_dd"><a href="javascript:;" class="menu">标志用符号</a></dd>
        <dd><a href="javascript:;" class="menu">设备用符号</a></dd>
        <dd><a href="javascript:;" class="menu">技术文件用符号</a></dd>
    </dl>

    <dl class="app">
        <dt>标准简介<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
        <dd class="first_dd"><a href="javascript:;" class="menu">标准简介</a></dd>
    </dl>

    <dl class="cloud">
        <dt>系统配置<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
        <dd class="first_dd"><a href="javascript:;" class="menu">特征配置</a></dd>
        <dd><a href="javascript:;" class="menu" name="${ctx}/config/standard">标准配置</a></dd>
        <dd><a href="javascript:;" class="menu">有效期配置</a></dd>
    </dl>

    <dl class="syetem_management">
        <dt>系统管理<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
        <dd class="first_dd"><a href="javascript:;" class="menu">系统简介</a></dd>
        <dd><a href="javascript:;" class="menu">更新历史</a></dd>
        <dd><a href="javascript:;" class="menu">用户登录统计</a></dd>
        <dd><a href="javascript:;" class="menu">系统日志</a></dd>
        <dd><a href="javascript:;" class="menu">符号下载统计</a></dd>
        <dd><a href="javascript:;" class="menu">数据库备份与还原</a></dd>
    </dl>

    <dl class="source">
        <dt>用户管理<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
        <dd class="first_dd"><a href="javascript:;" class="menu">注册用户管理</a></dd>
        <dd><a href="javascript:;" class="menu">特许用户管理</a></dd>
    </dl>

    <dl class="statistics">
        <dt>统计分析<img src="${ctx}/static/source/image/left/select_xl01.png"></dt>
        <dd class="first_dd"><a href="javascript:;" class="menu">客户统计</a></dd>
    </dl>
</div>

<!-- 正文 -->
<div class="content">
    <iframe id="iframe" scrolling="auto" frameborder="0" style="width: 100%;height:100%;"></iframe>
</div>

<!-- 脚部 -->
<div class="footer">
    版权所有：中国标准化研究院基础标准化研究所 京ICP备10046988号-13
</div>

<script type="text/javascript">
    $(".side dt").css({"background-color":"#3992d0"});
    $(".side dt img").attr("src","${ctx}/static/source/image/left/select_xl01.png");
    $(function(){
        $(".side dd").hide();
        $(".side dt").click(function(){
            $(".side dt").css({"background-color":"#3992d0"})
            $(this).css({"background-color": "#317eb4"});
            $(this).parent().find('dd').removeClass("menu_chioce");
            $(".side dt img").attr("src","${ctx}/static/source/image/left/select_xl01.png");
            $(this).parent().find('img').attr("src","${ctx}/static/source/image/left/select_xl.png");
            $(".menu_chioce").slideUp();
            $(this).parent().find('dd').slideToggle();
            $(this).parent().find('dd').addClass("menu_chioce");
        });
    });

    $(".menu").click(function(){
        if($(this).attr("name")){
            $("#iframe").attr("src", $(this).attr("name"));
        }
    });
</script>
</body>
</html>
