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


    <title>My JSP 'bookListShow.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->
    <link href="${pageContext.request.contextPath}css/styles.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}js/jquery-1.7.2.js"></script>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}js/jquery.bstablecrosshair.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}js/List.js"></script>
</head>

<body>

<center>
    <div>
        <h2 id="x">借书详情</h2>
    </div>

    <table style="border:2px solid #444;border-collapse:collapse;"
           id="mytable">
        <tr>
            <td>The call number</td>
            <td>Student id</td>
            <td>time</td>
            <td>book name</td>
            <td>Retime</td>
        </tr>
        <c:choose>
            <c:when test="${borrowList==null}">

            </c:when>
            <c:otherwise>
                <c:forEach items="${borrowList}" var="borrow">
                    <tr>
                        <td>${borrow.boid}</td>
                        <td>${borrow.id}</td>
                        <td>${borrow.btime}</td>
                        <td>${borrow.bname}</td>
                        <td>${borrow.retime}</td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>

    </table>
    <br />
    <hr />

</center>
</body>
</html>
