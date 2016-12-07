<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/5 0005
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师页面</title>
</head>
<body>
<h1>您的身份是教师！您的ID是${id}</h1> <hr>
请选择功能：
<form action="teacherFunctionAct" method="post">
    <select name="functionChoice">
        <option value="reporting" selected="true">申报论文</option>
        <option value="manage">管理论文</option>
    </select>
    <input type="submit" value="选择">
</form>
</body>
</html>
