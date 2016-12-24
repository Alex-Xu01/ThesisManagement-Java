<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/12 0012
  Time: 14:19
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
           <%--&lt;%&ndash;\  .-\__  `-`  ___/-. /&ndash;%&gt;--%>
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
    <title>未通过审核的论文</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<form method="post" action="" id="listform">
    <div class="panel admin-panel">
        <div class="panel-head"><strong class="icon-reorder"> 我申报的论文</strong><a href="" style="float:right; display:none;"></a></div>
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
                <c:forEach items="${myPaperList}" var="item">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.title}</td>
                        <td>${item.type}</td>
                        <td>${item.origin}</td>
                        <td>${item.teacher.name}</td>
                        <td>${item.releaseDate}</td>
                        <td>
                            <div class="button-group"> <a class="button border-main" href="teacherManageAct.action?paperId=${item.id}&teacherManage=lookAll"><span class="icon-edit"></span>详细</a></div>
                            <div class="button-group"> <a class="button border-red" href="teacherDeleteAct.action?paperId=${item.id}"><span class="icon-edit"></span>删除</a></div>
                        </td>
                    </tr>
                </c:forEach>
            </volist>
                <tr>
                    <td colspan="8">
                        <div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div>
                    </td>
                </tr>
        </table>
    </div>
    <%--<script>--%>
        <%--function del(${item.id}){--%>
            <%--if(confirm("您确定要删除吗?")){--%>
                <%--document.querydb.action ="teacherDeleteAct.action?paperId"+${item.id}--%>
                <%--document.querydb.submit();--%>
            <%--}--%>
        <%--}--%>
    <%--</script>--%>
</form>
</body>
</html>