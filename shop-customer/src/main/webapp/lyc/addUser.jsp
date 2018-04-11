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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

<div style="text-align: center;">
    <form id="addUser-form" method="post">
        <div>
            <label for="username">用户名</label>
            <input class="easyui-validatebox" type="text" name="username" data-options="required:true" value="${user.username}" />
            <input type="hidden" name="userid" value="${user.userid}"/>
        </div>
        <div>
            <label for="name">姓名</label>
            <input class="easyui-validatebox" type="text" name="name" data-options="required:true" value="${user.name}" />
        </div>
        <div>
            <label for="email">邮箱</label>
            <input class="easyui-combobox" data-options="required:true,validType:'select'" name="email" value="${user.email}" />
        </div>
        <div>
            <input type="radio" name="isenabled" value="1"  data-options="iconCls:'icon-search'" style="width:30px;height:30px"
                   <c:if test="${user.isenabled==1}">checked</c:if>
            >有效
            <input type="radio" name="isenabled" value="2"  data-options="iconCls:'icon-search'" style="width:30px;height:30px"
                   <c:if test="${user.isenabled==2}">checked</c:if>
            >无效
        </div>
        <div>
            <input type="radio" name="islocked" value="1"  data-options="iconCls:'icon-search'" style="width:30px;height:30px"
                   <c:if test="${user.islocked==1}">checked</c:if>
            >未锁定
            <input type="radio" name="isenabled" value="2"  data-options="iconCls:'icon-search'" style="width:30px;height:30px"
                   <c:if test="${user.islocked==2}">checked</c:if>
            >锁定
        </div>
    </form>
</div>
</body>
</html>