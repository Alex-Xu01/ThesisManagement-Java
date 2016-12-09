<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看账户</title>
</head>
<body>
<a href="dispatcherInsertAccount.action">添加</a>
<table border="1">
    <tr>
        <th>用户编号</th>
        <th>登录名</th>
        <th>密码</th>
        <th>身份</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${accountList}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.loginName}</td>
            <td>${item.loginPwd}</td>
            <td>${item.role}</td>
            <td>
                <a href="updateAccountPre.action?accountId=${item.id}">编辑</a>
                <a href="deleteAccountAct.action?accountId=${item.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
${insertMsg}
${updateMsg}
${deleteMsg}
</body>
</html>
