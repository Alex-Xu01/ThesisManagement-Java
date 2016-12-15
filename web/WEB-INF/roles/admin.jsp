<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <%--<title>管理员页面</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<a href="queryAllPapers.action">审核论文</a>--%>
<%--<a href="queryAllDep.action">管理系部</a>--%>
<%--<a href="queryAllAccount.action">管理账户</a>--%>
<%--<h1>您的身份是管理员！</h1>--%>
<%--<c:forEach items="${accountList}" var="item">--%>
    <%--${item}<br>--%>
<%--</c:forEach>--%>
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
        <li><a href="dispatcherEditAccount.action?id=${id}" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
    </ul>
    <h2><span class="icon-pencil-square-o"></span>管理员系统</h2>
    <ul>
        <li><a href="queryAccountExceptMe.action?accountId=${id}" target="right"><span class="icon-caret-right"></span>账户管理</a></li>
        <li><a href="queryAllDep.action" target="right"><span class="icon-caret-right"></span>系部管理</a></li>
        <li><a href="queryFailedPaper.action" target="right"><span class="icon-caret-right"></span>未审核论文</a></li>
        <li><a href="queryAllPassPapers.action" target="right"><span class="icon-caret-right"></span>已审核论文</a></li>
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
    <iframe scrolling="auto" rameborder="0" src="info.html" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
</div>
</body>
</html>