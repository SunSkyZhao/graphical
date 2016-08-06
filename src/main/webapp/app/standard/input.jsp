<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <title>添加标准</title>
    <!--支持IE-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--支持移动设备,禁用缩放-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- 关键词 -->
    <meta name="keywords" content="标准, 图形, 符号, 在线浏览" />
    <!-- 描述语 -->
    <meta name="Description" content="标准图形符号在线浏览平台">
    <jsp:include page="${ctx}/app/include/header.jsp"/>
</head>
<body>
<ol class="breadcrumb">
    <li>标准简介</li>
    <li><a href="${ctx}/standard">标准简介</a></li>
    <li class="active"><a href="${ctx}/standard/add">添加标准</a></li>
</ol>

<div class="col-md-10">
    <form class="form-horizontal" action="${ctx}/standard/insert" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="symbolRange" class="col-sm-2 control-label">符号范围</label>
            <div class="col-sm-10">
                <select class="form-control" id="symbolRange" name="symbolRange">
                    <option value="symbol" name="">符号用标志</option>
                    <option value="device">设备用标志</option>
                    <option value="document">技术文件用标志</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="standardRange" class="col-sm-2 control-label">符号范围</label>
            <div class="col-sm-5">
                <select class="form-control" id="root">
                    <option value="symbol">国内标准</option>
                    <option value="device">国际标准</option>
                    <option value="document">国外标准</option>
                </select>
            </div>
            <div class="col-sm-5">
                <select class="form-control" id="standardRange" name="standardRange">
                    <option value="symbol">符号用标志</option>
                    <option value="device">设备用标志</option>
                    <option value="document">技术文件用标志</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="identifier" class="col-sm-2 control-label">标准编号</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="identifier" name="identifier" placeholder="">
            </div>
        </div>
        <div class="form-group">
            <label for="chineseName" class="col-sm-2 control-label">中文名称</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="chineseName" name="chineseName" placeholder="">
            </div>
        </div>
        <div class="form-group">
            <label for="foreignName" class="col-sm-2 control-label">外文名称</label>
            <div class="col-sm-10">
                <textarea class="form-control" rows="3" id="foreignName" name="foreignName"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">标准状态</label>
            <label class="checkbox-inline">
                <input type="radio" id="status-active" value="active" name="status"> 现行
            </label>
            <label class="checkbox-inline">
                <input type="radio" id="status-replaced" value="replaced" name="status"> 被代替
            </label>
            <label class="checkbox-inline">
                <input type="radio" id="status-obsolete" value="obsolete" name="status"> 废弃
            </label>
        </div>
        <div class="form-group">
            <label for="replaceInfo" class="col-sm-2 control-label">替代情况</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="replaceInfo" name="replaceInfo" placeholder="">
            </div>
        </div>
        <div class="form-group">
            <label for="adoptInfo" class="col-sm-2 control-label">采标程度</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="adoptInfo" name="adoptInfo" placeholder="">
            </div>
        </div>
        <div class="form-group">
            <label for="proposeCompany" class="col-sm-2 control-label">提出单位</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="proposeCompany" name="proposeCompany" placeholder="">
            </div>
        </div>
        <div class="form-group">
            <label for="draftCompany" class="col-sm-2 control-label">起草单位</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="draftCompany" name="draftCompany" placeholder="">
            </div>
        </div>
        <div class="form-group">
            <label for="draftPerson" class="col-sm-2 control-label">起草人员</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="draftPerson" name="draftPerson" placeholder="">
            </div>
        </div>
        <div class="form-group">
            <label for="occupyCompany" class="col-sm-2 control-label">归口单位</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="occupyCompany" name="occupyCompany" placeholder="">
            </div>
        </div>
        <div class="form-group">
            <label for="releaseHistory" class="col-sm-2 control-label">历次发布</label>
            <div class="col-sm-10">
                <textarea class="form-control" rows="3" id="releaseHistory" name="releaseHistory"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="useScope" class="col-sm-2 control-label">适用范围</label>
            <div class="col-sm-10">
                <textarea class="form-control" rows="3" id="useScope" name="useScope"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="file" class="col-sm-2 control-label">标准全文</label>
            <div class="col-sm-10">
                <input type="file" id="file" name="file">
            </div>
        </div>
        <div class="form-group">
            <label for="keyword" class="col-sm-2 control-label">关键词</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="keyword" name="keyword" placeholder="">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-send"></span> 提交</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
