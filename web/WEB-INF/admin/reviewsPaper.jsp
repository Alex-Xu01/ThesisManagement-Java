<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>审核论文</title>
</head>
<body>
<table border="1">
    <tr>
        <th>标题</th>
        <th>副标题</th>
        <th>论文类型</th>
        <th>允许学生选择的数量</th>
        <th>论文来源</th>
        <th>论文说明</th>
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
        <td>${paperInfo.releaseDate}</td>
        <td>${paperInfo.teacher.id}</td>
        <td>${paperInfo.dep.id}</td>
        <td>${paperInfo.state}</td>
    </tr>
</table>
<form action="adminVerifyAct.action?paperId=${paperInfo.id}" method="post">
    审核状态：<select name="paperInfo.verifyState">
    <option value="0">请选择是否通过审核</option>
    <option value="1">通过</option>
    <option value="2">不通过</option>
</select><br>
    审核说明<textarea name="paperInfo.verifyMessage" rows="10" cols="40"></textarea>
    <input type="submit" value="确定">
    <input type="number" name="paperInfo.id" value="${paperId}" style="display: none">
    <input type="number" name="paperInfo.teacher.id" value="${paperInfo.teacher.id}" style="display: none">
    <input type="number" name="paperInfo.dep.id" value="${paperInfo.dep.id}" style="display: none">
    <input type="date" name="paperInfo.releaseDate" value="${paperInfo.releaseDate}" style="display: none">
    <input type="text" name="paperInfo.title" value="${paperInfo.title}" style="display: none"> <br>
    <input type="text" name="paperInfo.subtitle" value="${paperInfo.subtitle}" style="display: none"><br>
    <input name="paperInfo.type" value="${paperInfo.type}" style="display: none"><br>
    <input type="number" name="paper.numbers" value="${paperInfo.numbers}" style="display: none"><br>
    <input name="paperInfo.origin" value="${paperInfo.origin}" style="display: none"><br>
    <input name="paperInfo.content" rows="10" cols="40" value="${paperInfo.content}" style="display: none">
</form>
${verifyMsg}
</body>
</html>
