<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>编辑系部</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="updateDepAct.action" method="post">--%>
    <%--修改系部名称：<input type="text" name="dep.name" value="${dep.name}"><br>--%>
    <%--修改办公电话：<input type="text" name="dep.telephone" value="${dep.telephone}"><br>--%>
    <%--修改办公地址：<input type="text" name="dep.address" value="${dep.address}"><br>--%>
    <%--<input type="number" name="dep.state" value="${dep.state}" style="display: none">--%>
    <%--<input type="number" name="dep.id" value="${dep.id}" style="display: none">--%>
    <%--<input type="submit" value="提交">--%>
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
    <title>系部管理</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">系部管理</strong></div>
    <div class="padding border-bottom">
        <div class="body-content">
            <form method="post" class="form-x" action="updateDepAct.action">
                <div class="form-group">
                    <div class="label">
                        <label>系部名称：</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" name="dep.name" value="${dep.name}"/>
                        <div class="tips"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>办公电话：</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" name="dep.telephone" value="${dep.telephone}"/>
                        <div class="tips"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>办公地点：</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" name="dep.address" value="${dep.address}"/>
                        <div class="tips"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label></label>
                    </div>
                    <div class="field">
                        <button class="button bg-main icon-check-square-o" type="submit">修改</button>
                    </div>
                </div>
                <input type="number" name="dep.state" value="${dep.state}" style="display: none">
                <input type="number" name="dep.id" value="${dep.id}" style="display: none">
            </form>
        </div>
    </div>
</div>
</body>
</html>