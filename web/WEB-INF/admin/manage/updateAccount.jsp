<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑账户</title>
</head>
<body>
<form action="updateAccountAct.action" method="post">
    修改登录名：<input type="text" name="account.loginName" value="${account.loginName}"><br>
    修改密码：<input type="password" name="account.loginPwd" value="${account.loginPwd}"><br>
    修改身份：
    <select name="account.role"  value="${account.role}">
        <option value="0">管理员</option>
        <option value="1">教师</option>
        <option value="2">学生</option>
    </select><br>
    <input type="number" name="account.id" value="${account.id}" style="display:none;">
    <input type="number" name="account.state" value="${account.state}" style="display:none;">
    <input type="submit" value="提交">
</form>
</body>
</html>
