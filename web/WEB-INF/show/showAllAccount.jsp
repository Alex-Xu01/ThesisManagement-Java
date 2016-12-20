<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
                   _ooOoo_
                  o8888888o
                  88" . "88
                  (| -_- |)
                  O\  =  /O
               ____/`---'\____
             .'  \\|     |//  `.
            /  \\|||  :  |||//  \
           /  _||||| -:- |||||-  \
           |   | \\\  -  /// |   |
           | \_|  ''\---/''  |   |
           \  .-\__  `-`  ___/-. /
         ___`. .'  /--.--\  `. . __
      ."" '<  `.___\_<|>_/___.'  >'"".
     | | :  `- \`.;`\ _ /`;.`/ - ` : | |
     \  \ `-.   \_ __\ /__ _/   .-` /  /
======`-.____`-.___\_____/___.-`____.-'======
                   `=---='
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
         佛祖保佑       永无BUG


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
<form action="dispatcherInsertAccount.action" class="form-x" method="post">
    <div class="field">
        <button class="button bg-green icon-check-square-o" type="submit" style="margin-bottom:1%"> 添加账户</button>
    </div>
</form>
<div class="panel admin-panel">
    <div class="panel-head"><strong>账户管理</strong></div>
    <div class="padding border-bottom">
    </div>
    <form method="post" class="form-x" action="">
        <table width="890" class="table table-hover text-center">
            <tr>
                <th width="77">ID</th>
                <th width="275">账号</th>
                <th width="219">密码</th>
                <th width="291">身份</th>
                <th width="291">状态</th>
                <th width="291">操作</th>
            </tr>
            <c:forEach items="${accountList}" var="item">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.loginName}</td>
                    <td>${item.loginPwd}</td>
                    <td>${item.role}</td>
                    <td>${item.state}</td>
                    <td>
                        <div class="button-group">
                            <a type="button" class="button border-main"
                               href="updateAccountPre.action?accountId=${item.id}"><span
                                    class="icon-edit"></span>修改</a>
                            <a class="button border-red" href="deleteAccountAct.action?accountId=${item.id}"
                               onclick="return del(17)"><span
                                    class="icon-trash-o"></span> 删除</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>
</body>
</html>