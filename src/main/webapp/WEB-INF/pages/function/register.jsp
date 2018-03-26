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

    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}css/login.css" />
</head>
<body>
<div class="register">
    <li style="text-align:center"><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}img/jld.jpg" /></a></li>
</div>
<form action="/user/register" method="post" target="_parent">
    <div id="registerbox">
        <ul>
            <li><span><i>*</i>学号:</span><div class="item"><input type="text" id="accout" name="account" style="height:30px;"/></div>
            </li>
            <li><span><i>*</i>请输入密码:</span><div class="item"><input type="password" id="password1" name="password" style="height:30px;"/></div>
            </li>
            <li><span><i>*</i>请确认密码:</span><div class="item"><input type="password" id="password2" name="password1" style="height:30px;"/></div>
            </li>
            <li><span><i>*</i>姓名:</span><div class="item"><input type="text" id="name0" name="name" style="height:30px;"/></div>
            </li>
            <li><span><i>*</i>性别:</span><div class="item"><input type="text" id="sex0" name="sex" style="height:30px;"/></div>
            </li>
            <li><input type="submit" id="registerbutton" name="registerbutton" value="注册" onclick="return myfunction();"/></li>
        </ul>
    </div>
</form>

<script type="text/javascript" src="${pageContext.request.contextPath}js/register.js"></script>
</body>
</html>
