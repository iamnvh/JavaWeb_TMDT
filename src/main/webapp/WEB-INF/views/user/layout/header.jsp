<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- TagLibs -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<header
		class="header-area header-padding-2 sticky-bar header-res-padding clearfix">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-2 col-lg-2 col-md-6 col-4">
					<div class="logo">
						<a href="${base }/index"> <img alt="" src="${base }/user/img/logo/logo.png">
						</a>
					</div>
				</div>
				<div class="col-xl-8 col-lg-8 d-none d-lg-block">
					<div class="main-menu">
						<nav>
							<ul>
								<li><a href="${base }/index">Trang Chủ</a></li>
								<li><a href="${base }/list-product"> Cửa Hàng <i
										class="fa fa-angle-down"></i>
								</a>
									<ul class="mega-menu">
										<li>
											<ul>
												<li class="mega-menu-title"><a href="#">Danh Mục
														Sản Phẩm</a></li>
												<c:forEach items="${category }" var="c">
													<li><a href="${base}/category/${c.seo}">${c.nameCategory }</a></li>
												</c:forEach>
											</ul>
										</li>
									</ul>
								<li><a href="${base }/blog"> Blog </a></li>
								<li><a href="${base }/about"> Thông Tin </a></li>
								<li><a href="${base }/contact"> Liên Hệ </a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-xl-2 col-lg-2 col-md-6 col-8">
					<div class="header-right-wrap">
						<div class="same-style header-search">
							<a class="search-active" href="#"><i class="pe-7s-search"></i></a>
							<div class="search-content">
								<form action="${base }/search" method="get">
									<input type="text" placeholder="Tìm kiếm ..." name="searchText" />
									<button class="button-search">
										<i class="pe-7s-search"></i>
									</button>
								</form>
							</div>
						</div>
						<div class="same-style account-satting">
							<a class="account-satting-active" href="#"><i
								class="pe-7s-user-female"></i></a>
							<div class="account-dropdown">
								<c:choose>
									<c:when test="${isLogined }">
										<ul>
											<li style="font-weight: bold;"><a href="">${userLogined.userName }</a></li>
											<li><a href="${base }/logout">Đăng Xuất</a></li>
										</ul>
									</c:when>
									<c:otherwise>
										<ul>
											<li><a href="${base }/login">Đăng Nhập</a></li>
											<li><a href="${base }/register">Đăng Ký</a></li>
										</ul>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="same-style header-wishlist">
							<a href=""><i class="pe-7s-like"></i></a>
						</div>
						<div class="same-style cart-wrap">
							<button class="icon-cart">
								<a href="${base }/cart"><i class="pe-7s-shopbag"></i></a> <span
									class="count-style" id="totalItemsInCart"> ${totalItems }</span>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="mobile-menu-area">
				<div class="mobile-menu">
					<nav id="mobile-menu-active">
						<ul class="menu-overflow">
							<li><a href="${base }/index">Trang Chủ</a></li>
							<li><a href="${base }/list-product">Cửa Hàng</a>
								<ul>
									<li><a href="">Danh Mục Sản Phẩm</a>
										<ul>
											<c:forEach items="${category }" var="c">
												<li><a href="${base}/category/${c.seo}">${c.nameCategory }</a></li>
											</c:forEach>
										</ul></li>
								</ul></li>
							<li><a href="#"> Blog </a></li>
							<li><a href=""> Thông Tin </a></li>
							<li><a href="${base }/contact"> Liên Hệ </a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
</body>
</html>