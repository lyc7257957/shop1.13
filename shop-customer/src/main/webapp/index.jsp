<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/plugins/jquery.treegrid.js"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/uploadify/uploadify.css">
</head>
<body>
<div id="cc" class="easyui-layout" data-options="fit:true" style="width:600px;height:400px;">
    <div data-options="region:'north',title:'欢迎',split:true" style="height:100px;">
        <div style="text-align: center;width:100%;">
            <table>
                <tr>
                    <td width="10%">
                        <img src="<%=request.getContextPath()%>/images/header_logo.gif"/>
                    </td>
                    <td width="*%" align="center">
                        <h1><span style="color: red; ">欢迎<span style="color: blue; ">${loginName}</span>来到本系统</span></h1>
                    </td>
                </tr>
            </table>


        </div>
    </div>
    <!--  <div data-options="region:'south',title:'South Title',split:true" style="height:100px;"></div> -->
    <!--  <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;"></div>    -->
    <div data-options="region:'west',title:'导航',split:true" style="width:150px;">
        <ul id="menu-tree">
            <!-- <div id="aa" class="easyui-accordion" style="width:300px;height:200px;">
            </div>  -->
        </ul>
    </div>
    <div data-options="region:'center',title:'内容'" style="padding:5px;background:#eee;" >
        <div id="tt" class="easyui-tabs" >
            <div title="首页" >
                <div style="background-color: pink;width: auto;height:auto">
                    <div style="text-align: center;" data-options="fit:true">
                        <span style="color: red; ">欢迎光临！</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.min.js"></script>
    <!-- 引入EasyUI -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/jquery.easyui.min.js"></script>
    <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/EasyUI/util-js.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/uploadify/jquery.uploadify.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#tt').tabs({
                fit: true,
            });
            $('#menu-tree').tree({//初始化菜单树
                url: '<%=request.getContextPath()%>/treeController/queryTreeList.jhtml',
                parentField: 'pid',//实体类中父节点id的属性名
                checkbox: true,
                lines: true,
                onClick: function (node) {//node：点击的节点对象
                    if (node.url != null && node.url != '') {
                        addTabs(node.url, node.text);
                    }
                }
            });

            $('#menu-tree').tree({
                onCheck: function (node, checked) {
                    alert("复选框选中/取消" + node.id);
                }
            });

        })
        function addTabs(urlStr, titleStr) {
            var flag = $('#tt').tabs('exists', titleStr);//判断选项卡是否已经打开
            if (flag) {//已打开：不添加   切换到此选项卡页面
                $('#tt').tabs('select', titleStr);
            } else {
                //选择器。组件名（方法名，{设置该方法的参数}）
                $('#tt').tabs('add', {
                    title: titleStr,
                    //content:'大家不要困',
                    href: "<%=request.getContextPath()%>/" + urlStr,
                    closable: true, //关闭按钮
                    tools: [{// 设置工具
                        iconCls: 'icon-mini-refresh',//图标
                        handler: function () {// 点击图标后触发的函数
                            alert('refresh');
                        }
                    }]
                });
            }
        }
    </script>
</body>
</html>