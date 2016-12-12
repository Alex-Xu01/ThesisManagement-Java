<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户信息</title>
</head>
<body>
<form action="editStudentAct.action" method="post">
    姓名：<input type="text" name="student.name" value="${student.name}"> <br>
    电话：<input type="text" name="student.phone" value="${student.phone}"> <br>
    电子邮箱：<input type="text" name="student.email" value="${student.email}"> <br>
    性别：<input type="text" name="student.gender" value="${student.gender}"> <br>
    所属系部：
    <select name="student.dep.id" value="${student.dep.id}">
        <c:forEach items="${depList}" var="item">
            <option value="${item.id}">${item.name}</option>
        </c:forEach>
    </select><br>
    <input type="number" name="student.id" value="${student.id}" style="display:none;">
    <input type="text" name="student.picPath" value="${student.picPath}" style="display:none;">
    <input type="number" name="student.accountId" value="${student.accountId}" style="display:none;">
    <input type="number" name="student.state" value="${student.state}" style="display:none;">
    <input type="submit" value="确定">
</form>
</body>
</html>
