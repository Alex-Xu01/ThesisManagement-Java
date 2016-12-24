<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 14:42
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title>已通过审核的论文</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
    <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder"> 已通过审核的论文${studentId}</strong>
            <a href="" style="float:right; display:none;">添加字段</a>
        </div>
        <table class="table table-hover text-center">
            <tr>
                <th>ID</th>
                <th>论文标题</th>
                <th>论文类型</th>
                <th>题目来源</th>
                <th>录入教师</th>
                <th>录入时间</th>
                <th>操作</th>
            </tr>
            <volist name="list" id="vo">
                <c:forEach items="${passPaperList}" var="item">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.title}</td>
                        <td>${item.type}</td>
                        <td>${item.origin}</td>
                        <td>${item.teacher.name}</td>
                        <td>${item.releaseDate}</td>
                        <td><div class="button-group"> <a class="button border-main" href="choosePaperPre.action?paperId=${item.id}&studentId=${studentId}"><span class="icon-edit"></span>详细</a></div>
                    </tr>
                </c:forEach>
            </volist>
            <tr>
                <td colspan="8">
                    <div class="pagelist"><a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
                            href="">3</a><a href="">下一页</a><a href="">尾页</a></div>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
