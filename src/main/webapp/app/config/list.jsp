<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <title>标准配置</title>
    <jsp:include page="${ctx}/app/include/header.jsp"/>
</head>
<body>
<ol class="breadcrumb">
    <li>系统配置</li>
    <li class="active"><a href="${ctx}/config/standard">标准配置</a></li>
</ol>
<ul class="nav nav-tabs" id="tab">
    <li><a href="#domestic" name="domestic">国内标准配置</a></li>
    <li><a href="#international" name="international">国际标准配置</a></li>
    <li><a href="#abroad" name="abroad">国外标准配置</a></li>
</ul>

<div class="tab-content">
    <div class="tab-pane active" id="domestic">
        <div class="toolbar-domestic">
            <button class="btn btn-default" onclick="add();">添加</button>
            <button class="btn btn-default" onclick="edit();">编辑</button>
            <button class="btn btn-default">删除</button>
        </div>
        <table id="table-domestic"></table>
    </div>
    <div class="tab-pane" id="international">
        <div class="toolbar-international">
            <button class="btn btn-default" onclick="add()">添加</button>
            <button class="btn btn-default" onclick="edit();">编辑</button>
            <button class="btn btn-default">删除</button>
        </div>
        <table id="table-international"></table>
    </div>
    <div class="tab-pane" id="abroad">
        <div class="toolbar-abroad">
            <button class="btn btn-default" onclick="add()">添加</button>
            <button class="btn btn-default" onclick="edit();">编辑</button>
            <button class="btn btn-default">删除</button>
        </div>
        <table id="table-abroad"></table>
    </div>
</div>

<div class="modal fade" id="add-modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加</h4>
            </div>
            <form action="#" method="post" id="add-form">
                <div class="modal-body">
                    <input type="hidden" id="guid">
                    <input type="hidden" id="rangeType">
                    <div class="form-group">
                        <label for="rangeName">标准名称</label>
                        <input type="text" class="form-control" id="rangeName" placeholder="请输入标准名称,最大长度10位" required>
                    </div>
                    <div class="form-group">
                        <label for="rangeCode">标准代码</label>
                        <input type="text" class="form-control" id="rangeCode" placeholder="请输入标准代码,最大长度30位" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">提交</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    var tab = "domestic";
    $(function() {
        $('#tab a:first').tab('show');//初始化显示哪个tab
        showTable(tab);
        $('#tab a').click(function(e) {
            tab = $(this).attr("name");
            e.preventDefault();//阻止a链接的跳转行为
            showTable(tab);
            $(this).tab('show');//显示当前选中的链接及关联的content
        });
    });
    function showTable(tab){
        $("#table-"+tab).bootstrapTable({
            url: "${ctx}/config/standard/" + tab,
            dataType: "json",
            singleSelect: false,
            height: 500,
            toolbar: ".toolbar-" + tab,
            striped: true,      //是否显示行间隔色
            cache: false,      //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            sortable: false,      //是否启用排序
            pagination: true,     //是否显示分页（*）
            sidePagination: "client", //服务端处理分页server/client
            pageNumber:1,      //初始化加载第一页，默认第一页
            pageSize: 8,      //每页的记录行数（*）
            pageList: [8, 16, 32],  //可供选择的每页的行数（*）
            uniqueId: "guid",
            clickToSelect: true,    //是否启用点击选中行
            showRefresh: false,     //是否显示刷新按钮
            showColumns: false,     //是否显示所有的列
            search: true, //显示搜索框
            columns: [
                {checkbox: true},
                {title: "编号", filed: "guid", visible: false},
                {title: "标准名称", field: "rangeName", align: "center"},
                {title: "标准代码", field: "rangeCode", align: "center"},
                {title: "标准代码", field: "rangeType", visible: false}
            ]
        })
    }
    function add() {
        clearForm();
        $("#add-form").attr("action", "${ctx}/config/insert/" + tab);
        $('#add-modal').modal({})
    }
    function edit(){
        clearForm();
        var object = $("#table-"+tab).bootstrapTable("getAllSelections");
        switch (object.length){
            case 0:
                layer.msg("至少选择一行!", { offset: 0, shift: 6 });
                break;
            case 1:
                $("#guid").val(object[0].guid);
                $("#rangeType").val(object[0].rangeType);
                $("#rangeName").val(object[0].rangeName);
                $("#rangeCode").val(object[0].rangeCode);
                $('#add-modal').modal({});
                break;
            default:
                layer.msg("最多只能选择一行!", { offset: 0, shift: 6 });
                break;
        }
    }
    function clearForm(){
        $("#guid").val("");
        $("#rangeType").val("");
        $("#rangeName").val("");
        $("#rangeCode").val("");
    }
</script>
</body>
</html>
