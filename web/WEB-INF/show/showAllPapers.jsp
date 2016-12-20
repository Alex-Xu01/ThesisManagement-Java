<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
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
<html>
<head>
    <title>审核论文</title>
</head>
<body>
<table border="1">
    <tr>
        <th>编号</th>
        <th>论文标题</th>
        <th>副标题</th>
        <th>论文类型</th>
        <th>选择人数</th>
        <th>题目来源</th>
        <th>题目描述</th>
        <th>审核状态</th>
        <th>审核意见</th>
        <th>论文录入日期</th>
        <th>录入教师编号</th>
        <th>所属系部编号</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${paperList}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.title}</td>
            <td>${item.subtitle}</td>
            <td>${item.type}</td>
            <td>${item.numbers}</td>
            <td>${item.origin}</td>
            <td>${item.content}</td>
            <td>${item.verifyState}</td>
            <td>${item.verifyMessage}</td>
            <td>${item.releaseDate}</td>
            <td>${item.teacher.id}</td>
            <td>${item.dep.id}</td>
            <td>${item.state}</td>
            <td>
                <a href="teacherUpdatePre.action?paperId=${item.id}&updatePreFor=adminVerify">审核</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
