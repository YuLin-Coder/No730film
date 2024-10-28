<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script>
	function clickMenu(id){
		localStorage.setItem('menu_id',id)
	}
	window.onload = function(){
		const menu_id = localStorage.getItem('menu_id')
		if(menu_id){
			document.getElementById(menu_id).click()
		}
	}
</script>
<div id="leftSide">
	<div class="sidebarSep"></div>
	<ul id="menu" class="nav">

		<li class="tables"><a id="admin" title="管理员信息" class="exp"><span>管理员信息</span></a>
			<ul class="sub">
				<li><a href="admin/createAdmin.action" title="新增管理员信息" onclick="clickMenu('admin')">新增管理员信息</a></li>
				<li><a href="admin/getAllAdmin.action" title="管理员信息列表" onclick="clickMenu('admin')">管理员信息列表</a></li>
				<li><a href="admin/queryAdminByCond.action" title="管理员信息查询" onclick="clickMenu('admin')">管理员信息查询</a></li>
			</ul></li>
		<li class="tables"><a id="users" title="网站用户信息" class="exp"><span>网站用户信息</span></a>
			<ul class="sub">
				<li><a href="users/getAllUsers.action" title="网站用户信息列表" onclick="clickMenu('users')">网站用户信息列表</a></li>
				<li><a href="users/queryUsersByCond.action" title="网站用户信息查询" onclick="clickMenu('users')">网站用户信息查询</a></li>
			</ul></li>
		<li class="tables" id=""><a id="article" title="新闻公告信息" class="exp"><span>新闻公告信息</span></a>
			<ul class="sub">
				<li><a href="article/createArticle.action" title="新增新闻公告信息" onclick="clickMenu('article')">新增新闻公告信息</a></li>
				<li><a href="article/getAllArticle.action" title="新闻公告信息列表" onclick="clickMenu('article')">新闻公告信息列表</a></li>
				<li><a href="article/queryArticleByCond.action" title="新闻公告信息查询" onclick="clickMenu('article')">新闻公告信息查询</a></li>
			</ul></li>
		<li class="tables" id=""><a id="cate" title="电影类型信息" class="exp"><span>电影类型信息</span></a>
			<ul class="sub">
				<li><a href="cate/createCate.action" title="新增电影类型信息" onclick="clickMenu('cate')">新增电影类型信息</a></li>
				<li><a href="cate/getAllCate.action" title="电影类型信息列表" onclick="clickMenu('cate')">电影类型信息列表</a></li>
				<li><a href="cate/queryCateByCond.action" title="电影类型信息查询" onclick="clickMenu('cate')">电影类型信息查询</a></li>
			</ul></li>
		<li class="tables" id=""><a id="city" title="城市信息" class="exp"><span>城市信息</span></a>
			<ul class="sub">
				<li><a href="city/createCity.action" title="新增城市信息" onclick="clickMenu('city')">新增城市信息</a></li>
				<li><a href="city/getAllCity.action" title="城市信息列表" onclick="clickMenu('city')">城市信息列表</a></li>
				<li><a href="city/queryCityByCond.action" title="城市信息查询" onclick="clickMenu('city')">城市信息查询</a></li>
			</ul></li>
		<li class="tables" id=""><a id="cinema" title="影院信息" class="exp"><span>影院信息</span></a>
			<ul class="sub">
				<li><a href="cinema/createCinema.action" title="新增影院信息" onclick="clickMenu('cinema')">新增影院信息</a></li>
				<li><a href="cinema/getAllCinema.action" title="影院信息列表" onclick="clickMenu('cinema')">影院信息列表</a></li>
				<li><a href="cinema/queryCinemaByCond.action" title="影院信息查询" onclick="clickMenu('cinema')">影院信息查询</a></li>
			</ul></li>
		<li class="tables" id=""><a id="film" title="电影信息" class="exp"><span>电影信息</span></a>
			<ul class="sub">
				<li><a href="film/createFilm.action" title="新增电影信息" onclick="clickMenu('film')">新增电影信息</a></li>
				<li><a href="film/getAllFilm.action" title="电影信息列表" onclick="clickMenu('film')">电影信息列表</a></li>
				<li><a href="film/queryFilmByCond.action" title="电影信息查询" onclick="clickMenu('film')">电影信息查询</a></li>
			</ul></li>
		<li class="tables" id=""><a id="orders" title="订单信息" class="exp"><span>订单信息</span></a>
			<ul class="sub">
				<li><a href="orders/getAllOrders.action" title="订单信息列表" onclick="clickMenu('orders')">订单信息列表</a></li>
				<li><a href="orders/queryOrdersByCond.action" title="订单信息查询" onclick="clickMenu('orders')">订单信息查询</a></li>
			</ul></li>
		<li class="tables"><a id="topic" title="电影评价信息" class="exp"><span>电影评价信息</span></a>
			<ul class="sub">
				<li><a href="topic/getAllTopic.action" title="电影评价信息列表" onclick="clickMenu('topic')">电影评价信息列表</a></li>
				<li><a href="topic/queryTopicByCond.action" title="电影评价信息查询" onclick="clickMenu('topic')">电影评价信息查询</a></li>
			</ul></li>
	</ul>
</div>
