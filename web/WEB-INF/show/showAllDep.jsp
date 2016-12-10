<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系部信息</title>
</head>
<body>
<a href="dispatcherInsertDep.action">添加</a>
<table border="1">
    <tr>
        <th>系部编号</th>
        <th>系部名称</th>
        <th>办公电话</th>
        <th>办公地址</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${depList}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.telephone}</td>
            <td>${item.address}</td>
            <td>${item.state}</td>
            <td>
                <a href="updateDepPre.action?depId=${item.id}">编辑</a>
                <a href="deleteDepAct.action?depId=${item.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
${insertMsg}
${updateMsg}
${deleteMsg}
</body>
</html>
