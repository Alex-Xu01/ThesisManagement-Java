<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/4 0004
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>毕业论文管理系统</title>
  </head>
  <body>
  <form action="LoginAct" method="post">
      用户名：<input type="text" name="loginName"><br>
      密&nbsp;码：<input type="password" name="loginPwd"><br>
    <input type="submit" value="登录">
    <input type="reset" value="重置">
  </form>
  <c:forEach items="${errors}" var="msg">
    <span style="color: #F00">${msg.value}</span><br>
  </c:forEach>
  ${accountList}
  </body>
</html>
