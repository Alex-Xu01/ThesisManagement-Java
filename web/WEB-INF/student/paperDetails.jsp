<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>论文详细信息</title>
</head>
<body>
<table border="1">
    <tr>
        <th>论文标题</th>
        <th>副标题</th>
        <th>论文类型</th>
        <th>尚可选择</th>
        <th>题目来源</th>
        <th>题目描述</th>
        <th>录入时间</th>
        <th>录入教师</th>
        <th>教师职称</th>
        <th>教师专长</th>
        <th>所属系部</th>
    </tr>
    <tr>
        <td>${paperInfo.title}</td>
        <td>${paperInfo.subtitle}</td>
        <td>${paperInfo.type}</td>
        <td>${paperInfo.numbers}</td>
        <td>${paperInfo.origin}</td>
        <td>${paperInfo.content}</td>
        <td>${paperInfo.releaseDate}</td>
        <td>${paperInfo.teacher.name}</td>
        <td>${paperInfo.teacher.title}</td>
        <td>${paperInfo.teacher.specialty}</td>
        <td>${paperInfo.dep.name}</td>
    </tr>
</table>
</body>
</html>
