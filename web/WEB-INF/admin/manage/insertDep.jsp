<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加系部</title>
</head>
<body>
<form action="insertDepAct.action" method="post">
    系部名称：<input type="text" name="dep.name"><br>
    办公电话：<input type="text" name="dep.telephone"><br>
    办公地址：<input type="text" name="dep.address"><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
