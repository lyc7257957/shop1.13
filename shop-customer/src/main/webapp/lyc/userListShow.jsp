<%--
  Created by IntelliJ IDEA.
  User: lyc
  Date: 2018/4/9
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<!-- 数据展示的表格 -->
<table id="user-table"></table>
<div id="user-win"></div>
<script type="text/javascript">
    $(function () {//页面刷新执行的事件
        //页面刷新，查询
        searchUser();
    })

    function searchUser() {
        $('#user-table').datagrid({
            url: '<%=request.getContextPath()%>/userController/queryUserList.jhtml',
            //queryParams:{areaname:$("#areaname").val()},
            //pagination:true,//开启分页
            //pageNumber:1,//初始化页码
            //pageSize:3,//每页条数
            //pageList:[3,6,9,12],
            checkOnSelect: false,
            selectOnCheck: false,
            singleSelect: true,
            columns: [[
                //{field:'che',checkbox:true},
                //field:尽可能对应实体类中的属性名，必须保证唯一性    title：列标题   width：每列宽度
                {field: 'username', title: '用户名', width: 100, align: 'center'},
                {field: 'name', title: '姓名', width: 100, align: 'center'},
                {field: 'userlv', title: '用户等级', width: 100, align: 'center'},
                {field: 'email', title: 'email', width: 100, align: 'center'},
                {field: 'logindate', title: '最后登录日期', width: 100, align: 'center'},
                {
                    field: 'isenabled', title: '状态', width: 100, align: 'center',
                    formatter: function (value, row, index) {
                        if (row.isenabled == 1) {
                            return '<a href="javascript:updateOfroleCode(1)"><img alt="" src="EasyUI/themes/icons/ok.png"></a>';
                        } else {
                            return '<a href="javascript:updateOfroleCode(0)"><img alt="" src="EasyUI/themes/icons/no.png"></a>';
                        }
                    }
                },
                {   field: 'act', title: '操作', width: 250, align: 'center',
                    formatter: function (value, row, index) {
                        var btxiugai = "<input type='button' value='修改' onclick='updatabyid(\"" + row.userid + "\")'>";
                        var btdel = "<input type='button' value='删除' onclick='deleteUserId(\"" + row.userid + "\")'>";
                       // var btyonghu = "<input type='button' value='用户' onclick='roleAndUser(\"" + row.userid + "\",\"" + row.userid + "\")'>";
                        return btxiugai + btdel ;
                    }
                },
            ]], toolbar: [{
                iconCls: 'icon-reload',
                handler: function () {
                    var row = $("#user-table").datagrid('getSelected');
                    var id = row.userid;
                    alert(id);
                }
            }, '-', {
                iconCls: 'icon-add',
                handler: function () {
                   /* ---------新增用户开始------------*/
                    $('#user-win').dialog({
                        title: '添加',
                        width: 960,
                        height: 780,
                        closed: false,
                        href: '<%=request.getContextPath()%>/userController/jumpAddUser.jhtml',
                        modal: true,
                        buttons:[{
                            text:'保存',
                            handler:function(){
                                $('#addUser-form').form('submit', {
                                    url:"<%=request.getContextPath()%>/userController/addUser.jhtml",
                                    onSubmit: function(){
                                        return $('#addUser-form').form('validate');
                                    },
                                    success:function(){
                                        $.messager.show({
                                            title:'提示消息',
                                            msg:'新增成功',
                                            timeout:2000,
                                            showType:'slide',
                                            style:{
                                            }
                                        });
                                        $('#user-win').dialog("close");
                                        $('#user-table').datagrid('reload')
                                    }
                                });
                            }
                        },{
                            text:'关闭',
                            handler:function(){
                                $('#user-win').dialog("close");
                            }
                        }]
                    });
                    /*   -----新增用户结束-----*/
                }
            }, '-', {
                iconCls: 'icon-edit',
                handler: function () {
                    var row = $("#user-table").datagrid('getSelected');
                    var id = row.userid;
                    alert(id);
                }
            }, '-', {
                iconCls: 'icon-remove',
                handler: function () {
                    var row = $("#user-table").datagrid('getSelected');
                    var id = row.userid;
                    alert(id);
                }
            }, '-', {
                iconCls: 'icon-man',
                handler: function () {
                    var row = $("#user-table").datagrid('getSelected');
                    var id = row.userid;
                    alert(id);
                    alert('按钮')
                }
            }]


        });
    }

    function deleteUserId(id) {
        $.ajax({
            url: "<%=request.getContextPath()%>/roleController/deleteRoleById.do?id=" + id,
            success: function (msg) {
                $.messager.show({
                    title: '提示消息',
                    msg: '已成功删除',
                    timeout: 2000,
                    showType: 'slide',
                });
                $('#user-table').datagrid('reload')
            }
        })

    }




    function updatabyid() {
        var row = $("#rolelist-table").datagrid('getSelected');
        var id = row.roleid;
        $('#role-win').dialog({
            title: '修改',
            width: 260,
            height: 220,
            closed: false,
            href: '<%=request.getContextPath()%>/roleController/queryById.do?id=' + id,
            modal: true,
            buttons: [{
                text: '保存',
                handler: function () {
                    $('#addUser-form').form('submit', {
                        url: "<%=request.getContextPath()%>/roleController/updateById.do",
                        onSubmit: function () {
                            return $('#addUser-form').form('validate');
                        },
                        success: function (data) {
                            $.messager.show({
                                title: '提示消息',
                                msg: '新增成功',
                                timeout: 2000,
                                showType: 'slide',
                                style: {}
                            });
                            $('#user-win').dialog("close");
                            $('#user-table').datagrid('reload')
                        }
                    });
                }
            }, {
                text: '关闭',
                handler: function () {
                    $('#role-win').dialog("close");
                }
            }]
        });
    }
</script>
</body>
</html>
