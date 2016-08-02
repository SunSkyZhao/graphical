<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <title>Index</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/plugins/bootstrap-table/bootstrap-table.min.css">
    <script src="${ctx}/static/plugins/jquery/jquery-1.9.1.min.js"></script>
    <script src="${ctx}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="${ctx}/static/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>From data</h1>
        <table id="table" data-pagination="true" data-click-to-select="true">
            <thead>
            <tr>
                <th data-field="id" data-checkbox="true">ID</th>
                <th data-field="name">Item Name</th>
                <th data-field="price" data-formatter="priceFormatter">Item Price</th>
            </tr>
            </thead>
        </table>
    </div>

    <script>
        function priceFormatter(value, row){
            return "<b>"+value+"</b>";
        }

        var $table = $('#table');
        $(function () {
            var data = [
                {
                    "id": 0,
                    "name": "Item 0",
                    "price": "$0"
                },
                {
                    "id": 1,
                    "name": "Item 1",
                    "price": "$1"
                },
                {
                    "id": 2,
                    "name": "Item 2",
                    "price": "$2"
                },
                {
                    "id": 3,
                    "name": "Item 3",
                    "price": "$3"
                },
                {
                    "id": 4,
                    "name": "Item 4",
                    "price": "$4"
                },
                {
                    "id": 5,
                    "name": "Item 5",
                    "price": "$5"
                }
            ];
            $table.bootstrapTable({data: data});
        });
    </script>
</body>
</html>
