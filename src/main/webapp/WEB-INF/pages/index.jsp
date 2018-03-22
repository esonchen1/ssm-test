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

    <title>My JSP 'index.jsp' starting page</title>
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
            <form action="#" method="post" role="search">
                <input name="name" type="search" id="search" placeholder="请输入关键字" style="height:30px" />
                <input type="image"  src="${pageContext.request.contextPath}img/sousuo.png" alt="Submit search" style="position:absolute"/>
            </form>
        </div></div></div>
<!--nav-->
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
        <li id="li-9"><a href="${pageContext.request.contextPath}/index/jld">走进家里蹲</a><span></span></li>
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
    <div id="box-9" class="hidden-box hidden-loc-info box09">
        <ul>
            <li><a href="#">校园生活</a></li>
            <li><a href="#">校园风光</a></li>
            <li><a href="#">使用信息</a></li>
        </ul>
    </div>
</div>


<div class="box">
    <ol></ol>
    <ul>
        <li class="active" style="left:0;z-index:11;"><span class="active" style="left:0;z-index:11;"><img src="${pageContext.request.contextPath}img/zdbn.jpg"/></span></li>
        <li><img src="${pageContext.request.contextPath}img/19da.jpg" /></li>
        <li><img src="${pageContext.request.contextPath}img/19da2.jpg" /></li>
        <li><img src="${pageContext.request.contextPath}img/naojijiekou.jpg" /></li>
    </ul>
</div>

<div id="news">
    <li><h2 class="headlinenews">头条新闻</h2></li>
    <ul>
        <li><a href="#">施一公研究组发文报道酿酒酵<br>母剪接体处于完成RNA剪接后<br>构象的高分辨率结构</a>
        </li>
        <li><a href="#">一夜暴富的最简单方式是什么？</a></li>
        <li><a href="#">高等数学线性代数概率论统计<br>离散数学数据结构大学英语计<br>算机网络操作系统汇编语言</a></li>
    </ul>
</div>

<div id="focus">
    <h2 class="attention">聚焦关注</h2>
    <ul>
        <li><a href="#">家里蹲大学与女儿国航发集团签署<br>战略合作协议</a></li>
        <li><a href="#">家里蹲领衔团队斩获世界高性能计算最高<br>奖“碧咸·牛的一批”奖，创新战略+学科</a></li>
        <li><a href="#">家里蹲大学党委理论学习中心组开展“新时<br>代坚持和发展的基本“”</a></li>
    </ul>
</div>
<div class="lastthird">
    <li><h5>常用连接</h5></li>
    <ul class="head">
        <li><a href="#"><h5>校园公交车</h5></a></li>
        <li><a href="#"><h5>校园地图</h5></a></li>
        <li><a href="#"><h5>教育基金</h5></a></li>
        <li><a href="#"><h5>校园公告</h5></a></li>
        <li><a href="#"><h5>实用信息</h5></a></li>
        <li><a href="#"><h5>校友总会</h5></a></li>
    </ul>
</div>
<div class="lastsecond">
    <ul>
        <li><a href="#"><h5>学校概况</h5></a>
            <a href="#"><h6>校长致辞</h6></a>
            <a href="#"><h6>学校沿革</h6></a>
            <a href="#"><h6>历任领导</h6></a>
            <a href="#"><h6>现任领导</h6></a>
            <a href="#"><h6>组织机构</h6></a>
            <a href="#"><h6>统计资料</h6></a>
        </li>
        <li><a href="#"><h5>院系设置</h5></a></li>
        <li><a href="#"><h5>师资队伍</h5></a>
            <a href="#"><h6>概况</h6></a>
            <a href="#"><h6>杰出人才</h6></a>
        </li>
        <li><a href="#"><h5>教育教学</h5></a>
            <a href="#"><h6>本科生教育</h6></a>
            <a href="#"><h6>研究生教育</h6></a>
            <a href="#"><h6>国际学生培养</h6></a>
            <a href="#"><h6>继续教育</h6></a>
        </li>
        <li><a href="#"><h5>科学研究</h5></a>
            <a href="#"><h6>科研项目</h6></a>
            <a href="#"><h6>科研机构</h6></a>
            <a href="#"><h6>科研合作</h6></a>
            <a href="#"><h6>科研结果与知识产权</h6></a>
            <a href="#"><h6>学术交流</h6></a>
        </li>
        <li><a href="#"><h5>招生就业</h5></a>
            <a href="#"><h6>本科招生</h6></a>
            <a href="#"><h6>研究生招生</h6></a>
            <a href="#"><h6>国际学生招生</h6></a>
            <a href="#"><h6>学生职业发展</h6></a>
        </li>
        <li><a href="#"><h5>人才招聘</h5></a>
            <a href="#"><h6>招聘计划</h6></a>
            <a href="#"><h6>招聘信息</h6></a>
            <a href="#"><h6>我要招聘</h6></a>
        </li>
        <li>
            <a href="#"><h5>走进家里蹲</h5></a>
            <a href="#"><h6>校园风光</h6></a>
            <a href="#"><h6>校园信息</h6></a>
            <a href="#"><h6>校园生活</h6></a>
        </li>
    </ul>
</div>
<div class="last">
    <ul>
        <li><p><small>电话查号台：4408-823-823</small></p></li>
        <li><p><small>管理员信箱：cjb781138092@163.com</small></p></li>
        <li><p><small>地址:佛山市</small></p></li>
        <li><p><small>京网安备666666号</small></p></li>
        <br>
        <li><p><small>版权所有&copy;701宿舍</small></p></li>
    </ul>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}js/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}js/scrollAd.js"></script>
</body>
</html>
