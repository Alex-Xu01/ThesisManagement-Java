<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改用户信息</title>
</head>
<body>
<form action="editTeacherAct.action" method="post">
    姓名：<input type="text" name="teacher.name" value="${teacher.name}">
    电话：<input type="text" name="teacher.phone" value="${teacher.phone}">
    电子邮件：<input type="text" name="teacher.email" value="${teacher.email}">
    职称：<input type="text" name="teacher.title" value="${teacher.title}">
    专长：<input type="text" name="teacher.specialty" value="${teacher.specialty}">
    所属系部：
    <select name="teacher.dep.id" value="${teacher.dep.id}">
        <c:forEach items="${depList}" var="item">
            <option value="${item.id}">${item.name}</option>
        </c:forEach>
    </select><br>
    <input type="submit" value="确定">
    <input type="number" name="teacher.id" value="${teacher.id}" style="display:none;">
    <input type="number" name="teacher.account.id" value="${teacher.account.id}" style="display:none;">
    <input type="number" name="teacher.state" value="${teacher.state}" style="display:none;">
</form>
</body>
</html>
