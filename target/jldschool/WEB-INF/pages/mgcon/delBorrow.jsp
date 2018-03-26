<%--
  Created by IntelliJ IDEA.
  User: esonchen
  Date: 2018/3/21
  Time: 上午10:50
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
    <link href="${pageContext.request.contextPath}css/styles.css" rel="stylesheet" type="text/css" />

</head>
<body>
<center>
    <div>
        <h2 id="x">借书详情</h2>
    </div>

    <table style="border:2px solid #444;border-collapse:collapse;"
           id="mytable">
        <tr>
            <td>Id</td>
            <td>userId</td>
            <td>bookName</td>
            <td>btime</td>
            <td>retime</td>
            <shiro:hasRole name="管理员">
            <td>description</td>
            </shiro:hasRole>
        </tr>
        <c:choose>
            <c:when test="${borrowList==null}">

            </c:when>
            <c:otherwise>
                <form action="${pageContext.request.contextPath}/borrow/delBorrow" method="get">
                <c:forEach items="${borrowList}" var="borrow">
                    <tr>
                        <td>${borrow.id}</td>
                        <td>${borrow.userId}</td>
                        <td>${borrow.bookName}</td>
                        <td>${borrow.btime}</td>
                        <td>${borrow.retime}</td>
                        <shiro:hasRole name="管理员">
                        <td><input type="submit" name="del" value="删除"></td>
                        <input type="hidden" name="boid" value="${borrow.id}">
                        </shiro:hasRole>
                    </tr>
                </c:forEach>
                </form>
            </c:otherwise>
        </c:choose>

    </table>
    <br />
    <hr />
</center>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}js/jquery-1.7.2.js"></script>
<script language="javascript" type="text/javascript"
        src="${pageContext.request.contextPath}js/jquery.bstablecrosshair.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}js/List.js"></script>
</body>
</html>
