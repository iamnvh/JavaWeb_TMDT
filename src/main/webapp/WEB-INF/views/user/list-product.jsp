<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- TagLibs -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Flone - Fashion</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS
	============================================ -->
<!-- Variables -->
<jsp:include page="/WEB-INF/views/user/layout/variables.jsp"></jsp:include>

<!-- CSS -->
<jsp:include page="/WEB-INF/views/user/layout/css.jsp"></jsp:include>
</head>

<body>
	<!-- HEADER -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>

	<div class="breadcrumb-area pt-35 pb-35 bg-gray-3">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<ul>
					<li><a href="${base }/index">Trang Chủ</a></li>
					<li class="active">Cửa Hàng</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="shop-area pt-95 pb-100">
		<div class="container">
			<div class="row flex-row-reverse">
				<div class="col-lg-9">
					<div class="shop-top-bar">
						<!-- <div class="select-shoing-wrap">
							<div class="shop-select">
								<select>
									<option value="">Sort by newness</option>
									<option value="">A to Z</option>
									<option value="">Z to A</option>
									<option value="">In stock</option>
								</select>
							</div> 
						</div>
						<div class="shop-tab nav">
							<a class="active" href="#shop-1" data-toggle="tab"> <i
								class="fa fa-table"></i>
							</a> <a href="#shop-2" data-toggle="tab"> <i
								class="fa fa-list-ul"></i>
							</a>
						</div>-->
					</div>
					<div class="shop-bottom-area mt-35">
						<div class="tab-content jump">
							<div id="shop-1" class="tab-pane active">
								<div class="row">
									<c:forEach items="${product}" var="p">
										<div class="col-xl-4 col-md-6 col-lg-6 col-sm-6">
											<div class="product-wrap mb-25 scroll-zoom">
												<div class="product-img">
													<a href="#"> <img class="default-img"
														src="${base }/upload/${p.avatar}" alt=""> <img
														class="hover-img" src="${base }/upload/${p.avatar}" alt="">
													</a> <span class="pink">-10%</span>
													<div class="product-action" style="margin-left: 90px !important;">
														<div class="pro-same-action pro-wishlist">
															<a title="Wishlist" href="#"><i class="pe-7s-like"></i></a>
														</div>
														<div class="pro-same-action pro-quickview" >
															<a title="Quick View" href="#" data-toggle="modal"
																data-target="#exampleModal${p.id }"><i class="pe-7s-look"></i></a>
														</div>
													</div>
												</div>
												<div class="product-content text-center">
													<h3>
														<a href="${base }/product-details?id=${p.id}">${p.title }</a>
													</h3>
													<div class="product-rating">
														<i class="fa fa-star-o yellow"></i> <i
															class="fa fa-star-o yellow"></i> <i
															class="fa fa-star-o yellow"></i> <i class="fa fa-star-o"></i>
														<i class="fa fa-star-o"></i>
													</div>
													<div class="product-price">
														<span><fmt:setLocale value="vi_VN" scope="session" />
															<fmt:formatNumber value="${p.price }" type="currency" /></span>
														<span class="old"><fmt:setLocale value="vi_VN"
																scope="session" /> <fmt:formatNumber
																value="${p.price_sale }" type="currency" /></span>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="pro-pagination-style text-center mt-30">
							<ul>
								<li><a class="prev" href="#"><i
										class="fa fa-angle-double-left"></i></a></li>
								<li><a class="active" href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a class="next" href="#"><i
										class="fa fa-angle-double-right"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="sidebar-style mr-30">
						<div class="sidebar-widget">
							<h4 class="pro-sidebar-title">Tìm Kiếm Theo Tên</h4>
							<div class="pro-sidebar-search mb-50 mt-25">
								<form class="pro-sidebar-search-form"
									action="${base }/search-product">
									<input type="text" placeholder="Tìm kiếm ở đây..."
										name="searchText">
									<button>
										<i class="pe-7s-search"></i>
									</button>
								</form>
							</div>
						</div>
						<div class="sidebar-widget mt-45">
							<form action="${base }/search-price" method="get">
								<h4 class="pro-sidebar-title">Tìm Kiếm Theo Giá</h4>
								<div class="row mt-2">
									<div class="col-md-6">
										<label class="labels"></label><input type="number"
											class="form-control" placeholder="Tối thiểu" value="" name="price1" style="font-size: 14px;">
									</div>
									<div class="col-md-6">
										<label class="labels"></label><input type="number"
											class="form-control" value="" placeholder="Tối đa" name="price2" style="font-size: 14px;">
									</div>
								</div>
								<div class="mt-5 text-center">
									<button class="btn btn-light profile-button" type="submit" style="font-size: 14px;">Tìm Kiếm</button>
								</div>
							</form>
						</div>
						<div class="sidebar-widget mt-50">
							<h4 class="pro-sidebar-title">Nhãn Hàng</h4>
							<div class="sidebar-widget-tag mt-25">
								<ul>
									<li><a href="#">Quần</a></li>
									<li><a href="#">Áo</a></li>
									<li><a href="#">Túi</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/user/layout/model.jsp"></jsp:include>
	<!-- JS -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
</body>

</html>