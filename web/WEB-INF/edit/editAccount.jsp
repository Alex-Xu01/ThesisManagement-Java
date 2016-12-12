<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改账户信息</title>
</head>
<body>
<form action="editAccountAct.action" method="post">
    修改用户名：<input type="text" name="account.loginName" value="${account.loginName}"><br>
    修改密码：<input type="password" name="account.loginPwd" value="${account.loginPwd}"><br>
    <input type="submit" value="确定">
    <input type="number" name="account.id" value="${account.id}" style="display:none;">
    <input type="number" name="account.role" value="${account.role}" style="display:none;">
    <input type="number" name="account.state" value="${account.state}" style="display:none;">
</form>
</body>
</html>
