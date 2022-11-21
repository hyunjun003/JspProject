<%--
  Created by IntelliJ IDEA.
  User: hamhyeonjun
  Date: 2022/11/18
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%--
issue#1
- jstl 을 활용한 page 전체 레이아웃 작성 필
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<%@include file="../common/header.jsp" %>
<body>
<c:choose>
    <%--            user--%>
    <c:when test="${jsp == '\"main\"'}">
        <%@include file="/WEB-INF/jsp/page/main.jsp" %>
    </c:when>
    <c:otherwise>
        <div>잘못된 jsp 변수가 넘어왔습니다.</div>
    </c:otherwise>
</c:choose>
</body>
<%@include file="../common/footer.jsp" %>
</html>
