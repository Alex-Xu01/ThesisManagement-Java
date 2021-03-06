<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>修改用户信息</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="editTeacherAct.action" method="post">--%>
    <%--姓名：<input type="text" name="teacher.name" value="${teacher.name}">--%>
    <%--电话：<input type="text" name="teacher.phone" value="${teacher.phone}">--%>
    <%--电子邮件：<input type="text" name="teacher.email" value="${teacher.email}">--%>
    <%--职称：<input type="text" name="teacher.title" value="${teacher.title}">--%>
    <%--专长：<input type="text" name="teacher.specialty" value="${teacher.specialty}">--%>
    <%--所属系部：--%>
    <%--<select name="teacher.dep.id" value="${teacher.dep.id}">--%>
        <%--<c:forEach items="${depList}" var="item">--%>
            <%--<option value="${item.id}">${item.name}</option>--%>
        <%--</c:forEach>--%>
    <%--</select><br>--%>
    <%--<input type="submit" value="确定">--%>
    <%--<input type="number" name="teacher.id" value="${teacher.id}" style="display:none;">--%>
    <%--<input type="number" name="teacher.account.id" value="${teacher.account.id}" style="display:none;">--%>
    <%--<input type="number" name="teacher.state" value="${teacher.state}" style="display:none;">--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
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
        <form method="post" class="form-x" action="editTeacherAct.action">
            <div class="form-group">
                <div class="label">
                    <label>姓名：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="teacher.name" value="${teacher.name}" />
                    <div class="tips"></div>
                </div>
            </div>
            <%--<div class="form-group">--%>
                <%--<div class="label">--%>
                    <%--<label>头像：</label>--%>
                <%--</div>--%>
                <%--<span class="field">--%>
              <%--<input type="button" class="button bg-green" id="image1" value="浏览上传" >--%>
            <%--</span>--%>
            <%--</div>--%>
            <div class="form-group">
                <div class="label">
                    <label>电话：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="teacher.phone" value="${teacher.phone}" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>邮箱：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="teacher.email" value="${teacher.email}" />
                    <div class="tips"></div>
                </div>
            </div>

            <%--<if condition="$iscid eq 1">--%>
                <%--<div class="form-group">--%>
                    <%--<div class="label">--%>
                        <%--<label>性别：</label>--%>
                    <%--</div>--%>
                    <%--<div class="field">--%>
                        <%--<select name="cid" class="input w50">--%>
                            <%--<option value="">男性</option>--%>
                            <%--<option value="">女性</option>--%>
                            <%--<option value="">其他</option>--%>
                        <%--</select>--%>
                        <%--<div class="tips"></div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</if>--%>
                <div class="form-group">
                    <div class="label">
                        <label>所属系部：</label>
                    </div>
                    <div class="field">
                        <select name="teacher.dep.id" value="${teacher.dep.id}">
                          <c:forEach items="${depList}" var="item">
                            <option value="${item.id}">${item.name}</option>
                          </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>职称：</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" name="teacher.title" value="${teacher.title}" />
                        <div class="tips"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>专长：</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" name="teacher.specialty" value="${teacher.specialty}" />
                        <div class="tips"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label></label>
                    </div>
                    <div class="field">
                        <button class="button bg-green icon-check-square-o" type="submit"> 提交</button>
                    </div>
                </div>
            <input type="number" name="teacher.id" value="${teacher.id}" style="display:none;">
            <input type="number" name="teacher.account.id" value="${teacher.account.id}" style="display:none;">
            <input type="number" name="teacher.state" value="${teacher.state}" style="display:none;">
        </form>
    </div>
</div>
</body>
</html>
