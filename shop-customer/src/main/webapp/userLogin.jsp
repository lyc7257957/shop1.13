<%--
  Created by IntelliJ IDEA.
  User: lyc
  Date: 2018/4/11
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登陆</title>
    <style>
        *{
            padding:0px;
            margin:0px;
        }

        body{
            font-family:Arial, Helvetica, sans-serif;
            background:url(images/grass.jpg);
            font-size:13px;

        }
        img{
            border:0;
        }
        .lg{width:468px; height:468px; margin:100px auto; background:url(images/login_bg.png) no-repeat;}
        .lg_top{ height:200px; width:468px;}
        .lg_main{width:400px; height:180px; margin:0 25px;}
        .lg_m_1{
            width:290px;
            height:100px;
            padding:60px 55px 20px 55px;
        }
        .ur{
            height:37px;
            border:0;
            color:#666;
            width:236px;
            margin:4px 28px;
            background:url(images/user.png) no-repeat;
            padding-left:10px;
            font-size:16pt;
            font-family:Arial, Helvetica, sans-serif;
        }
        .pw{
            height:37px;
            border:0;
            color:#666;
            width:236px;
            margin:4px 28px;
            background:url(images/password.png) no-repeat;
            padding-left:10px;
            font-size:16pt;
            font-family:Arial, Helvetica, sans-serif;
        }
        .bn{width:330px; height:72px; background:url(images/enter.png) no-repeat; border:0; display:block; font-size:18px; color:#FFF; font-family:Arial, Helvetica, sans-serif; font-weight:bolder;}
        .lg_foot{
            height:80px;
            width:330px;
            padding: 6px 68px 0 68px;
        }
    </style>
    <title>Insert title here</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/plugins/jquery.treegrid.js"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/EasyUI/themes/icon.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/uploadify/uploadify.css">
</head>

<body class="b">
<div class="lg">
    <form id="loginForm" method="POST">
        <div class="lg_top"></div>
        <div class="lg_main">
            <div class="lg_m_1">

                <input name="username" value="lyc" class="ur" />
                <input name="password" type="password" value="123" class="pw" />

            </div>
        </div>
        <div class="lg_foot">
            <input type="button" value="Login In" class="bn" onclick="loginUser()"/></div>
    </form>
</div>
<div >
    <p>来源:<a href="http://www.mycodes.net/" target="_blank">1709A班</a></p>
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
    function loginUser(){
        alert("!!!");
        $.ajax({
            url: "<%=request.getContextPath()%>/userController/loginUser.jhtml",
            type:"post",
            data:$("#loginForm").serialize(),
            dataType:"text",
            success: function (msg) {
                location.href="index.jsp";
            }
        })
    }
</script>
</body>
</html>
