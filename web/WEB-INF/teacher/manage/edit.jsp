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
    <title>编辑论文</title>
</head>
<body>
<h1>编辑论文</h1> <hr>
<form action="teacherUpdateAct.action" method="post">
    <input type="number" name="paperInfo.id" value="${paperId}" style="display: none">
    <input type="number" name="paperInfo.teacherId" value="${paperInfo.teacherId}" style="display: none">
    <input type="number" name="paperInfo.depId" value="${paperInfo.depId}" style="display: none">
    <input type="date" name="paperInfo.releaseDate" value="${paperInfo.releaseDate}" style="display: none">
    修改论文题目：<input type="text" name="paperInfo.title" value="${paperInfo.title}"> <br>
    修改副标题：<input type="text" name="paperInfo.subtitle" value="${paperInfo.subtitle}"><br>
    修改论文类型：
    <select name="paperInfo.type" value="${paperInfo.type}">
        <option value="毕业论文">毕业论文</option>
        <option value="毕业设计">毕业设计</option>
    </select><br>
    修改允许选择题目的学生数量：<input type="number" name="paper.numbers" value="${paperInfo.numbers}"><br>
    修改题目来源：
    <select name="paperInfo.origin" value="${paperInfo.origin}">
        <option value="生产实践">生产实践</option>
        <option value="科学研究">科学研究</option>
        <option value="自拟">自拟</option>
    </select> <br>
    修改题目说明：<textarea name="paperInfo.content" rows="10" cols="40" value="${paperInfo.content}"></textarea> <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
