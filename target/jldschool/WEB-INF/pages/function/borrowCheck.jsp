<%--
  Created by IntelliJ IDEA.
  User: esonchen
  Date: 2018/3/21
  Time: 上午10:28
  To change this template use File | Settings | File Templates.
--%>
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
    <title>Title</title>
</head>
<body>
<center>
<div class="search">
    <form action="${pageContext.request.contextPath}/borrow/borrowList" method="get" role="search">
        <input name="id" type="search" id="search" placeholder="请输入关键字" style="height:30px" />
        <input type="image" src="${pageContext.request.contextPath}img/sousuo.png" style="position:absolute"/>
    </form>
</div>
</center>
</body>
</html>
