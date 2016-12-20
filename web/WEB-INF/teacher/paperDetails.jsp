<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/11 0011
  Time: 20:33
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>论文详细内容</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 论文详细内容</strong></div>
    <div class="padding border-bottom">
        <div class="body-content">
            <form method="post" class="form-x">
                <div class="form-group">
                    <div class="label">
                        <label>论文标题：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${paperInfo.title}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>副标题：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${paperInfo.subtitle}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>论文类型：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${paperInfo.type}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>可选人数：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${paperInfo.numbers}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>题目来源：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${paperInfo.origin}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>题目描述：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${paperInfo.content}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>录入时间：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${paperInfo.releaseDate}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>录入教师：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${paperInfo.teacher.name}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>所属系部：</label>
                    </div>
                    <div class="label" style="text-align: left">
                        <label>${paperInfo.dep.name}</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label></label>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>