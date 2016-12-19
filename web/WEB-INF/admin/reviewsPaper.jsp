<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/9 0009
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title></title>
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
            <form method="post" class="form-x" action="adminVerifyAct.action?paperId=${paperInfo.id}">
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
                        <label>选题人数：</label>
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
                <div class="panel admin-panel margin-top" id="add">
                    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>审核</strong></div>
                    <div class="body-content">

                        <div class="form-group">
                            <div class="label">
                                <label>审核结果：</label>
                            </div>
                            <div class="field">
                                <select name="paperInfo.verifyState" class="input w50">
                                    <option value="-1">请选择是否通过审核</option>
                                    <option value="1">通过</option>
                                    <option value="0">不通过</option>
                                </select>
                                <div class="tips"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label>审核意见：</label>
                            </div>
                            <div class="field">
                                <textarea type="text" class="input" name="paperInfo.verifyMessage" style="height:100px;"
                                          value=""></textarea>
                                <div class="tips"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label></label>
                            </div>
                            <div class="field">
                                <button class="button bg-main icon-check-square-o" type="submit">提交</button>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="number" name="paperInfo.id" value="${paperId}" style="display: none">
                <input type="number" name="paperInfo.teacher.id" value="${paperInfo.teacher.id}" style="display: none">
                <input type="number" name="paperInfo.dep.id" value="${paperInfo.dep.id}" style="display: none">
                <input type="date" name="paperInfo.releaseDate" value="${paperInfo.releaseDate}" style="display: none">
                <input type="text" name="paperInfo.title" value="${paperInfo.title}" style="display: none"> <br>
                <input type="text" name="paperInfo.subtitle" value="${paperInfo.subtitle}" style="display: none"><br>
                <input name="paperInfo.type" value="${paperInfo.type}" style="display: none"><br>
                <input type="number" name="paper.numbers" value="${paperInfo.numbers}" style="display: none"><br>
                <input name="paperInfo.origin" value="${paperInfo.origin}" style="display: none"><br>
                <input name="paperInfo.content" rows="10" cols="40" value="${paperInfo.content}" style="display: none">
            </form>
        </div>
    </div>
</div>
</body>
</html>