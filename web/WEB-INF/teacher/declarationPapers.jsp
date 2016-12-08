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
<form action="declarationAndManageAct" method="post">
    <input type="number" name="teacherId" value="${teacher.id}" style="display: none">
    <input type="number" name="depId" value="${teacher.department.id}" style="display: none">
    论文题目：<input type="text" name="title"><span style="color: #FF0000">*</span> <br>
    副标题：<input type="text" name="subtitle"><br>
    论文类型：
    <select name="type">
        <option value="graduationThesis">毕业论文</option>
        <option value="graduationDesign">毕业设计</option>
    </select><span style="color: #FF0000">*</span><br>
    允许选择题目的学生数量：<input type="number" name="number"> <span style="color: #FF0000">*</span><br>
    题目来源：
    <select name="origin">
        <option value="practice">生产实践</option>
        <option value="research">科学研究</option>
        <option value="other">自拟</option>
    </select> <span style="color: #FF0000">*</span><br>
    题目说明：<textarea name="desc" rows="10" cols="40"></textarea> <br>
    注：“<span style="color: #FF0000">*</span>”为必填项目。<br>
    <input type="submit" value="提交">
</form>
<c:forEach items="${message}" var="msg">
    ${msg.value} <br>
</c:forEach>
<c:forEach items="${errors}" var="err">
    ${err.value} <br>
</c:forEach>
</body>
</html>
