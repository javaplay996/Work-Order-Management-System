<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">


<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

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
                        <h3 class="block-title">工单受理管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">工单受理管理</li>
                            <li class="breadcrumb-item active">工单受理列表</li>
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
                            <h3 class="widget-title">工单受理列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                                                                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        工单状态
                                        <div class="layui-input-inline">
                                            <select name="gongdanShenheTypesSelectSearch"  style="width: 150px;" id="gongdanShenheTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                            
                                                                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        工单编号
                                        <div class="layui-input-inline">
                                            <input type="text" id="gongdanDanhaoNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="工单编号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        工单名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="gongdanNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="工单名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        工单类型
                                        <div class="layui-input-inline">
                                            <select name="gongdanTypesSelectSearch"  style="width: 150px;" id="gongdanTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        提交时间
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="insertTimeStartSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="开始" aria-controls="tableId">
                                        </div>
                                    </div>
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="insertTimeEndSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="结束" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                 
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        员工姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="yuangongNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="员工姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        员工手机号
                                        <div class="layui-input-inline">
                                            <input type="text" id="yuangongPhoneSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="员工手机号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        员工身份证号
                                        <div class="layui-input-inline">
                                            <input type="text" id="yuangongIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="员工身份证号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                        
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <button onclick="add()" type="button" class="btn btn-success 新增">添加</button>
                                        <button onclick="graph()" type="button" class="btn btn-success 报表">报表</button>
                                        <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>

                                        <th >工单编号</th>
                                        <th >工单名称</th>
                                        <th >工单类型</th>
                                        <th >工单图片</th>
                                        <th >工单详情</th>
                                        <th >员工姓名</th>
                                        <th >员工手机号</th>
                                        <th >员工身份证号</th>
                                        <th >员工照片</th>


                                        <th >受理时间</th>
                                        <th >工单状态</th>
                                        <th >工单审核详情</th>
                                        <th >工单评价</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
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
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "gongdanShouli";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->
        var gongdanTypesOptions = [];

        <!-- 本表的级联字段表 -->
        var gongdanShenheTypesOptions = [];

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                                             
                            //工单编号
            var gongdanDanhaoNumberSearchInput = $('#gongdanDanhaoNumberSearch');
            if( gongdanDanhaoNumberSearchInput != null){
                if (gongdanDanhaoNumberSearchInput.val() != null && gongdanDanhaoNumberSearchInput.val() != '') {
                    searchForm.gongdanDanhaoNumber = $('#gongdanDanhaoNumberSearch').val();
                }
            }
                     
                            //工单名称
            var gongdanNameSearchInput = $('#gongdanNameSearch');
            if( gongdanNameSearchInput != null){
                if (gongdanNameSearchInput.val() != null && gongdanNameSearchInput.val() != '') {
                    searchForm.gongdanName = $('#gongdanNameSearch').val();
                }
            }
                     
            var gongdanTypesSelectSearchInput = document.getElementById("gongdanTypesSelectSearch");
            if(gongdanTypesSelectSearchInput != null){
                var gongdanTypesIndex = gongdanTypesSelectSearchInput.selectedIndex;
                if( gongdanTypesIndex  != 0){
                    searchForm.gongdanTypes = document.getElementById("gongdanTypesSelectSearch").options[gongdanTypesIndex].value;
                }
            }
                                         
                                                                                 
                            //员工姓名
            var yuangongNameSearchInput = $('#yuangongNameSearch');
            if( yuangongNameSearchInput != null){
                if (yuangongNameSearchInput.val() != null && yuangongNameSearchInput.val() != '') {
                    searchForm.yuangongName = $('#yuangongNameSearch').val();
                }
            }
                     
                            //员工手机号
            var yuangongPhoneSearchInput = $('#yuangongPhoneSearch');
            if( yuangongPhoneSearchInput != null){
                if (yuangongPhoneSearchInput.val() != null && yuangongPhoneSearchInput.val() != '') {
                    searchForm.yuangongPhone = $('#yuangongPhoneSearch').val();
                }
            }
                     
                            //员工身份证号
            var yuangongIdNumberSearchInput = $('#yuangongIdNumberSearch');
            if( yuangongIdNumberSearchInput != null){
                if (yuangongIdNumberSearchInput.val() != null && yuangongIdNumberSearchInput.val() != '') {
                    searchForm.yuangongIdNumber = $('#yuangongIdNumberSearch').val();
                }
            }
                                            <!-- 本表的查询条件 -->

                     
                //工单状态
            var gongdanShenheTypesSelectSearchInput = document.getElementById("gongdanShenheTypesSelectSearch");
            if(gongdanShenheTypesSelectSearchInput != null){
                var gongdanShenheTypesIndex = gongdanShenheTypesSelectSearchInput.selectedIndex;
                if( gongdanShenheTypesIndex  != 0){
                    searchForm.gongdanShenheTypes= document.getElementById("gongdanShenheTypesSelectSearch").options[gongdanShenheTypesIndex].value;
                }
            }
                        getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("gongdanShouli/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                //本表的
                gongdanShenheTypes: searchForm.gongdanShenheTypes,
            //级联表的
                gongdanDanhaoNumber: searchForm.gongdanDanhaoNumber,
                gongdanName: searchForm.gongdanName,
                gongdanTypes: searchForm.gongdanTypes,
                insertTimeStart: searchForm.insertTimeStart,
                insertTimeEnd: searchForm.insertTimeEnd,

                yuangongName: searchForm.yuangongName,
                yuangongPhone: searchForm.yuangongPhone,
                yuangongIdNumber: searchForm.yuangongIdNumber,


            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)


                    //工单编号
            var gongdanDanhaoNumberCell = document.createElement('td');
            gongdanDanhaoNumberCell.innerHTML = item.gongdanDanhaoNumber;
            row.appendChild(gongdanDanhaoNumberCell);


                    //工单名称
            var gongdanNameCell = document.createElement('td');
            gongdanNameCell.innerHTML = item.gongdanName;
            row.appendChild(gongdanNameCell);

                        //工单类型
            var gongdanTypesCell = document.createElement('td');
            gongdanTypesCell.innerHTML = item.gongdanValue;
            row.appendChild(gongdanTypesCell);


                //工单图片
            var gongdanPhotoCell = document.createElement('td');
            var gongdanPhotoImg = document.createElement('img');
            var gongdanPhotoImgValue = item.gongdanPhoto;
            if(gongdanPhotoImgValue !=null && gongdanPhotoImgValue !='' && gongdanPhotoImgValue !='null'){
                    gongdanPhotoImg.setAttribute('src', gongdanPhotoImgValue);
                    gongdanPhotoImg.setAttribute('height', 100);
                    gongdanPhotoImg.setAttribute('width', 100);
                    gongdanPhotoCell.appendChild(gongdanPhotoImg);
            }else{
                    gongdanPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(gongdanPhotoCell);


                    //工单详情
            var gongdanContentCell = document.createElement('td');
            //如果图文详情包含图片
            if (item.gongdanContent && item.gongdanContent.indexOf('img') != -1) {
                //暂时只考虑图片+文字 和 文字+图片的情况
                var beginIndex = item.gongdanContent.indexOf('<img');
                var endIndex = item.gongdanContent.indexOf('>');
                    gongdanContentCell.innerHTML = item.gongdanContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            } else {
                if (item.gongdanContent != null && item.gongdanContent != "" && item.gongdanContent.length >= 11) {
                        gongdanContentCell.innerHTML = item.gongdanContent.substring(0, 10) + "...";
                } else {
                        gongdanContentCell.innerHTML = item.gongdanContent;
                }
            }
            row.appendChild(gongdanContentCell);


                    //员工姓名
            var yuangongNameCell = document.createElement('td');
            yuangongNameCell.innerHTML = item.yuangongName;
            row.appendChild(yuangongNameCell);


                    //员工手机号
            var yuangongPhoneCell = document.createElement('td');
            yuangongPhoneCell.innerHTML = item.yuangongPhone;
            row.appendChild(yuangongPhoneCell);

// jsp  ajax
                    //员工身份证号
            var yuangongIdNumberCell = document.createElement('td');
            yuangongIdNumberCell.innerHTML = item.yuangongIdNumber;
            row.appendChild(yuangongIdNumberCell);


                //员工照片
            var yuangongPhotoCell = document.createElement('td');
            var yuangongPhotoImg = document.createElement('img');
            var yuangongPhotoImgValue = item.yuangongPhoto;
            if(yuangongPhotoImgValue !=null && yuangongPhotoImgValue !='' && yuangongPhotoImgValue !='null'){
                    yuangongPhotoImg.setAttribute('src', yuangongPhotoImgValue);
                    yuangongPhotoImg.setAttribute('height', 100);
                    yuangongPhotoImg.setAttribute('width', 100);
                    yuangongPhotoCell.appendChild(yuangongPhotoImg);
            }else{
                    yuangongPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(yuangongPhotoCell);



            //受理时间
            var insertTimeCell = document.createElement('td');
            insertTimeCell.innerHTML = item.insertTime;
            row.appendChild(insertTimeCell);


            //工单状态
            var gongdanShenheTypesCell = document.createElement('td');
            gongdanShenheTypesCell.innerHTML = item.gongdanShenheValue;
            row.appendChild(gongdanShenheTypesCell);


                //工单审核详情
            var gongdanShouliContentCell = document.createElement('td');
            //如果图文详情包含图片
            if (item.gongdanShouliContent && item.gongdanShouliContent.indexOf('img') != -1) {
                //暂时只考虑图片+文字 和 文字+图片的情况
                var beginIndex = item.gongdanShouliContent.indexOf('<img');
                var endIndex = item.gongdanShouliContent.indexOf('>');
                    gongdanShouliContentCell.innerHTML = item.gongdanShouliContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            } else {
                if (item.gongdanShouliContent != null && item.gongdanShouliContent != "" && item.gongdanShouliContent.length >= 11) {
                        gongdanShouliContentCell.innerHTML = item.gongdanShouliContent.substring(0, 10) + "...";
                } else {
                        gongdanShouliContentCell.innerHTML = item.gongdanShouliContent;
                }
            }
            row.appendChild(gongdanShouliContentCell);


                //工单评价
            var gongdanPingjiaContentCell = document.createElement('td');
            //如果图文详情包含图片
            if (item.gongdanPingjiaContent && item.gongdanPingjiaContent.indexOf('img') != -1) {
                //暂时只考虑图片+文字 和 文字+图片的情况
                var beginIndex = item.gongdanPingjiaContent.indexOf('<img');
                var endIndex = item.gongdanPingjiaContent.indexOf('>');
                    gongdanPingjiaContentCell.innerHTML = item.gongdanPingjiaContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            } else {
                if (item.gongdanPingjiaContent != null && item.gongdanPingjiaContent != "" && item.gongdanPingjiaContent.length >= 11) {
                        gongdanPingjiaContentCell.innerHTML = item.gongdanPingjiaContent.substring(0, 10) + "...";
                } else {
                        gongdanPingjiaContentCell.innerHTML = item.gongdanPingjiaContent;
                }
            }
            row.appendChild(gongdanPingjiaContentCell);



            //每行按钮
            var btnGroup = document.createElement('td');
            if(window.sessionStorage.getItem('role') == '用户'){

                //详情按钮
                var detailBtn = document.createElement('button');
                var detailAttr = "detail(" + item.id + ')';
                detailBtn.setAttribute("type", "button");
                detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
                detailBtn.setAttribute("onclick", detailAttr);
                detailBtn.innerHTML = "查看";
                btnGroup.appendChild(detailBtn);

                if(item.gongdanShenheTypes == 3 || item.gongdanShenheTypes == 4 ){

                //修改按钮
                var editBtn = document.createElement('button');
                var editAttr = 'edit(' + item.id + ')';
                editBtn.setAttribute("type", "button");
                editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
                editBtn.setAttribute("onclick", editAttr);
                editBtn.innerHTML = "评价";
                btnGroup.appendChild(editBtn);
                }

                //删除按钮
                var deleteBtn = document.createElement('button');
                var deleteAttr = 'remove(' + item.id + ')';
                deleteBtn.setAttribute("type", "button");
                deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
                deleteBtn.setAttribute("onclick", deleteAttr);
                deleteBtn.innerHTML = "删除";
                btnGroup.appendChild(deleteBtn);
                row.appendChild(btnGroup);
            }else if(window.sessionStorage.getItem('role') == '员工'){

                //详情按钮
                var detailBtn = document.createElement('button');
                var detailAttr = "detail(" + item.id + ')';
                detailBtn.setAttribute("type", "button");
                detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
                detailBtn.setAttribute("onclick", detailAttr);
                detailBtn.innerHTML = "查看";
                btnGroup.appendChild(detailBtn);

                if(item.gongdanShenheTypes != 3 && item.gongdanShenheTypes != 4 ){

                    //修改按钮
                    var editBtn = document.createElement('button');
                    var editAttr = 'edit(' + item.id + ')';
                    editBtn.setAttribute("type", "button");
                    editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
                    editBtn.setAttribute("onclick", editAttr);
                    editBtn.innerHTML = "审核";
                    btnGroup.appendChild(editBtn);
                }

                //删除按钮
                var deleteBtn = document.createElement('button');
                var deleteAttr = 'remove(' + item.id + ')';
                deleteBtn.setAttribute("type", "button");
                deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
                deleteBtn.setAttribute("onclick", deleteAttr);
                deleteBtn.innerHTML = "删除";
                btnGroup.appendChild(deleteBtn);
                row.appendChild(btnGroup);
            }else{
                //详情按钮
                var detailBtn = document.createElement('button');
                var detailAttr = "detail(" + item.id + ')';
                detailBtn.setAttribute("type", "button");
                detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
                detailBtn.setAttribute("onclick", detailAttr);
                detailBtn.innerHTML = "查看";
                btnGroup.appendChild(detailBtn);

                //修改按钮
                var editBtn = document.createElement('button');
                var editAttr = 'edit(' + item.id + ')';
                editBtn.setAttribute("type", "button");
                editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
                editBtn.setAttribute("onclick", editAttr);
                editBtn.innerHTML = "修改";
                btnGroup.appendChild(editBtn);

                //删除按钮
                var deleteBtn = document.createElement('button');
                var deleteAttr = 'remove(' + item.id + ')';
                deleteBtn.setAttribute("type", "button");
                deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
                deleteBtn.setAttribute("onclick", deleteAttr);
                deleteBtn.innerHTML = "删除";
                btnGroup.appendChild(deleteBtn);
                row.appendChild(btnGroup);

            }


            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("gongdanShouli/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addgongdanShouli", "addgongdanShouli");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }

    //填充级联表搜索下拉框
                                                             
                     
                     
        function gongdanTypesSelectSearch() {
            var gongdanTypesSelectSearch = document.getElementById('gongdanTypesSelectSearch');
            if(gongdanTypesSelectSearch != null) {
                gongdanTypesSelectSearch.add(new Option('-请选择-',''));
                if (gongdanTypesOptions != null && gongdanTypesOptions.length > 0){
                    for (var i = 0; i < gongdanTypesOptions.length; i++) {
                            gongdanTypesSelectSearch.add(new Option(gongdanTypesOptions[i].indexName, gongdanTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                         
                                                                                 
                     
                     
                                        
    //填充本表搜索下拉框
                     
        function gongdanShenheTypesSelectSearch() {
            var gongdanShenheTypesSelectSearch = document.getElementById('gongdanShenheTypesSelectSearch');
            if(gongdanShenheTypesSelectSearch != null) {
                gongdanShenheTypesSelectSearch.add(new Option('-请选择-',''));
                if (gongdanShenheTypesOptions != null && gongdanShenheTypesOptions.length > 0){
                    for (var i = 0; i < gongdanShenheTypesOptions.length; i++) {
                            gongdanShenheTypesSelectSearch.add(new Option(gongdanShenheTypesOptions[i].indexName,gongdanShenheTypesOptions[i].codeIndex));
                    }
                }
            }
        }
            
    //查询级联表搜索条件所有列表
            function gongdanTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=gongdan_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        gongdanTypesOptions = res.data.list;
                    }
                });
            }

    //查询当前表搜索条件所有列表
            function gongdanShenheTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=gongdan_shenhe_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        gongdanShenheTypesOptions = res.data.list;
                    }
                });
            }










        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框
            gongdanTypesSelect();

            //查询当前表的搜索下拉框
            gongdanShenheTypesSelect();
            getDataList();

        //级联表的下拉框赋值
                                                                         
                         
                         
            gongdanTypesSelectSearch();
                                                 
                                                                                                 
                         
                         
                                                
        //当前表的下拉框赋值
                                                             
            gongdanShenheTypesSelectSearch();
                                    
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>