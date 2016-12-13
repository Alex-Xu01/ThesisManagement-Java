<%--
  Created by IntelliJ IDEA.
  User: Tulip
  Date: 2016/12/5 0005
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>编辑论文</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>编辑论文</h1> <hr>--%>
<%--<form action="teacherUpdateAct.action?updatePreFor=edit" method="post">--%>
    <%--<input type="number" name="paperInfo.id" value="${paperId}" style="display: none">--%>
    <%--<input type="number" name="paperInfo.teacher.id" value="${paperInfo.teacher.id}" style="display: none">--%>
    <%--<input type="number" name="paperInfo.dep.id" value="${paperInfo.dep.id}" style="display: none">--%>
    <%--<input type="date" name="paperInfo.releaseDate" value="${paperInfo.releaseDate}" style="display: none">--%>
    <%--修改论文题目：<input type="text" name="paperInfo.title" value="${paperInfo.title}"> <br>--%>
    <%--修改副标题：<input type="text" name="paperInfo.subtitle" value="${paperInfo.subtitle}"><br>--%>
    <%--修改论文类型：--%>
    <%--<select name="paperInfo.type" value="${paperInfo.type}">--%>
        <%--<option value="毕业论文">毕业论文</option>--%>
        <%--<option value="毕业设计">毕业设计</option>--%>
    <%--</select><br>--%>
    <%--修改允许选择题目的学生数量：<input type="number" name="paper.numbers" value="${paperInfo.numbers}"><br>--%>
    <%--修改题目来源：--%>
    <%--<select name="paperInfo.origin" value="${paperInfo.origin}">--%>
        <%--<option value="生产实践">生产实践</option>--%>
        <%--<option value="科学研究">科学研究</option>--%>
        <%--<option value="自拟">自拟</option>--%>
    <%--</select> <br>--%>
    <%--修改题目说明：<textarea name="paperInfo.content" rows="10" cols="40" value="${paperInfo.content}"></textarea> <br>--%>
    <%--<input type="submit" value="提交">--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>




<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>论文申报</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>论文修改</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="teacherUpdateAct.action">
            <div class="form-group">
                <div class="label">
                    <label>论文标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="paperInfo.title" value="${paperInfo.title}" />
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>副标题：</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="paperInfo.subtitle" value="${paperInfo.subtitle}" />
                    <div class="tips"></div>
                </div>
            </div>
                <div class="form-group">
                    <div class="label">
                        <label>论文类型：</label>
                    </div>
                    <div class="field">
                        <select name="paperInfo.type" class="input w50" value="${paperInfo.type}">
                            <option value="毕业设计">毕业设计</option>
                            <option value="毕业论文">毕业论文</option>
                        </select>
                        <div class="tips"></div>
                    </div>
                </div>
                    <div class="form-group">
                        <div class="label">
                            <label>题目来源：</label>
                        </div>
                        <div class="field">
                            <select name="paperInfo.origin" class="input w50" value="${paperInfo.origin}">
                                <option value="生产实践">生产实践</option>
                                <option value="科学研究">科学研究</option>
                                <option value="自拟">自拟</option>
                            </select>
                            <div class="tips"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>人数上限：</label>
                        </div>

                        <div class="field">
                            <input type="number" class="input" name="paperInfo.numbers" value="${paperInfo.numbers}" />
                            <div class="tips"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label>题目描述：</label>
                        </div>
                        <div class="field">
                            <textarea type="text" class="input" name="paperInfo.content" style="height:100px;" >${paperInfo.content}</textarea>
                            <div class="tips" title=""></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="label">
                            <label></label>
                        </div>
                        <div class="field">
                            <button class="button bg-green icon-check-square-o" type="submit">提交重审</button>
                        </div>
                    </div>
            <input type="number" name="paperInfo.id" value="${paperId}" style="display: none">
            <input type="number" name="paperInfo.teacher.id" value="${paperInfo.teacher.id}" style="display: none">
            <input type="number" name="paperInfo.dep.id" value="${paperInfo.dep.id}" style="display: none">
            <input type="date" name="paperInfo.releaseDate" value="${paperInfo.releaseDate}" style="display: none">
            <input type="int" name="paperInfo.verifyState" value="${paperInfo.verifyState}" style="display:none;">
            <input type="int" name="paperInfo.verifyMessage" value="${paperInfo.verifyMessage}" style="display:none;">
            </form>
    </div>
</div>
</body>
</html>