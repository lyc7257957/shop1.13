<%--
  Created by IntelliJ IDEA.
  User: lyc
  Date: 2018/4/10
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div style="text-align: center;">
    <form id="addMemberRank-form" method="post">
        <div>
            <label for="username">会员等级名称</label>
            <input class="easyui-validatebox" type="text" name="name" data-options="required:true" value="${memberRank.name}" />
            <input type="hidden" name="rankid" value="${memberRank.rankid}"/>
        </div>
        <div>
            <label for="scale">优惠比例</label>
            <input class="easyui-validatebox"  type="text"  data-options="required:true" name="scale" value="${memberRank.scale}" />
        </div>
        <div>
            <label for="amount">消费金额</label>
            <input class="easyui-validatebox" type="text" name="amount" data-options="required:true" value="${memberRank.amount}" />
        </div>
        <div>
            <input type="radio" name="isDefault" value="1"  data-options="iconCls:'icon-search'" style="width:30px;height:30px"
                   <c:if test="${memberRank.isDefault==1}">checked</c:if>
            >默认
            <input type="radio" name="isDefault" value="0"  data-options="iconCls:'icon-search'" style="width:30px;height:30px"
                   <c:if test="${memberRank.isDefault==0}">checked</c:if>
            >非默认
        </div>
        <div>
            <input type="radio" name="isSpecial" value="1"  data-options="iconCls:'icon-search'" style="width:30px;height:30px"
                   <c:if test="${memberRank.isSpecial==1}">checked</c:if>
            >特殊
            <input type="radio" name="isSpecial" value="0"  data-options="iconCls:'icon-search'" style="width:30px;height:30px"
                   <c:if test="${memberRank.isSpecial==0}">checked</c:if>
            >非特殊
        </div>
    </form>
</div>
</body>
</html>
