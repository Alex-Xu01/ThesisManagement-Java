<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/5 0005
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>学生页面</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>您的身份是学生！您的ID是${id}</h1>--%>
<%--<a href="queryPassPapers.action?studentId=${id}">查看论文题目</a>--%>
<%--<a href="showChoose.action?studentId=${id}">查看已选论文</a>--%>
<%--<a href="dispatcherEditAccount.action?id=${id}">修改账户信息</a>--%>
<%--<a href="dispatcherEditStudent.action?id=${id}">修改用户信息</a>--%>
<%--<br>${updateMsg}--%>
<%--</body>--%>
<%--</html>--%>




<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>论文管理中心</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
    <div class="logo margin-big-left fadein-top">
        <h1><img src="images/hj.png" class="radius-circle rotate-hover" height="50" alt="" />论文管理中心</h1>
    </div>
    <div class="head-l"><a class="button button-little bg-red" href="/index.jsp"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
    <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
    <h2><span class="icon-user"></span>个人信息</h2>
    <ul style="display:block">
        <li><a href="showStudentInfo.action?accountId=${id}" target="right"><span class="icon-caret-right"></span>用户信息</a></li>
        <li><a href="dispatcherEditAccount.action?id=${id}" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
    </ul>
    <h2><span class="icon-pencil-square-o"></span>学生系统</h2>
    <ul>
        <li><a href="queryPassPapers.action?accountId=${id}" target="right"><span class="icon-caret-right"></span>选择论文题目</a></li>
        <li><a href="showChoose.action?accountId=${id}" target="right"><span class="icon-caret-right"></span>已选论文</a></li>
    </ul>
</div>
<script type="text/javascript">
    $(function(){
        $(".leftnav h2").click(function(){
            $(this).next().slideToggle(200);
            $(this).toggleClass("on");
        })
        $(".leftnav ul li a").click(function(){
            $("#a_leader_txt").text($(this).text());
            $(".leftnav ul li a").removeClass("on");
            $(this).addClass("on");
        })
    });
</script>
<div class="admin">
    <iframe scrolling="auto" rameborder="0" src="showStudentInfo.action?accountId=${id}" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
</div>
</body>
</html>
