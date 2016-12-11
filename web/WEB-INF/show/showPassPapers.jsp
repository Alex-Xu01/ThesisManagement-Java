<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看通过论文</title>
</head>
<body>
<table border="1">
    <tr>
        <th>论文标题</th>
        <th>论文类别</th>
        <th>论文来源</th>
        <th>论文导师</th>
        <th>选择人数</th>
        <th>所属学院</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${passPaperList}" var="item">
        <tr>
            <td>${item.title}</td>
            <td>${item.type}</td>
            <td>${item.origin}</td>
            <td>${item.teacher.name}</td>
            <td>${item.numbers}</td>
            <td>${item.dep.name}</td>
            <td>
                <a href="teacherManageAct.action?paperId=${item.id}">查看论文信息</a>
                <a href="choosePaperAct.action?paperId=${item.id}&numbers=${item.numbers}&studentId=${studentId}">选择</a>
            </td>
        </tr>
    </c:forEach>
</table>
<span style="color: #FF0000">${chooseMsg}</span>
</body>
</html>
