<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <c:set var="url">${pageContext.request.requestURL}</c:set>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(pageContext.request.requestURI))}${pageContext.request.contextPath}/" />

    <title>My JSP 'login.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}css/login.css" />
</head>

<body>
<div class="longin">
    <li style="text-align:center"><img src="${pageContext.request.contextPath}img/jld.jpg" /></li>
</div>

<form action="/user/login" method="post" target="_parent">
    <div id="loginbox">
        <ul>
            <li><span>*</span>账户:<input type="text" id="account" name="account" style="height:30px;"/></li>
            <li><span>*</span>密码:<input type="password" id="password0" name="password" style="height:30px;"/></li>
            <li><input type="submit" id="loginbutton" name="loginbutton" value="登陆" onclick="return myFunction();"/>
                <a href="${pageContext.request.contextPath}registerShow.html"><input type="submit" id="register" name="register" value="注册"/></a>
            </li>
        </ul>
    </div>
</form>
<script type="text/javascript" src="${pageContext.request.contextPath}js/login.js"></script>
</body>
</html>
