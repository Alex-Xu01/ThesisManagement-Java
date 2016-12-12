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
    <title>学生页面</title>
</head>
<body>
<h1>您的身份是学生！您的ID是${id}</h1>
<a href="queryPassPapers.action?studentId=${id}">查看论文题目</a>
<a href="showChoose.action?studentId=${id}">查看已选论文</a>
<a href="dispatcherEditAccount.action?id=${id}">修改账户信息</a>
<a href="dispatcherEditStudent.action?id=${id}">修改用户信息</a>
<br>${updateMsg}
</body>
</html>
