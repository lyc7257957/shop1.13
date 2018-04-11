<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/6
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<baody>



    <%--<input name="check" id="ch" type="checkbox" onclick="check()"/>--%>



    <form method="post" id="updatexiugai">

        <input type="hidden" name="id" value="${cshx.id}">
        <center>
            <table>
                <%--<tr>--%>
                    <%--<td>定邦分类：</td>--%>
                    <%--<td>--%>
                        <%--<select name="name">--%>
                            <%--<c:forEach items="${cshx}" var="b">--%>
                                <%--<option value="${b.id }">${b.name}</option>--%>

                            <%--</c:forEach>--%>


                        <%--</select>--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <tr>
                    <td>创建日期:</td>
                    <td><input type="text" id="startDate" value="${cshx.createDate}" name="createDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width: 182px;"></td>
                </tr>
                <tr>
                    <td>修改日期:</td>
                    <td><input type="text" id="endDate"  value="${cshx.modifyDate}" name="modifyDate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width: 182px;"></td>
                </tr>
                <tr>
                    <td>排序:</td>
                    <td><input type="text" name="orders" value="${cshx.orders}"></td>
                </tr>
                <tr>
                    <td> <input type="button" value="增加" onclick="setValue()"></td>
                    <td></td>
                </tr>


            </table>
            <%--追加--%>

            <table id="addTable">
                <tbody id="templeteTBody"  style="display: none;">
                <tr>
                    <td><input type="text" name="parameter"/></td>
                </tr>

                </tbody>
                <tbody id="footTbody">
                </tbody>

            </table>
    </form>
    </center>
    <script>
        function setValue(){
            var tbody=addRow();
        }

        function addRow() {
            var table = document.getElementById("addTable");
            var tbody = document.getElementById("templeteTBody");
            var newTBody = tbody.cloneNode(true);
            newTBody.style.display="";
            var footTBody = document.getElementById("footTbody");
            return table.insertBefore(newTBody,footTBody);
        }
    </script>

</baody>
</html>
