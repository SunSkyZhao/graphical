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
    <li class="active"><a href="${ctx}/standard/detail/${standard.guid}">标准详情</a></li>
</ol>

<div class="col-md-10">
    <form class="form-horizontal">
        <div class="form-group">
            <label for="symbolRange" class="col-sm-2 control-label">符号范围</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="symbolRange">${standard.symbolRange}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="standardRange" class="col-sm-2 control-label">符号范围</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="standardRange">${standard.standardRange}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="identifier" class="col-sm-2 control-label">标准编号</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="identifier">${standard.identifier}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="chineseName" class="col-sm-2 control-label">中文名称</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="chineseName">${standard.chineseName}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="foreignName" class="col-sm-2 control-label">外文名称</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="foreignName">${standard.foreignName}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="status" class="col-sm-2 control-label">标准状态</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="status">${standard.status}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="replaceInfo" class="col-sm-2 control-label">替代情况</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="replaceInfo">${standard.replaceInfo}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="adoptInfo" class="col-sm-2 control-label">采标程度</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="adoptInfo">${standard.adoptInfo}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="proposeCompany" class="col-sm-2 control-label">提出单位</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="proposeCompany">${standard.proposeCompany}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="draftCompany" class="col-sm-2 control-label">起草单位</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="draftCompany">${standard.draftCompany}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="draftPerson" class="col-sm-2 control-label">起草人员</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="draftPerson">${standard.draftPerson}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="occupyCompany" class="col-sm-2 control-label">归口单位</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="occupyCompany">${standard.occupyCompany}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="releaseHistory" class="col-sm-2 control-label">历次发布</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="releaseHistory">${standard.releaseHistory}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="useScope" class="col-sm-2 control-label">适用范围</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="useScope">${standard.useScope}</p>
            </div>
        </div>
        <div class="form-group">
            <label for="attachment" class="col-sm-2 control-label">标准全文</label>
                <c:if test="${not empty standard.attachment and not empty standard.filePath}"><p class="form-control-static" id="attachment">${standard.attachment}<a href="${ctx}/standard/download/${standard.guid}"> <span class=" glyphicon glyphicon-download-alt"></span></a></p></c:if>
                <c:if test="${empty standard.attachment or empty standard.filePath}"><p class="form-control-static" id="attachment">暂无</p></c:if>
        </div>
        <div class="form-group">
            <label for="keyword" class="col-sm-2 control-label">关键词</label>
            <div class="col-sm-10">
                <p class="form-control-static" id="keyword">${standard.keyword}</p>
            </div>
        </div>
    </form>
</div>
</body>
</html>
