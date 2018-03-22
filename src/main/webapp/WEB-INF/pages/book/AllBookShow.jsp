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


    <title>My JSP 'allBookShow.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->
    <link type="text/css" href="${pageContext.request.contextPath}css/tsg.css" rel="stylesheet" media="screen" />
</head>

<body>
<div class="all">
    <div class="jldtb">
        <li><img src="${pageContext.request.contextPath}img/bj.jpg" /></li>
        <li class="li-1"><img src="${pageContext.request.contextPath}img/jldtb.png" /></li>
        <ul>
            <shiro:guest>
                <li><img src="${pageContext.request.contextPath}img/hq.png" />
                    <a href="${pageContext.request.contextPath}/loginUI?type=0">登录</a>
                    <a href="${pageContext.request.contextPath}/loginUI?type=1">注册</a></li>
                <li><img src="${pageContext.request.contextPath}img/hq.png" />
                    <a href="${pageContext.request.contextPath}htm/loginService.html">借还书籍</a></li>
            </shiro:guest>
            <shiro:user>
                <li><img src="${pageContext.request.contextPath}img/hq.png" /><shiro:principal/>欢迎!
                    <a href="${pageContext.request.contextPath}/loginOut">注销</a></li>
                <li><img src="${pageContext.request.contextPath}img/hq.png" />
                    <a href="${pageContext.request.contextPath}/toMgContro" target="_blank">借还书籍</a></li>
            </shiro:user>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">服务申请</a></li>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">开馆时间</a></li>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">咨询培训</a></li>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">馆藏布局</a></li>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">移动图书馆</a></li>
        </ul>
    </div>

    <c:choose>
        <c:when test="${bookList==null}">

        </c:when>
        <c:otherwise>
            <div id="bo">
                <ul class="asf">
                <c:forEach items="${bookList }" var="book">
                    <li><a href="#"><img src="${book.pic}" alt="" /></a>
                        <p>
                            <a href="#">${book.name}</a>
                        </p>
                    </li>
                </c:forEach>
                </ul>
            </div>
        </c:otherwise>
    </c:choose>



    <div class="footer">
        <center>
            <div class="row" >
                <div class="asd">
                    当前${pageInfo.pageNum }页，总共${pageInfo.pages }页，总共${pageInfo.total }条记录
                </div>
                <div class="asd">
                    <ul class="pagination">
                        <li><a href="${pageContext.request.contextPath}/book/pageOfBook?pageNum=1">首页</a></li>

                        <c:if test="${pageInfo.hasPreviousPage  }">
                        <li>
                            <a href="${pageContext.request.contextPath}/book/pageOfBook?pageNum=${pageInfo.pageNum-1}">
                                <span>&laquo;</span>
                            </a>
                        </li>
                        </c:if>

                        <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                        <c:if test="${page==pageInfo.pageNum }">
                        <li class="active"><a href="${pageContext.request.contextPath}/book/pageOfBook?pageNum=${page}">${page}</a></li>
                        </c:if>
                        <c:if test="${page!=pageInfo.pageNum }">
                        <li><a href="${pageContext.request.contextPath}/book/pageOfBook?pageNum=${page}">${page}</a></li>
                        </c:if>
                        </c:forEach>

                        <c:if test="${pageInfo.hasNextPage }">
                        <li>
                            <a href="${pageContext.request.contextPath}/book/pageOfBook?pageNum=${pageInfo.pageNum+1 }">
                                <span>&raquo;</span>
                            </a>
                        </li>
                        </c:if>

                        <li><a href="${pageContext.request.contextPath}/book/pageOfBook?pageNum=${pageInfo.pages}">末页</a></li>
                </div>
            </div>
            <li><p>
                <small>版权所有&copy;701宿舍</small>
            </p></li>
            <li><p>
                <small>中国佛山</small>
            </p></li> <br />
            <li><p>
                <small>家里蹲图书馆：4008-823-823</small>
            </p></li>
        </center>
    </div>
</div>
</body>
</html>

