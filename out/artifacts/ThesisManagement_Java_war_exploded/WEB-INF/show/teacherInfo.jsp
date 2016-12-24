<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/12 0012
  Time: 9:36
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
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">用户信息</strong></div>
    <div class="padding border-bottom">
        <div class="body-content">
            <form method="post" class="form-x" action="dispatcherEditTeacher.action?id=${id}">
                <div class="form-group">
                    <div class="label">
                        <label>姓名：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${teacher.name}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>电话：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${teacher.phone}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>邮箱：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${teacher.email}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>所属系部：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${teacher.dep.name}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>职称：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${teacher.title}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>专长：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${teacher.specialty}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label></label>
                    </div>
                    <div class="field">
                        <button class="button bg-green icon-check-square-o" type="submit">修改</button>
                    </div>
                </div>
            </form>
            </div>
        </div>
    </div>
</body>
</html>