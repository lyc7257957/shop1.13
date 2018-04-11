<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/5
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>

<html>

<head>
    <title>Title</title>
</head>
<body>


  <table id="dg" ></table>
  <div id="adda4"></div>
  <div id="delete"></div>
  <div id="upd2a"></div>
<script>

    $(function(){

        selectTypeData()
    })
    function selectTypeData(){
        $('#dg').datagrid({
           url:'<%=request.getContextPath()%>/lpcontroller/parameterhcha.jhtml',
            columns:[[
                {field:'aa',title:'xx',checkbox:true},
                {field:'id',title:'编号',width:100},
                {field:'name',title:'名字',width:100},
                {field:'nameq',title:'绑定分类',width:100},
//                {field:'name',title:'参数',width:100},
                {field:'orders',title:'排序',width:100},
                {field:'aaaxczc',title:'操作',width:100,
                    formatter: function(value,row,index){
                        return "<a href=''>编辑</a>";
                    }

                }

            ]],
            pagination:true,
	        pageList:[4,3,1],
            pageSize:4,
            pageNumber:1,

            toolbar: [{
                //新增
                iconCls :"icon-group_add",
                text: '新增',
                handler: function(){
                    $('#adda4').dialog({
                        title: '添加',
                        width: 400,
                        height: 300,
                        modal: true,//模态化
                        closable:false,//是否显示关闭按钮
                        href: '<%=request.getContextPath()%>/lpcontroller/seriesadd.jhtml',
                        buttons:[{
                            text:'确定',
                            handler:function(){

                                $.messager.confirm('确认','您确认想要新增记录吗？',function(r){
                                    if (r){
                                        // 									提交add-form form表单
                                        $('#csaddid').form('submit', {
                                            url:"<%=request.getContextPath() %>/lpcontroller/addzeng2.jhtml",
                                            onSubmit: function(){
                                                return  true;
                                            },
                                            success:function(data){
                                                if(data > 0){
                                                    $('#adda4').dialog('close');
                                                   // $("#dg").datagrid("reload");
                                                    selectTypeData()
                                                }
                                            }
                                        });
                                    }
                                    $.messager.show({
                                        title:'我的消息',
                                        msg:'新增成功',
                                        timeout:5000,
                                        showType:'slide'
                                    });

                                });

                            }
                        },{
                            text:'返回',
                            handler:function(){
                                $('#adda4').dialog('close');
                            }
                        }]
                    });
                }
                //修改
            },'-',{
                iconCls: 'icon-group_update',
                text: '修改',
                handler: function(){
                    //获取被选中的选项 ，判断是否只选中了一条
                    var arrObj = $('#dg').datagrid('getChecked');
                    console.info(arrObj);

                    if(arrObj.length == 1){
                        $('#upd2a').dialog({
                            title: '修改',
                            width: 400,
                            height: 300,
                            href: '<%=request.getContextPath()%>/lpcontroller/huixian1.jhtml?id='+arrObj[0].id,
                            modal: true   ,//模态化
                            closable:false,//是否显示关闭按钮
                            buttons:[{
                                text:'修改',
                                handler:function(){

                                    $.messager.confirm('确认','您确认想要修改记录吗？',function(r){
                                        if (r){

                                            $('#updatexiugai').form('submit', {
                                                url:"<%=request.getContextPath()%>/lpcontroller/updatexiugai4.jhtml",
                                                onSubmit: function(){
                                                    return  true;
                                                },
                                                success:function(data){
                                                    if(data > 0){
                                                        $('#upd2a').dialog('close');
                                                        selectTypeData()
                                                    }
                                                }
                                            });

                                            $.messager.show({
                                                title:'我的消息',
                                                msg:'修改成功',
                                                timeout:5000,
                                                showType:'slide'
                                            });

                                        }
                                    });

//
                                }
                            },{
                                text:'关闭',
                                handler:function(){
                                    $('#upd2a').dialog('close');
                                }
                            }]
                        });
                    }else{
                        alert("每次能且只能修改一条数据！！！")
                    }
                }
            },
                {
                    iconCls: 'icon-group_delete',
                    text: '批量删除',
                    handler: function(){
                        //获取被选中的选项 ，判断是否只选中了一条

                        var ids ="";
                        var s= $("#dg").datagrid("getChecked");
                        for (var i = 0; i < s.length; i++) {
                            ids+=","+s[i].id;//改ID
                        }
                        ids=ids.substr(1);



//                        console.info(arrObj);

                        $.messager.confirm('确认','您确认想要删除记录吗？',function(r){
                            if (r){

                                $.ajax({
                                    url:"<%=request.getContextPath()%>/lpcontroller/deleteshan6.jhtml",
                                    type:"post",
                                    data:{"id":ids},//记住改ID
                                    dataType:"text",
                                    success:function(){
                                        $("#dg").datagrid("reload");

                                    }

                                })
                            }
                            $.messager.show({
                                title:'我的消息',
                                msg:'删除成功',
                                timeout:5000,
                                showType:'slide'
                            });

                        });

                    }
                }],
    });
    }




</script>



</body>
</html>
