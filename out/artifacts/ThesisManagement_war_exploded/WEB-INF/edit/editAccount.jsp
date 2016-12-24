<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>修改账户信息</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="editAccountAct.action" method="post">--%>
    <%--修改用户名：<input type="text" name="account.loginName" value="${account.loginName}"><br>--%>
    <%--修改密码：<input type="password" name="account.loginPwd" value="${account.loginPwd}"><br>--%>
    <%--<input type="submit" value="确定">--%>
    <%--<input type="number" name="account.id" value="${account.id}" style="display:none;">--%>
    <%--<input type="number" name="account.role" value="${account.role}" style="display:none;">--%>
    <%--<input type="number" name="account.state" value="${account.state}" style="display:none;">--%>
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
    <title>账户信息</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-key"></span> 账户状态</strong></div>
    <div class="body-content">
        <form method="post" class="form-x">
            <div class="form-group">
                <div class="label">
                    <label>正常</label>
                </div>
                <div class="field">
                    <label style="line-height:33px;">
                    </label>
                </div>
            </div>
        </form>
            <div class="panel admin-panel">
                <div class="panel-head"><strong><span class="icon-key"></span> 修改密码</strong></div>
                <div class="body-content">
                    <form method="post" class="form-x" action="editAccountAct.action">
                        <div class="form-group">
                            <div class="label">
                                <label>帐号：</label>
                            </div>
                            <div class="field">
                                <label style="line-height:33px;">
                                   ${account.loginName}
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label>新密码：</label>
                            </div>
                            <div class="field">
                                <input type="password" class="input w50" name="newPwd" size="50" placeholder="请输入新密码" data-validate="required:请输入新密码" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label>确认新密码：</label>
                            </div>
                            <div class="field">
                                <input type="password" class="input w50" name="account.loginPwd" size="50" placeholder="请再次输入新密码" data-validate="required:请再次输入新密码,repeat#newPwd:两次输入的密码不一致" />
                            </div>
                        </div>
                        <input type="number" name="account.id" value="${account.id}" style="display:none;">
                        <input type="number" name="account.role" value="${account.role}" style="display:none;">
                        <input type="number" name="account.state" value="${account.state}" style="display:none;">
                        <input type="text" name="account.loginName" value="${account.loginName}" style="display:none;">
                        <div class="form-group">
                            <div class="label">
                                <label></label>
                            </div>
                            <div class="field">
                                <button class="button bg-green icon-check-square-o" type="submit"> 提交</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
