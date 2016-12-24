<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>添加系部</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="insertDepAct.action" method="post">--%>
    <%--系部名称：<input type="text" name="dep.name"><br>--%>
    <%--办公电话：<input type="text" name="dep.telephone"><br>--%>
    <%--办公地址：<input type="text" name="dep.address"><br>--%>
    <%--<input type="submit" value="提交">--%>
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
    <title>论文申报</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>新增系部</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="insertDepAct.action">
            <div class="form-group">
                <div class="label">
                    <label>系部名称：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="dep.name" value="" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>办公电话：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="dep.telephone" value="" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>办公地址：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="dep.address" value="" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-green icon-check-square-o" type="submit">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>