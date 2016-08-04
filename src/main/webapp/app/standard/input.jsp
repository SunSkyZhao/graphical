<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <title>添加标准</title>
    <jsp:include page="${ctx}/app/include/header.jsp"/>
</head>
<body>
<ol class="breadcrumb">
    <li>标准简介</li>
    <li><a href="${ctx}/standard">标准简介</a></li>
    <li class="active"><a href="${ctx}/standard/add">添加标准</a></li>
</ol>
<h1>添加标准</h1>
</body>
</html>
