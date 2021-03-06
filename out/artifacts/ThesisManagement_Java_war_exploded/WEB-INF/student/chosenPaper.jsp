<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>已选择的论文</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<table border="1">--%>
    <%--<tr>--%>
        <%--<th>ID</th>--%>
        <%--<th>论文标题</th>--%>
        <%--<th>论文类型</th>--%>
        <%--<th>题目来源</th>--%>
        <%--<th>录入教师</th>--%>
        <%--<th>录入时间</th>--%>
    <%--</tr>--%>
    <%--<c:forEach items="${chosenList}" var="item">--%>
        <%--<tr>--%>
            <%--<td>${item.paper.id}</td>--%>
            <%--<td>${item.paper.title}</td>--%>
            <%--<td>${item.paper.type}</td>--%>
            <%--<td>${item.paper.origin}</td>--%>
            <%--<td>${item.paper.teacher.name}</td>--%>
            <%--<td>${item.paper.releaseDate}</td>--%>
            <%--<div class="button-group"><a class="button border-main" href="Student_Paper_select.html"><span--%>
                    <%--class="icon-edit"></span>详细</a>--%>
            <%--</div>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>


<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
    <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder"> 论题选择</strong></div>
        <table class="table table-hover text-center">
            <tr>
                <th width="51" style="text-align:left; padding-left:20px;">ID</th>
                <th>论文标题</th>
                <th>论文类型</th>
                <th>题目来源</th>
                <th>录入教师</th>
                <th>录入时间</th>
                <th>操作</th>
            </tr>
            <volist name="list" id="vo">
                <c:forEach items="${chosenList}" var="item">
                    <tr>
                        <td>${item.paper.id}</td>
                        <td>${item.paper.title}</td>
                        <td>${item.paper.type}</td>
                        <td>${item.paper.origin}</td>
                        <td>${item.paper.teacher.name}</td>
                        <td>${item.paper.releaseDate}</td>
                        <td>
                            <div class="button-group"><a class="button border-main"
                                                         href="choosePaperPre.action?paperId=${item.paper.id}&chooseMsg=details"><span
                                    class="icon-edit"></span>详细</a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </volist>
            <tr>
                <td colspan="8">
                    <div class="pagelist"><a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
                            href="">3</a><a href="">下一页</a><a href="">尾页</a></div>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>