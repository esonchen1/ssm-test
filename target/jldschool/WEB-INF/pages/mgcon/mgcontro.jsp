<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <c:set var="url">${pageContext.request.requestURL}</c:set>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(pageContext.request.requestURI))}${pageContext.request.contextPath}/" />

    <title>mgcontro</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}css/mgc.css" media="screen" />
    <script type="text/javascript" src="${pageContext.request.contextPath}js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}js/ser.js"></script>
</head>
<body>
<div id="mgcontro">
    <ul>
        <shiro:hasRole name="admin">
        <li><a href="${pageContext.request.contextPath}/toAddBorrow" target="_blank"><input type="submit" id="borrow" name="borrow" value="借阅"></a></li>
        <li><a href="${pageContext.request.contextPath}/check" target="_blank"><input type="submit" id="return" name="return" value="归还"></a></li>
        <li><a href="#" target="_blank"><input type="submit" id="pay" name="pay" value="缴费"></a></li>
        <select onChange="window.location=this.value">
            <option>图书信息管理</option>
            <option value="${pageContext.request.contextPath}/toAddBook">添加图书</option>
            <option value="#">查询图书</option>
        </select>
        <select onChange="window.location=this.value">
            <option>用户信息管理</option>
            <option value="#">添加用户</option>
            <option value="mgcon/check.jsp?del=1">删除用户</option>
            <option value="mgcon/check.jsp?del=1">查询用户</option>
        </select>
        </shiro:hasRole>
        <li><a href="${pageContext.request.contextPath}/check" target="_blank"><input type="submit" id="userCheck" name="usercheck" value="查询"></a></li>
    </ul>
</div>
<iframe id="view" width="100%" onload="this.height=this.contentWindow.document.documentElement.scrollHeight" scrolling="no" frameborder="0" ></iframe>
</body>
</html>