<%--
  Created by IntelliJ IDEA.
  User: lyc
  Date: 2018/4/10
  Time: 11:36
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
<table id="MemberRank-table"></table>
<div id="MemberRank-win"></div>
<script type="text/javascript">
    $(function () {//页面刷新执行的事件
        //页面刷新，查询
        searchrMemberRank();
    })

    function searchrMemberRank() {
        $('#MemberRank-table').datagrid({
            url: '<%=request.getContextPath()%>/menberRankController/queryMemberRankList.jhtml',
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
                {field: '', title: '等级编号', width: 100, align: 'center',
                    formatter: function (value, row, index) {
                    return  index+1;
                    }},
                {field: 'name', title: '等级名称', width: 100, align: 'center'},
                {field: 'scale', title: '优惠比例', width: 100, align: 'center'},
                {field: 'amount', title: '消费金额 ', width: 100, align: 'center'},
                {field: 'logindate', title: '最后登录日期', width: 100, align: 'center'},
                {
                    field: 'isDefault', title: '是否默认', width: 100, align: 'center',
                    formatter: function (value, row, index) {
                        if (row.isDefault == 1) {
                            return '<a href="javascript:updateMemberRankisDefault(1)"><img alt="" src="EasyUI/themes/icons/ok.png"></a>';
                        } else {
                            return '<a href="javascript:updateMemberRankisDefault(0)"><img alt="" src="EasyUI/themes/icons/no.png"></a>';
                        }
                    }
                },
                {
                    field: 'isSpecial', title: '是否特殊', width: 100, align: 'center',
                    formatter: function (value, row, index) {
                        if (row.isSpecial == 1) {
                            return '<a href="javascript:updateMemberRankisisSpecial(1)"><img alt="" src="EasyUI/themes/icons/ok.png"></a>';
                        } else {
                            return '<a href="javascript:updateMemberRankisisSpecial(0)"><img alt="" src="EasyUI/themes/icons/no.png"></a>';
                        }
                    }
                },
                /*{   field: 'act', title: '操作', width: 250, align: 'center',
                    formatter: function (value, row, index) {
                        var btxiugai = "<input type='button' value='修改' onclick='updatabyid(\"" + row.userid + "\")'>";
                        var btdel = "<input type='button' value='删除' onclick='deleteUserId(\"" + row.userid + "\")'>";
                        // var btyonghu = "<input type='button' value='用户' onclick='roleAndUser(\"" + row.userid + "\",\"" + row.userid + "\")'>";
                        return btxiugai + btdel ;
                    }
                },*/
            ]], toolbar: [{
                iconCls: 'icon-reload',
                handler: function () {
                    $('#MemberRank-table').datagrid('reload')
                }
            }, '-', {
                iconCls: 'icon-add',
                handler: function () {
                    /* ---------新增MemberRank开始------------*/
                    $('#MemberRank-win').dialog({
                        title: '添加',
                        width: 960,
                        height: 780,
                        closed: false,
                        href: '<%=request.getContextPath()%>/menberRankController/jumpAddMemberRank.jhtml',
                        modal: true,
                        buttons:[{
                            text:'保存',
                            handler:function(){
                                $('#addMemberRank-form').form('submit', {
                                    url:"<%=request.getContextPath()%>/menberRankController/addMemberRank.jhtml",
                                    onSubmit: function(){
                                        return $('#addMemberRank-form').form('validate');
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
                                        $('#MemberRank-win').dialog("close");
                                        $('#MemberRank-table').datagrid('reload')
                                    }
                                });
                            }
                        },{
                            text:'关闭',
                            handler:function(){
                                $('#MemberRank-win').dialog("close");
                            }
                        }]
                    });
                    /*   -----新增MemberRank结束-----*/
                }
            }, '-', {
                iconCls: 'icon-edit',
                handler: function () {
                    var row = $("#MemberRank-table").datagrid('getSelected');
                    var id = row.userid;
                    alert(id);
                }
            }, '-', {
                iconCls: 'icon-remove',
                handler: function () {
                    var row = $("#MemberRank-table").datagrid('getSelected');
                    var id = row.rankid;
                    alert(id);
                    $.ajax({
                        url:"<%=request.getContextPath()%>/menberRankController/deleteMemberRankById.jhtml",
                        type:"post",
                        data:{"id":id},
                        success:function(msg){
                            $.messager.show({
                                title:'提示消息',
                                msg:'已成功删除',
                                timeout:2000,
                                showType:'slide',
                            });
                            $('#MemberRank-table').datagrid('reload')
                        }
                    });
                }
            }, '-', {
                iconCls: 'icon-man',
                handler: function () {
                    var row = $("#MemberRank-table").datagrid('getSelected');
                    var id = row.rankid;
                    alert(id);
                    alert('按钮')
                }
            }]


        });
    }
 </script>
</body>
</html>
