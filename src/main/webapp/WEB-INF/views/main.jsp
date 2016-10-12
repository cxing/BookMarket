<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

<title>网上购物系统</title>
<link rel="stylesheet" href="${ctxStatic}/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctxStatic}/css/sub-menu.css">
<link rel="stylesheet" type="text/css" href="${ctxStatic}/css/component.css" />
<style>
.container {
	background: cornsilk;
}

.carousel {
	position: relative;
	width: auto;
	display: inline-block;
}

.carousel-inner>.item>img {
	width: 100%;
}

.row.row-goods {
	margin: 30px 0;
}

.row.row-goods img {
	width: 100%;
}

.col-md-12.title {
	height: 60px;
	text-align: center;
	line-height: 60px;
	font-size: 28px;
	font-family: "微软雅黑";
}

.border {
	background: url("images/border.png") no-repeat;
	height: 12px;
}

.bor-l {
	padding: 0 0 0 12px;
	background-position: 0 0;
}

.bor-r {
	padding: 0 12px 0 0;
	background-position: right -24px;
}

.bor-m {
	background: url("images/border.png");
	height: 12px;
	background-position: -12px -12px;
}

.k-border {
	padding-top: 24px;
}

ul.list-group.list-group-2 {
	width: 83%;
	text-align: right;
}

ul.list-group.list-group-2 li {
	background: none;
}

ul.list-group.list-group-2 li img {
	width: 100%;
}
</style>
</head>
<body>
	<!--顶部导航-->
	<div id="top-part"></div>
	<div id="search-part"></div>

	<!--主体内容-->
	<div class="container">
		<div class="row">
			<div class="col-md-12" style="height: 43px; background: #f66060">
			</div>
		</div>
		<!--二级菜单、图片轮播-->
		<div class="row">
			<div class="col-md-3">
				<div class="toptitle">
					<a href="sortgoods.html" style="padding-left: 30px; color: #fff;">全部商品分类</a>
				</div>
				<ul class="topmenu" id="topmenu">
					<li><a href="#">服饰、珠宝首饰</a></li>
					<li><a href="#">图书、音像、数字商品</a></li>
					<li><a href="#">家用电器</a></li>
					<li><a href="#">手机、数码</a></li>
					<li><a href="#">个护化妆</a></li>
					<li><a href="#">电脑、办公</a></li>
					<li><a href="#">家居、家具、家装、厨具</a></li>
					<li><a href="#">鞋靴、箱包、钟表、奢侈品</a></li>
					<li><a href="#">运动户外</a></li>
					<li><a href="#">汽车用品</a></li>
					<li><a href="#">母婴、玩具乐器</a></li>
				</ul>
			</div>
			<div class="col-md-6">
				<div id="carousel-explorer" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-explorer" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-explorer" data-slide-to="1"></li>
						<li data-target="#carousel-explorer" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="${ctxStatic}/images/1.jpg" alt="...">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img src="${ctxStatic}/images/2.jpg" alt="...">
							<div class="carousel-caption"></div>
						</div>
						<div class="item">
							<img src="${ctxStatic}/images/3.jpg" alt="...">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-explorer"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-explorer"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<ul class="list-group list-group-2">
					<li class="list-group-item"><img
						src="${ctxStatic}/images/4.jpg" alt=""></li>
					<li class="list-group-item"><img
						src="${ctxStatic}/images/5.jpg" alt=""></li>
				</ul>
			</div>
		</div>
		<!--第三块，热卖商品-->
		<div class="row row-goods">
			<div class="col-md-12 title">
				<div class="col-md-5 ">
					<div class="k-border">
						<div class="border bor-l">
							<div class="border bor-r">
								<div class="bor-m"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2 ">热卖商品</div>
				<div class="col-md-5 ">
					<div class="k-border">
						<div class="border bor-l">
							<div class="border bor-r">
								<div class="bor-m"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
				<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
					<ul>
						<c:forEach items="${books}" var="book">
						<li>
							<a class="cbp-vm-image" href="#"><img src="${ctxStatic}/images/20928547-1_w_1.jpg"></a>
							<h3 class="cbp-vm-title">${book.bname}</h3>
							<div class="cbp-vm-details">
								<p>出版社    ：${book.press}</p>
							</div>
							<a class="cbp-vm-icon cbp-vm-add" href="http://www.htmleaf.com/">Add to cart</a>
						</li>
						</c:forEach>
					</ul>
				</div>
	</div>
	<footer>
		<p class="pull-right">
			<a href="#top-part">回到顶部</a>
		</p>
	</footer>
</body>
<script src="${ctxStatic}/js/jquery-1.11.0.min.js"></script>
<script src="${ctxStatic}/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	window.onload = function() {
		var Lis = document.getElementById("topmenu").getElementsByTagName("li");
		for (i = 0; i < Lis.length; i++) {
			Lis[i].onmouseover = function() {
				this.className = "lihover";
			}
			Lis[i].onmouseout = function() {
				this.className = "";
			}
		}
	}
</script>
</html>