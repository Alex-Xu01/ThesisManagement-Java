<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>编辑账户</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="updateAccountAct.action" method="post">--%>
    <%--修改登录名：<input type="text" name="account.loginName" value="${account.loginName}"><br>--%>
    <%--修改密码：<input type="password" name="account.loginPwd" value="${account.loginPwd}"><br>--%>
    <%--修改身份：--%>
    <%--<select name="account.role" value="${account.role}">--%>
        <%--<option value="0">管理员</option>--%>
        <%--<option value="1">教师</option>--%>
        <%--<option value="2">学生</option>--%>
    <%--</select><br>--%>
    <%--<input type="number" name="account.id" value="${account.id}" style="display:none;">--%>
    <%--<input type="number" name="account.state" value="${account.state}" style="display:none;">--%>
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
    <title>账户管理</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">账户管理</strong></div>
    <div class="padding border-bottom">
        <div class="body-content">
            <form method="post" class="form-x" action="updateAccountAct.action">
                <div class="form-group">
                    <div class="label">
                        <label>账号：</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" name="account.loginName" value="${account.loginName}"/>
                        <div class="tips"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>密码：</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" name="account.loginPwd" value="${account.loginPwd}"/>
                        <div class="tips"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>身份：</label>
                    </div>
                    <div class="field">
                        <select name="account.role" class="input w50" value="${account.role}" id="role">
                            <option value="0">管理员</option>
                            <option value="1">教师</option>
                            <option value="2">学生</option>
                        </select>
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
                <input type="number" name="account.id" value="${account.id}" style="display:none;">
                <input type="number" name="account.state" value="${account.state}" style="display:none;">
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    window.onload = selectDefaultValue(${account.role});

    function selectDefaultValue(objItemText) {
        var allOptions = document.getElementById("role");
        for (var i = 0; i < allOptions.length; i++){
            if (allOptions.value[i] == objItemText){
                alert(allOptions.value[i]);
                allOptions.value[i].selected = true;
                break;
            }
        }

    };
</script>
</body>
</html>
