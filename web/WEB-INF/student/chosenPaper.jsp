<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>已选择的论文</title>
</head>
<body>
<table border="1">
    <tr>
        <th>ID</th>
        <th>论文标题</th>
        <th>论文类型</th>
        <th>题目来源</th>
        <th>录入教师</th>
        <th>录入时间</th>
    </tr>
    <c:forEach items="${chosenList}" var="item">
        <tr>
            <td>${item.paper.id}</td>
            <td>${item.paper.title}</td>
            <td>${item.paper.type}</td>
            <td>${item.paper.origin}</td>
            <td>${item.paper.teacher.name}</td>
            <td>${item.paper.releaseDate}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
