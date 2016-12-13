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
    <%--<title>教师页面</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>您的身份是教师！您的ID是${id}</h1> <hr>--%>
<%--请选择功能：--%>
<%--<form action="teacherFunctionAct" method="post">--%>
    <%--<select name="functionChoice">--%>
        <%--<option value="reporting" selected="true">申报论文</option>--%>
        <%--<option value="manage">管理论文</option>--%>
    <%--</select>--%>
    <%--<input type="submit" value="选择">--%>
<%--</form>--%>
<%--<a href="teacherFunctionAct.action?functionChoice=reporting&id=${id}">申报论文</a>--%>
<%--<a href="teacherFunctionAct.action?functionChoice=manage&id=${id}">管理论文</a>--%>
<%--<a href="dispatcherEditAccount.action?id=${id}">修改账户信息</a>--%>
<%--<a href="dispatcherEditTeacher.action?id=${id}">修改用户信息</a>--%>
<%--<a href="showMyPapers.action?id=${id}">查看我的论文</a>--%>
<%--${updateMsg}--%>
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
        <li><a href="showTeacherInfo.action?id=${id}" target="right"><span class="icon-caret-right"></span>用户信息</a></li>
        <li><a href="dispatcherEditAccount.action?id=${id}" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
    </ul>
    <h2><span class="icon-pencil-square-o"></span>教师系统</h2>
    <ul>
        <li><a href="teacherFunctionAct.action?functionChoice=reporting&id=${id}" target="right"><span class="icon-caret-right"></span>论文申报</a></li>
        <li><a href="showMyPapers.action?id=${id}" target="right"><span class="icon-caret-right"></span>查看我的论文</a></li>
        <li><a href="queryPassPapers_t.action?accountId=${id}" target="right"><span class="icon-caret-right"></span>已通过审核论文</a></li>
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
    <iframe scrolling="auto" rameborder="0" src="showTeacherInfo.action?id=${id}" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
</div>
</body>
</html>
