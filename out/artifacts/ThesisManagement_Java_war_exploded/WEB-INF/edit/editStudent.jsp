<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--<title>修改用户信息</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="editStudentAct.action" method="post">--%>
<%--姓名：<input type="text" name="student.name" value="${student.name}"> <br>--%>
<%--电话：<input type="text" name="student.phone" value="${student.phone}"> <br>--%>
<%--电子邮箱：<input type="text" name="student.email" value="${student.email}"> <br>--%>
<%--性别：<input type="text" name="student.gender" value="${student.gender}"> <br>--%>
<%--所属系部：--%>
<%--<select name="student.dep.id" value="${student.dep.id}">--%>
<%--<c:forEach items="${depList}" var="item">--%>
<%--<option value="${item.id}">${item.name}</option>--%>
<%--</c:forEach>--%>
<%--</select><br>--%>
<%--<input type="number" name="student.id" value="${student.id}" style="display:none;">--%>
<%--<input type="text" name="student.picPath" value="${student.picPath}" style="display:none;">--%>
<%--<input type="number" name="student.accountId" value="${student.accountId}" style="display:none;">--%>
<%--<input type="number" name="student.state" value="${student.state}" style="display:none;">--%>
<%--<input type="submit" value="确定">--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>


<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title>用户信息</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 用户信息</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="editStudentAct.action">
            <div class="form-group">
                <div class="label">
                    <label>姓名：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="student.name" value="${student.name}"/>
                    <div class="tips"></div>
                </div>
            </div>
            <%--<div class="form-group">--%>
                <%--<div class="label">--%>
                    <%--<label>头像：</label>--%>
                <%--</div>--%>
                <%--<div class="field">--%>
                    <%--<input type="text" id="url1" name="slogo" class="input tips" style="width:25%; float:left;" value=""--%>
                           <%--data-toggle="hover" data-place="right" data-image=""/>--%>
                    <%--<input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传">--%>
                <%--</div>--%>
            <%--</div>--%>
            <div class="form-group">
                <div class="label">
                    <label>性别：</label>
                </div>
                <div class="field">
                    <select name="student.gender" class="input w50" value="${student.gender}">
                        <option value="M">男性</option>
                        <option value="F">女性</option>
                    </select>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>电话：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="student.phone" value="${student.phone}"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>邮箱：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="student.email" value="${student.email}"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>所属系部：</label>
                </div>
                <div class="field">
                    <select name="student.dep.id" value="${student.dep.id}">
                        <c:forEach items="${depList}" var="item">
                            <option value="${item.id}">${item.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
                </div>
            </div>
            <input type="number" name="student.id" value="${student.id}" style="display:none;">
            <input type="text" name="student.picPath" value="${student.picPath}" style="display:none;">
            <input type="number" name="student.accountId" value="${student.accountId}" style="display:none;">
            <input type="number" name="student.state" value="${student.state}" style="display:none;">
        </form>
    </div>
</div>
</body>
</html>
