<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑系部</title>
</head>
<body>
<form action="updateDepAct.action" method="post">
    修改系部名称：<input type="text" name="dep.name" value="${dep.name}"><br>
    修改办公电话：<input type="text" name="dep.telephone" value="${dep.telephone}"><br>
    修改办公地址：<input type="text" name="dep.address" value="${dep.address}"><br>
    <input type="number" name="dep.state" value="${dep.state}" style="display: none">
    <input type="number" name="dep.id" value="${dep.id}" style="display: none">
    <input type="submit" value="提交">
</form>
</body>
</html>
