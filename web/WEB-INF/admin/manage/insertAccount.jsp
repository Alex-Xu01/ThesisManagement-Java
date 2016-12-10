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
    <title>新增账户</title>
</head>
<body>
<form action="insertAccountAct.action" method="post">
    登录名：<input type="text" name="account.loginName"><br>
    密码：<input type="password" name="account.loginPwd"><br>
    身份：
    <select name="account.role">
        <option value="0">管理员</option>
        <option value="1">教师</option>
        <option value="2">学生</option>
    </select><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
