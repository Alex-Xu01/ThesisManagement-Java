<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
                   <%--_ooOoo_--%>
                  <%--o8888888o--%>
                  <%--88" . "88--%>
                  <%--(| -_- |)--%>
                  <%--O\  =  /O--%>
               <%--____/`---'\____--%>
             <%--.'  \\|     |//  `.--%>
            <%--/  \\|||  :  |||//  \--%>
           <%--/  _||||| -:- |||||-  \--%>
           <%--|   | \\\  -  /// |   |--%>
           <%--| \_|  ''\---/''  |   |--%>
           <%--\  .-\__  `-`  ___/-. /--%>
         <%--___`. .'  /--.--\  `. . __--%>
      <%--."" '<  `.___\_<|>_/___.'  >'"".--%>
     <%--| | :  `- \`.;`\ _ /`;.`/ - ` : | |--%>
     <%--\  \ `-.   \_ __\ /__ _/   .-` /  /--%>
<%--======`-.____`-.___\_____/___.-`____.-'======--%>
                   <%--`=---='--%>
<%--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^--%>
         <%--佛祖保佑       永无BUG--%>


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
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>新增用户</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="insertAccountAct.action">
            <div class="form-group">
                <div class="label">
                    <label>登录名：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="account.loginName" value="" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>密码：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="account.loginPwd" value="" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>身份：</label>
                </div>
                <div class="field">
                    <select name="account.role" class="input w50">
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
                    <button class="button bg-green icon-check-square-o" type="submit">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>