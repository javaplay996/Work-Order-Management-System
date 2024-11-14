<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑工单受理</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">工单受理管理</li>
                        <li class="breadcrumb-item active">编辑工单受理</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">工单受理信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa gongdan">
                                        <label>工单</label>
                                        <div>
                                            <select id="gongdanSelect" name="gongdanSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 gongdan">
                                        <label>工单编号</label>
                                        <input id="gongdanDanhaoNumber" name="gongdanDanhaoNumber" class="form-control"
                                               placeholder="工单编号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 gongdan">
                                        <label>工单名称</label>
                                        <input id="gongdanName" name="gongdanName" class="form-control"
                                               placeholder="工单名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 gongdan">
                                        <label>工单类型</label>
                                        <input id="gongdanValue" name="gongdanValue" class="form-control"
                                               placeholder="工单类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6 gongdan">
                                        <label>工单图片</label>
                                        <img id="gongdanPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa yuangong">
                                        <label>员工</label>
                                        <div>
                                            <select id="yuangongSelect" name="yuangongSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 yuangong">
                                        <label>员工姓名</label>
                                        <input id="yuangongName" name="yuangongName" class="form-control"
                                               placeholder="员工姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yuangong">
                                        <label>员工手机号</label>
                                        <input id="yuangongPhone" name="yuangongPhone" class="form-control"
                                               placeholder="员工手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yuangong">
                                        <label>员工身份证号</label>
                                        <input id="yuangongIdNumber" name="yuangongIdNumber" class="form-control"
                                               placeholder="员工身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yuangong">
                                        <label>员工照片</label>
                                        <img id="yuangongPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="gongdanId" name="gongdanId" type="hidden">
                                <input id="yuangongId" name="yuangongId" type="hidden">
                                    <div class="form-group col-md-6 dddddd">
                                        <label>工单状态</label>
                                        <select id="gongdanShenheTypesSelect" name="gongdanShenheTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group  col-md-6">
                                        <label>工单审核详情</label>
                                        <input id="gongdanShouliContentupload" name="file" type="file">
                                        <script id="gongdanShouliContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var gongdanShouliContentUe = UE.getEditor('gongdanShouliContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="gongdanShouliContent" id="gongdanShouliContent-input">
                                    </div>
                                    <div class="form-group  col-md-6">
                                        <label>工单评价</label>
                                        <input id="gongdanPingjiaContentupload" name="file" type="file">
                                        <script id="gongdanPingjiaContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var gongdanPingjiaContentUe = UE.getEditor('gongdanPingjiaContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="gongdanPingjiaContent" id="gongdanPingjiaContent-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "gongdanShouli";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var gongdanShenheTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var gongdanOptions = [];
    var yuangongOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#gongdanShouliContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('gongdanShouliContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


        $('#gongdanPingjiaContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('gongdanPingjiaContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '工单'){//当前登录用户不为这个
                if($("#gongdanId") !=null){
                    var gongdanId = $("#gongdanId").val();
                    if(gongdanId == null || gongdanId =='' || gongdanId == 'null'){
                        alert("工单不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '员工'){//当前登录用户不为这个
                if($("#yuangongId") !=null){
                    var yuangongId = $("#yuangongId").val();
                    if(yuangongId == null || yuangongId =='' || yuangongId == 'null'){
                        alert("员工不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("gongdanShouli/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addgongdanShouli');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function gongdanShenheTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=gongdan_shenhe_types", "GET", {}, (res) => {
                if(res.code == 0){
                    gongdanShenheTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function gongdanSelect() {
            //填充下拉框选项
            http("gongdan/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    gongdanOptions = res.data.list;
                }
            });
        }

        function gongdanSelectOne(id) {
            http("gongdan/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                gongdanShowImg();
                gongdanShowVideo();
                gongdanDataBind();
            }
        });
        }
        function yuangongSelect() {
            //填充下拉框选项
            http("yuangong/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yuangongOptions = res.data.list;
                }
            });
        }

        function yuangongSelectOne(id) {
            http("yuangong/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yuangongShowImg();
                yuangongShowVideo();
                yuangongDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationGongdanshenhetypesSelect(){
            var gongdanShenheTypesSelect = document.getElementById('gongdanShenheTypesSelect');
            if(gongdanShenheTypesSelect != null && gongdanShenheTypesOptions != null  && gongdanShenheTypesOptions.length > 0 ){
                for (var i = 0; i < gongdanShenheTypesOptions.length; i++) {
                    gongdanShenheTypesSelect.add(new Option(gongdanShenheTypesOptions[i].indexName,gongdanShenheTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationgongdanSelect() {
            var gongdanSelect = document.getElementById('gongdanSelect');
            if(gongdanSelect != null && gongdanOptions != null  && gongdanOptions.length > 0 ) {
                for (var i = 0; i < gongdanOptions.length; i++) {
                        gongdanSelect.add(new Option(gongdanOptions[i].gongdanName, gongdanOptions[i].id));
                }

                $("#gongdanSelect").change(function(e) {
                        gongdanSelectOne(e.target.value);
                });
            }

        }

        function initializationyuangongSelect() {
            var yuangongSelect = document.getElementById('yuangongSelect');
            if(yuangongSelect != null && yuangongOptions != null  && yuangongOptions.length > 0 ) {
                for (var i = 0; i < yuangongOptions.length; i++) {
                        yuangongSelect.add(new Option(yuangongOptions[i].yuangongName, yuangongOptions[i].id));
                }

                $("#yuangongSelect").change(function(e) {
                        yuangongSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var gongdanShenheTypesSelect = document.getElementById("gongdanShenheTypesSelect");
        if(gongdanShenheTypesSelect != null && gongdanShenheTypesOptions != null  && gongdanShenheTypesOptions.length > 0 ) {
            for (var i = 0; i < gongdanShenheTypesOptions.length; i++) {
                if (gongdanShenheTypesOptions[i].codeIndex == ruleForm.gongdanShenheTypes) {//下拉框value对比,如果一致就赋值汉字
                        gongdanShenheTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var gongdanSelect = document.getElementById("gongdanSelect");
            if(gongdanSelect != null && gongdanOptions != null  && gongdanOptions.length > 0 ) {
                for (var i = 0; i < gongdanOptions.length; i++) {
                    if (gongdanOptions[i].id == ruleForm.gongdanId) {//下拉框value对比,如果一致就赋值汉字
                        gongdanSelect.options[i+1].selected = true;
                        $("#gongdanSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yuangongSelect = document.getElementById("yuangongSelect");
            if(yuangongSelect != null && yuangongOptions != null  && yuangongOptions.length > 0 ) {
                for (var i = 0; i < yuangongOptions.length; i++) {
                    if (yuangongOptions[i].id == ruleForm.yuangongId) {//下拉框value对比,如果一致就赋值汉字
                        yuangongSelect.options[i+1].selected = true;
                        $("#yuangongSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.gongdanShouliContent != null && ruleForm.gongdanShouliContent != 'null' && ruleForm.gongdanShouliContent != '' && $("#gongdanShouliContentupload").length>0) {

            var gongdanShouliContentUeditor = UE.getEditor('gongdanShouliContentEditor');
            gongdanShouliContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.gongdanShouliContent != null){
                    mes = ''+ ruleForm.gongdanShouliContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                gongdanShouliContentUeditor.setContent(mes);
            });
        }
        if (ruleForm.gongdanPingjiaContent != null && ruleForm.gongdanPingjiaContent != 'null' && ruleForm.gongdanPingjiaContent != '' && $("#gongdanPingjiaContentupload").length>0) {

            var gongdanPingjiaContentUeditor = UE.getEditor('gongdanPingjiaContentEditor');
            gongdanPingjiaContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.gongdanPingjiaContent != null){
                    mes = ''+ ruleForm.gongdanPingjiaContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                gongdanPingjiaContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#gongdanShouliContentupload").length>0) {
            var gongdanShouliContentEditor = UE.getEditor('gongdanShouliContentEditor');
            if (gongdanShouliContentEditor.hasContents()) {
                $('#gongdanShouliContent-input').attr('value', gongdanShouliContentEditor.getPlainTxt());
            }
        }
        if($("#gongdanPingjiaContentupload").length>0) {
            var gongdanPingjiaContentEditor = UE.getEditor('gongdanPingjiaContentEditor');
            if (gongdanPingjiaContentEditor.hasContents()) {
                $('#gongdanPingjiaContent-input').attr('value', gongdanPingjiaContentEditor.getPlainTxt());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addgongdanShouli');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                gongdanId: "required",
                yuangongId: "required",
                insertTime: "required",
                gongdanShenheTypes: "required",
                gongdanShouliContent: "required",
                gongdanPingjiaContent: "required",
            },
            messages: {
                gongdanId: "工单不能为空",
                yuangongId: "员工不能为空",
                insertTime: "受理时间不能为空",
                gongdanShenheTypes: "工单状态不能为空",
                gongdanShouliContent: "工单审核详情不能为空",
                gongdanPingjiaContent: "工单评价不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addgongdanShouli = window.sessionStorage.getItem("addgongdanShouli");
        if (addgongdanShouli != null && addgongdanShouli != "" && addgongdanShouli != "null") {
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("gongdanShouli/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#insertTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        gongdanDataBind();
        yuangongDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#gongdanId").val(ruleForm.gongdanId);
        $("#yuangongId").val(ruleForm.yuangongId);
        $("#insertTime-input").val(ruleForm.insertTime);
        $("#gongdanShouliContent").val(ruleForm.gongdanShouliContent);
        $("#gongdanPingjiaContent").val(ruleForm.gongdanPingjiaContent);

    }
    <!--  级联表的数据回显  -->
    function gongdanDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#gongdanId").val(ruleForm.id);

        $("#yonghuId").val(ruleForm.yonghuId);
        $("#gongdanDanhaoNumber").val(ruleForm.gongdanDanhaoNumber);
        $("#gongdanName").val(ruleForm.gongdanName);
        $("#gongdanValue").val(ruleForm.gongdanValue);
        $("#insertTime").val(ruleForm.insertTime);
        $("#gongdanContent").val(ruleForm.gongdanContent);
    }

    function yuangongDataBind(){
        debugger

                    <!-- 把id赋值给当前表的id-->
        $("#yuangongId").val(ruleForm.id);

        $("#yuangongName").val(ruleForm.yuangongName);
        $("#yuangongPhone").val(ruleForm.yuangongPhone);
        $("#yuangongIdNumber").val(ruleForm.yuangongIdNumber);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        gongdanShowImg();
        yuangongShowImg();
    }


    <!--  级联表的图片  -->

    function gongdanShowImg() {
        $("#gongdanPhotoImg").attr("src",ruleForm.gongdanPhoto);
    }


    function yuangongShowImg() {
        $("#yuangongPhotoImg").attr("src",ruleForm.yuangongPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        gongdanShowVideo();
        yuangongShowVideo();
    }


    <!--  级联表的视频  -->

    function gongdanShowVideo() {
        $("#gongdanPhotoV").attr("src",ruleForm.gongdanPhoto);
    }

    function yuangongShowVideo() {
        $("#yuangongPhotoV").attr("src",ruleForm.yuangongPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            gongdanShenheTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            gongdanSelect();
            yuangongSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationGongdanshenhetypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationgongdanSelect();
            initializationyuangongSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addgongdanShouli');
    });

    function readonly() {
        var addgongdanShouli = window.sessionStorage.getItem('addgongdanShouli');
        if(addgongdanShouli != null && addgongdanShouli != ""){
            $(".dddddd").remove();//删除审核状态
        }
        if (window.sessionStorage.getItem('role') == '管理员') {
        }
        else if (window.sessionStorage.getItem('role') == '用户') {
            $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
            var gongdanShouliContentEditor = UE.getEditor('gongdanShouliContentEditor');
            gongdanShouliContentEditor.ready(function () {
                gongdanShouliContentEditor.setDisabled('fullscreen');
            });

            $('#gongdanShenheTypesSelect').attr('readonly', 'readonly');
            $('#gongdanShenheTypesSelect').attr('style', 'pointer-events: none;');
        }
        else if (window.sessionStorage.getItem('role') == '员工') {
            // $(".aaaaaa").remove();
            var addgongdanShouli = window.sessionStorage.getItem('addgongdanShouli');
            if(addgongdanShouli != null && addgongdanShouli != ""){
                $(".yuangong").remove();//删除当前用户的信息
            }
            var gongdanPingjiaContentEditor = UE.getEditor('gongdanPingjiaContentEditor');
            gongdanPingjiaContentEditor.ready(function () {
                gongdanPingjiaContentEditor.setDisabled('fullscreen');
            });
        }
        else{
            // alert("未知情况.......");
            var gongdanShouliContentEditor = UE.getEditor('gongdanShouliContentEditor');
            gongdanShouliContentEditor.ready(function () {
                gongdanShouliContentEditor.setDisabled('fullscreen');
            });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>