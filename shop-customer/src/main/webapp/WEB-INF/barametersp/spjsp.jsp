<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/10
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table id="barameterbd"></table>
<div id="sxadd"></div>
<script>
$(function(){

    barameterfy();
})
    function barameterfy(){
        $('#barameterbd').datagrid({
            url:'<%=request.getContextPath()%>/lpcontroller/selectbarameter.jhtml',
            columns:[[
                {field:'aaaa',title:'xx',checkbox:true},
                {field:'attributefuid',title:'编号',width:100},
//                {field:'attributecreatedate',title:'名称',width:100},
                {field:'optionsname',title:'定邦分类',width:100},
                {field:'car_jizuo',title:'可选项',width:700,
                    formatter: function(value,row,index){
                        var sername1 = "";
                        var ss = row.serises1;
                        console.info(ss)
                        for (var i = 0; i < ss.length; i++) {
                            sername1 += row.serises1[i].attributename +","
                        }
                        sername1 = sername1.substring(0,sername1.length-1)
                        return sername1;
                    }


                }


            ]],

            toolbar: [{
                //新增
                iconCls :"icon-group_add",
                text: '新增',
                handler: function(){
                    $('#sxadd').dialog({
                        title: '添加',
                        width: 400,
                        height: 300,
                        modal: true,//模态化
                        closable:false,//是否显示关闭按钮
                        href: '<%=request.getContextPath()%>/lpcontroller/sujsp.jhtml',
                        buttons:[{
                            text:'确定',
                            handler:function(){

                                $.messager.confirm('确认','您确认想要新增记录吗？',function(r){
                                    if (r){
                                        // 									提交add-form form表单
                                        $('#sxaddjia').form('submit', {
                                            url:"<%=request.getContextPath() %>/lpcontroller/sxaddjiaa.jhtml",
                                            onSubmit: function(){
                                                return  true;
                                            },
                                            success:function(data){
                                                if(data > 0){
                                                    $('#sxadd').dialog('close');
                                                    // $("#dg").datagrid("reload");
                                                    barameterfy();
                                                }
                                            }
                                        });
                                    }
                                    $.messager.show({
                                        title:'我的消息',
                                        msg:'消息将在5秒后关闭。',
                                        timeout:5000,
                                        showType:'slide'
                                    });

                                });

                            }
                        },{
                            text:'返回',
                            handler:function(){
                                $('#sxadd').dialog('close');
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
                                                msg:'消息将在5秒后关闭。',
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

                        var idsshu ="";
                        var s= $("#barameterbd").datagrid("getChecked");
                        for (var i = 0; i < s.length; i++) {
                            idsshu+=","+s[i].attributefuid;//改ID
                        }
                        idsshu=idsshu.substr(1);



//                        console.info(arrObj);

                        $.messager.confirm('确认','您确认想要删除记录吗？',function(r){
                            if (r){

                                $.ajax({
                                    url:"<%=request.getContextPath()%>/lpcontroller/deleteshuxing.jhtml",
                                    type:"post",
                                    data:{"attributefuid":idsshu},//记住改ID
                                    dataType:"text",
                                    success:function(){
                                        $("#barameterbd").datagrid("reload");

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

            pagination:true,
	pageList:[4,3,1],
            pageSize:4,
                pageNumber:1,
    });
    }
</script>
</body>
</html>
