<%--
  Created by IntelliJ IDEA.
  User: 陈家坝
  Date: 2018/3/3
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <c:set var="url">${pageContext.request.requestURL}</c:set>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(pageContext.request.requestURI))}${pageContext.request.contextPath}/" />

    <title>Title</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link type="text/css" href="${pageContext.request.contextPath}css/tsg.css" rel="stylesheet" media="screen" />
</head>
<body>
<div class="all">
    <div class="jldtb">
        <li><img src="${pageContext.request.contextPath}img/bj.jpg" /></li>
        <li class="li-1"><img src="${pageContext.request.contextPath}img/jldtb.png" /></li>
        <ul>
            <c:choose>
                <c:when test="${userInfo==null}">
                    <li><img src="${pageContext.request.contextPath}img/hq.png" />
                        <a href="${pageContext.request.contextPath}/loginUI?type=0">登录</a>
                        <a href="${pageContext.request.contextPath}/loginUI?type=1">注册</a></li>
                    <li><img src="${pageContext.request.contextPath}img/hq.png" />
                        <a href="${pageContext.request.contextPath}htm/loginService.html">借还书籍</a></li>
                </c:when>
                <c:otherwise>
                    <li><img src="${pageContext.request.contextPath}img/hq.png" />${userInfo.account}欢迎!
                        <a href="${pageContext.request.contextPath}/loginOut">注销</a></li>
                    <li><img src="${pageContext.request.contextPath}img/hq.png" />
                        <a href="${pageContext.request.contextPath}/toMgContro" target="_blank">借还书籍</a></li>
                </c:otherwise>
            </c:choose>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">服务申请</a></li>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">开馆时间</a></li>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">咨询培训</a></li>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">馆藏布局</a></li>
            <li><img src="${pageContext.request.contextPath}img/hq.png" /><a href="#">移动图书馆</a></li>
        </ul>
    </div>

    <div class="search">
        <form action="BookByWord" method="post" role="search">
            <input name="name" type="search" id="search" placeholder="请输入关键字" style="height:30px" />
            <input type="image"  src="${pageContext.request.contextPath}img/sousuo.png" alt="Submit search" style="position:absolute"/>
        </form>
    </div>

    <div id="bo">
        <ul class="asf">
            <c:if test="${roid==1}">
                <c:forEach items="${bookInfo }" var="bs">
                    <li><img src="${pageContext.request.contextPath}${bs.pic}" />
                        <p>${bs.name}</p>
                    </li>
                </c:forEach>
            </c:if>
            <c:if test="${roid==2}">
                <c:forEach items="${bookInfo }" var="bs">
                    <li><img src="${pageContext.request.contextPath}${bs.pic}" />
                        <p>${bs.name}</p>
                    </li>
                </c:forEach>
            </c:if>
            <c:if test="${roid==3}">
                <c:forEach items="${bookInfo }" var="bs">
                    <li><img src="${pageContext.request.contextPath}${bs.pic}" />
                        <p>${bs.name}</p>
                    </li>
                </c:forEach>
            </c:if>
            <c:if test="${roid==4}">
                <c:forEach items="${bookInfo }" var="bs">
                    <li><img src="${pageContext.request.contextPath}${bs.pic}" />
                        <p>${bs.name}</p>
                    </li>
                </c:forEach>
            </c:if>
            <c:if test="${roid==5}">
                <c:forEach items="${bookInfo }" var="bs">
                    <li><img src="${pageContext.request.contextPath}${bs.pic}" />
                        <p>${bs.name}</p>
                    </li>
                </c:forEach>
            </c:if>
            <c:if test="${roid==6}">
                <c:forEach items="${bookInfo }" var="bs">
                    <li><img src="${pageContext.request.contextPath}${bs.pic}" />
                        <p>${bs.name}</p>
                    </li>
                </c:forEach>
            </c:if>
            <c:if test="${roid==7}">
                <c:forEach items="${bookInfo }" var="bs">
                    <li><img src="${pageContext.request.contextPath}${bs.pic}" />
                        <p>${bs.name}</p>
                    </li>
                </c:forEach>
            </c:if>
            <c:if test="${roid==8}">
                <c:forEach items="${bookInfo }" var="bs">
                    <li><img src="${pageContext.request.contextPath}${bs.pic}" />
                        <p>${bs.name}</p>
                    </li>
                </c:forEach>
            </c:if>
        </ul>
    </div>

    <div class="footer">
        <li><p><small>版权所有&copy;701宿舍</small></p></li>
        <li><p><small>中国佛山</small></p></li>
        <br />
        <li><p><small>家里蹲图书馆：4008-823-823</small></p></li>
    </div>
</div>
</body>
</html>
