<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/5 0005
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理论文</title>
</head>
<body>
<h1>管理论文</h1> <hr>
<table border="1">
    <tr>
        <th>编号</th>
        <th>论文标题</th>
        <th>副标题</th>
        <th>论文类型</th>
        <th>选择人数</th>
        <th>题目来源</th>
        <th>题目描述</th>
        <th>审核状态</th>
        <th>审核意见</th>
        <th>论文录入日期</th>
        <th>录入教师编号</th>
        <th>所属系部编号</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${paperList}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.title}</td>
            <td>${item.subtitle}</td>
            <td>${item.type}</td>
            <td>${item.numbers}</td>
            <td>${item.origin}</td>
            <td>${item.content}</td>
            <td>${item.verifyState}</td>
            <td>${item.verifyMessage}</td>
            <td>${item.releaseDate}</td>
            <td>${item.teacherId}</td>
            <td>${item.depId}</td>
            <td>${item.state}</td>
            <td>
                <a href="teacherManageAct.action?paperId=${item.id}&teacherManage=lookAll">查看详情</a>
                <a href="teacherManageAct.action?paperId=${item.id}">编辑</a>
                <a href="teacherDeleteAct.action?paperId=${item.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
${updateMsg}
${deleteMsg}
</body>
</html>
