<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/5 0005
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>申报论文</title>
</head>
<body>
<h1>申报论文</h1> <hr>
<form action="teacherDeclarationAct.action" method="post">
    <input type="number" name="id" value="${id}" style="display: none">
    论文题目：<input type="text" name="paperinfo.title"><br>
    副标题：<input type="text" name="paperinfo.subtitle"><br>
    论文类型：
    <select name="paperinfo.type">
        <option value="毕业论文">毕业论文</option>
        <option value="毕业设计">毕业设计</option>
    </select><br>
    允许选择题目的学生数量：<input type="number" name="paper.numbers"><br>
    题目来源：
    <select name="paperinfo.origin">
        <option value="生产实践">生产实践</option>
        <option value="科学研究">科学研究</option>
        <option value="自拟">自拟</option>
    </select> <br>
    题目说明：<textarea name="paperinfo.content" rows="10" cols="40"></textarea> <br>
    <input type="submit" value="提交">
</form>
<%--<c:forEach items="${message}" var="msg">--%>
    <%--${msg.value} <br>--%>
<%--</c:forEach>--%>
<c:forEach items="${errors}" var="err">
    ${err.value} <br>
</c:forEach>
</body>
</html>
