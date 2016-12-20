<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/4 0004
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <meta name="renderer" content="webkit">
  <title>登录</title>
  <link rel="stylesheet" href="css/pintuer.css">
  <link rel="stylesheet" href="css/admin.css">
  <script src="js/jquery.js"></script>
  <script src="js/pintuer.js"></script>
  <style>
    .case{float:left}
  </style>
</head>
<body>
<div class="bg" class="case"></div>
<div class="container" style="margin-left:720px">
  <div class="line bouncein" >
    <div class="xs6 xm4 xs3-move xm4-move">
      <div style="height:270px;"></div>
      <div class="media media-y margin-big-bottom">
      </div>
      <form action="LoginAct.action" method="post">
        <div class="panel loginbox">
          <div class="text-center margin-big padding-big-top"><h1>论文管理中心</h1></div>
          <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
            <div class="form-group">
              <div class="field field-icon-right">
                <input type="text" class="input input-big" name="loginName" placeholder="登录账号" data-validate="required:请填写账号" />
                <span class="icon icon-user margin-small"></span>
              </div>
            </div>
            <div class="form-group">
              <div class="field field-icon-right">
                <input type="password" class="input input-big" name="loginPwd" placeholder="登录密码" data-validate="required:请填写密码" />
                <span class="icon icon-key margin-small"></span>
              </div>
            </div>
          </div>
          ${loginMsg}
          <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录"></div>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>