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

    <title>My JSP 'jialidunxinwen.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}css/sccs.css" media="screen" />
</head>

<body>
<div class="asc">
    <div class="first">
        <div class="school"><li><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}img/jld.jpg"/></a></li></div>
        <div class="search">
            <form action="BookByWord" method="post" role="search">
                <input name="name" type="search" id="search" placeholder="请输入关键字" style="height:30px" />
                <input type="image"  src="${pageContext.request.contextPath}img/sousuo.png" alt="Submit search" style="position:absolute"/>
            </form>
        </div></div></div>

<div class="nav">
    <!--导航条-->
    <ul class="nav-main">
        <li><a href="${pageContext.request.contextPath}/index/news">家里蹲新闻</a></li>
        <li id="li-1"><a href="${pageContext.request.contextPath}/index/description">学校概况</a><span></span></li>
        <li><a href="${pageContext.request.contextPath}/index/school">院系设置</a></li>
        <li><a href="${pageContext.request.contextPath}/index/teaching">师资队伍</a></li>
        <li id="li-4"><a href="${pageContext.request.contextPath}/index/science">科学研究</a><span></span></li>
        <li id="li-5"><a href="${pageContext.request.contextPath}/index/student">招生就业</a><span></span></li>
        <li id="li-6"><a href="${pageContext.request.contextPath}/index/personnel">人才招聘</a><span></span></li>
        <li><a href="${pageContext.request.contextPath}/index/libray" target="_blank">图书馆</a></li>
        <li id="li-8"><a href="${pageContext.request.contextPath}/index/education">教育教学</a><span></span></li>
        <li><a href="${pageContext.request.contextPath}/index/">首页</a></li>
    </ul>
    <!--隐藏盒子-->
    <div id="box-1" class="hidden-box hidden-loc-index">
        <ul>
            <li><a href="#">校长致辞</a></li>
            <li><a href="#">学校沿革</a></li>
            <li><a href="#">历任领导</a></li>
            <li><a href="#">现任领导</a></li>
            <li><a href="#">组织机构</a></li>
            <li><a href="#">统计资料</a></li>
        </ul>
    </div>
    <div id="box-4" class="hidden-box hidden-loc-us">
        <ul>
            <li><a href="#">科研项目</a></li>
            <li><a href="#">科研机构</a></li>
            <li><a href="#">科研合作</a></li>
            <li><a href="#">科研成果与知识产权</a></li>
            <li><a href="#">学术交流</a></li>
        </ul>
    </div>
    <div id="box-5" class="hidden-box hidden-loc-info">
        <ul>
            <li><a href="#">本科生招生</a></li>
            <li><a href="#">研究生招生</a></li>
            <li><a href="#">国际学生招生</a></li>
            <li><a href="#">学生职业发展</a></li>
        </ul>
    </div>
    <div id="box-6" class="hidden-box hidden-loc-info box06">
        <ul>
            <li><a href="#">招聘计划</a></li>
            <li><a href="#">招聘信息</a></li>
            <li><a href="#">我要招聘</a></li>
        </ul>
    </div>
    <div id="box-8" class="hidden-box hidden-loc-info box08">
        <ul>
            <li><a href="#">本科生教育</a></li>
            <li><a href="#">研究所教育</a></li>
            <li><a href="#">国际学生培养</a></li>
            <li><a href="#">继续教育</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}js/main.js"></script>
</body>
</html>
