<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/5 0005
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看详情</title>
</head>
<body>
<h1>查看详情</h1> <hr>
<table border="1">
    <tr>
        <th>标题</th>
        <th>副标题</th>
        <th>论文类型</th>
        <th>允许学生选择的数量</th>
        <th>论文来源</th>
        <th>论文说明</th>
        <th>审核状态</th>
        <th>审核说明</th>
        <th>申报日期</th>
        <th>教师编号</th>
        <th>系部编号</th>
        <th>论文状态</th>
    </tr>
    <tr>
        <td>${paperInfo.title}</td>
        <td>${paperInfo.subtitle}</td>
        <td>${paperInfo.type}</td>
        <td>${paperInfo.numbers}</td>
        <td>${paperInfo.origin}</td>
        <td>${paperInfo.content}</td>
        <td>${paperInfo.verifyState}</td>
        <td>${paperInfo.verifyMessage}</td>
        <td>${paperInfo.releaseDate}</td>
        <td>${paperInfo.teacherId}</td>
        <td>${paperInfo.depId}</td>
        <td>${paperInfo.state}</td>
    </tr>
</table>
</body>
</html>
