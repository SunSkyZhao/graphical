<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <title>标准配置</title>
    <!--支持IE-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--支持移动设备,禁用缩放-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- 关键词 -->
    <meta name="keywords" content="标准, 图形, 符号, 在线浏览" />
    <!-- 描述语 -->
    <meta name="Description" content="标准图形符号在线浏览平台">
    <jsp:include page="${ctx}/app/include/header.jsp"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/source/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/source/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/static/source/css/style.css">
</head>
<body>
<ol class="breadcrumb">
    <li>标准简介</li>
    <li class="active"><a href="${ctx}/standard">标准简介</a></li>
</ol>

<div style="margin:0 auto;">
    <div class="clearfix">
        <p class="shaixuan-tj floatLeft clearfix">
            <span><a href="${ctx}/standard">全部结果</a></span>
            <i class="icon-angle-right"></i>
            <span><strong>“标准简介”</strong></span>
            <i class="icon-angle-right"></i>
        </p>
        <p id="sxbtn" class="shaixuan-btn clearfix"><span><em>收起筛选</em><i class="icon-angle-up"></i></span></p>
    </div>
    <div id="page-search-store" class="mb10 border sxcon">
        <div class="search-by by-category relative">
            <dl class="relative clearfix">
                <dt class="floatLeft"><a href="/">品牌：</a></dt>
                <dd class="floatLeft show-con">
                    <a href="/" class="">进口牛奶</a>
                    <a href="/" class="">进口母婴用品</a>
                    <a href="/" class="">进口零食</a>
                    <a href="/" class="">进口冲调保健</a>
                    <a href="/" class="nzw12">进口个人护理</a>
                    <a href="/" class="">进口牛奶</a>
                    <a href="/" class="">进口母婴用品</a>
                    <a href="/" class="">进口零食</a>
                    <a href="/" class="">进口冲调保健</a>
                    <a href="/" class="">进口个人护理</a>
                    <a href="/" class="">进口零食</a>
                    <a href="/" class="">进口冲调保健</a>
                    <a href="/" class="">进口个人护理</a>
                </dd>
                <dd class="floatLeft show-more"><h3 class="pointer clearfix"><span>更多</span><i class="icon-angle-down"></i></h3></dd>
            </dl>
            <dl class="relative clearfix" style="border-bottom:0">
                <dt class="floatLeft"><a href="/">符号范围：</a></dt>
                <dd class="floatLeft show-con">
                    <a href="/" class="">标志用符号</a>
                    <a href="/" class="">设备用符号</a>
                    <a href="/" class="">技术文件用符号</a>
                </dd>
            </dl>
        </div>
    </div>
</div>

<div class="toolbar">
    <button class="btn btn-sm btn-success" onclick="window.location='${ctx}/standard/add'"><span class="glyphicon glyphicon-plus"></span> 添加</button>
    <button class="btn btn-sm btn-danger" onclick="del();"><span class="glyphicon glyphicon-trash"></span> 删除</button>
</div>
<table id="table"></table>

<div class="modal fade" id="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加</h4>
            </div>
            <form action="#" method="post" id="add-form">
                <div class="modal-body">
                    <input type="hidden" id="guid" name="guid">
                    <input type="hidden" id="rangeType" name="rangeType">
                    <div class="form-group">
                        <label for="rangeName">标准名称</label>
                        <input type="text" class="form-control" id="rangeName" name="rangeName" placeholder="请输入标准名称,最大长度10位" required>
                    </div>
                    <div class="form-group">
                        <label for="rangeCode">标准代码</label>
                        <input type="text" class="form-control" id="rangeCode" name="rangeCode" placeholder="请输入标准代码,最大长度30位" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="submitForm();">提交</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    if("${message}"){
        layer.msg('${message}', {
            offset: 0
        });
    }
    if("${error}"){
        layer.msg('${error}', {
            offset: 0,
            shift: 6
        });
    }

    $("#table").bootstrapTable({
        url: "${ctx}/standard/list",
        dataType: "json",
        singleSelect: false,
        height: 550,
        toolbar: ".toolbar",
        classes: "table table-bordered",
        striped: true,      //是否显示行间隔色
        cache: false,      //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        sortable: false,      //是否启用排序
        pagination: true,     //是否显示分页（*）
        sidePagination: "server", //服务端处理分页server/client
        pageNumber:1,      //初始化加载第一页，默认第一页
        pageSize: 8,      //每页的记录行数（*）
        pageList: [8, 16, 32],  //可供选择的每页的行数（*）
        uniqueId: "guid",
        clickToSelect: true,    //是否启用点击选中行
        showRefresh: false,     //是否显示刷新按钮
        showColumns: false,     //是否显示所有的列
        search: false, //显示搜索框
        columns: [
            {checkbox: true},
            {title: "编号", filed: "guid", visible: false},
            {title: "标准编号", field: "identifier", align: "left", halign: "center"},
            {title: "中文名称", field: "chineseName", align: "left", halign: "center"},
            {title: "外文名称", field: "foreignName", align: "left", halign: "center"},
            {title: "状态", field: "status", align: "center", formatter: formatterStatus, valign: "middle"},
            {title: "详情", field: "none", align: "center", formatter: formatterDetail, valign: "middle"}
        ]
    });

    function formatterDetail(value, row, index){
        return "<a href='${ctx}/standard/detail/"+row.guid+"'><span class=\"glyphicon glyphicon-search\"></span></a>";
    }

    function formatterStatus(value, row, index){
        switch (value){
            case "active":
                return '<span class="label label-success">现行</span>';
                break;
            case "replaced":
                return '<span class="label label-danger">被替代</span>';
                break;
            case "obsolete":
                return '<span class="label label-default">废弃</span>';
                break;
        }
    }

    function del(){
        var object = $("#table").bootstrapTable("getAllSelections");
        switch (object.length){
            case 0:
                layer.msg("至少选择一行!", { offset: 0, shift: 6 });
                break;
            case 1:
            default:
                var guids = [];
                $.each(object, function(index, item){
                    guids.push(item.guid);
                });
                $.getJSON("${ctx}/standard/delete?guids=" + guids, function(data){
                    if(eval(data).code == 1){
                        $("#table").bootstrapTable("refresh");
                        layer.msg("操作成功!", { offset: 0});
                    }else{
                        layer.msg("操作失败,请重试!", { offset: 0, shift: 6 });
                    }
                });
                break;
        }
    }


    $(function(){
        $(".shaixuan-tj").on("mouseover mouseout", "span.crumb-select-item", function(e){
           if(e.type == "mouseover"){
               $(this).addClass("crumb-select-itemon");
           }else{
               $(this).removeClass("crumb-select-itemon");
           }
        });

        $(".shaixuan-tj").on('click', "span.crumb-select-item", function(event){
            event.preventDefault();
            $(this).remove();
            var TTR = $(this).find("em").text();
            $(".show-con a").each(function(){
                var TT = $(this).text();
                THI = $(this);
                THIPP = $(this).parents("dl");
                if(TTR==TT){
                    THI.removeClass("nzw12");
                    THIPP.css("display","block");
                }
            })
        });
        $(".show-con a").click(function(event){
            event.preventDefault();
            THIP = $(this).parents("dl");
            if($(this).hasClass("nzw12")){
            }else{
                $(this).addClass("nzw12");
                var zhiclass = $(this).parents("dd").siblings("dt").find("a").text();
                zhicon = $(this).text();
                tianjaneir="<span class='crumb-select-item'><a href='${ctx}/standard'><b>"+zhiclass+"</b><em>"+zhicon+"</em><i class='icon-remove'></i></a></span>"
                $(".shaixuan-tj").children().last().after(tianjaneir);
                THIP.css("display","none");
            }
        });
        $(".show-more").click(function(event){
            event.preventDefault();
            var ticon = $(this).find("i");
            tspan = $(this).find("span");
            if($(this).hasClass("zk")){
                $(this).siblings(".show-con").css("height","30px");
                ticon.removeClass("icon-angle-up");
                ticon.addClass("icon-angle-down");
                tspan.html("更多");
                $(this).removeClass("zk")
            }else{
                $(this).siblings(".show-con").css("height","auto");
                ticon.removeClass("icon-angle-down");
                ticon.addClass("icon-angle-up");
                tspan.html("收起");
                $(this).addClass("zk")
            }
        });
        $("#sxbtn").click(function(event){
            event.preventDefault();
            var xicon = $(this).find("span i");
            xspan = $(this).find("span em");
            if($(this).hasClass("zkon")){
                xspan.text("收起筛选");
                xicon.removeClass("icon-angle-down");
                xicon.addClass("icon-angle-up");
                $(".sxcon").slideDown();
                $(this).removeClass("zkon")
            }else{
                xspan.text("查看筛选");
                xicon.removeClass("icon-angle-up");
                xicon.addClass("icon-angle-down");
                $(".sxcon").slideUp();
                $(this).addClass("zkon")
            }
        })


    })
</script>
</body>
</html>
