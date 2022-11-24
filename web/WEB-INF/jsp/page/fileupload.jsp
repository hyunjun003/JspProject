<%--
  Created by IntelliJ IDEA.
  User: hamhyeonjun
  Date: 2022/11/24
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>file Upload page</h2>
<form name="frmName" method="post" enctype="multipart/form-data" action="viewPage.jpt">
    user<br/>
    <input name="user"><br/>title<br/>
    <input name="title"><br/>file<br/>
    <input type="file" name="uploadFile"><br/><br/>
    <input type="submit" value="UPLOAD"><br/>
</form>
</body>
</html>
