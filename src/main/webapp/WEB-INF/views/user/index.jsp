<%@page
	import="org.springframework.security.core.userdetails.UserDetails"%>
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
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.png">

<!-- CSS============================================ -->
<!-- Variables -->
<jsp:include page="/WEB-INF/views/user/layout/variables.jsp"></jsp:include>

<!-- CSS -->
<jsp:include page="/WEB-INF/views/user/layout/css.jsp"></jsp:include>
</head>

<body>
	<!-- HEADER -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
	<div class="slider-area ml-70 mr-70">
		<div class="slider-active owl-carousel nav-style-1">
			<div
				class="single-slider-2 slider-height-1 d-flex align-items-center slider-height-res bg-img"
				style="background-image: url(user/img/slider/slider-12.jpg);" >
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-6 col-md-7 ml-auto">
							<div class="slider-content-2 slider-animated-1">
								<h3 class="animated">Giảm giá 40%</h3>
								<h1 class="animated">
									Ưu đãi mùa hè <br>Bộ sưu tập 2021
								</h1>
								<div class="slider-btn btn-hover">
									<a class="animated" href="${base }/list-product">MUA SẮM NGAY</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="single-slider-2 slider-height-1 d-flex align-items-center slider-height-res bg-img"
				style="background-image: url(user/img/slider/slider-12-2.jpg);">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-6 col-md-7 ml-auto">
							<div class="slider-content-2 slider-animated-1">
								<h3 class="animated">Giảm giá 40%</h3>
								<h1 class="animated">
									Ưu đãi mùa hè <br>Bộ sưu tập 2021
								</h1>
								<div class="slider-btn btn-hover">
									<a class="animated" href="${base }/list-product">MUA SẮM NGAY</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="suppoer-area pt-100 pb-60">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="support-wrap-2 mb-30 support-shape text-center">
                    <div class="support-content-2">
                        <img class="animated" src="user/img/icon-img/support-1.png" alt="">
                        <h5>Miễn Phí Vận Chuyển</h5>
                        <p>Miễn phí vận chuyển cho đơn hàng từ 1000.000đ</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="support-wrap-2 mb-30 support-shape text-center">
                    <div class="support-content-2">
                        <img class="animated" src="user/img/icon-img/support-2.png" alt="">
                        <h5>Hỗ Trợ 24/7</h5>
                        <p>Nhân viên hỗ trợ trực tuyến khách hàng 24/7</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="support-wrap-2 mb-30 text-center">
                    <div class="support-content-2">
                        <img class="animated" src="user/img/icon-img/support-3.png" alt="">
                        <h5>Hoàn Tiền</h5>
                        <p>Hoàn tiền khi khách hàng không hài lòng về sản phẩm</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	<div class="product-area pb-60">
		<div class="container">
			<div class="tab-filter-wrap mb-60">
				<div class="product-tab-list-2 nav">
					<a class="active"  href="#product-2" data-toggle="tab">
						<h4>Sản Phẩm Mới</h4>
					</a> <a href="#product-3" data-toggle="tab">
						<h4>Sản Phẩm Hot</h4>
					</a>
				</div>
			</div>
			<div class="tab-content jump">
				<div class="tab-pane active" id="product-2">
					<div class="row">
						<c:forEach items="${newproduct}" var="p">
							<div class="col-xl-3 col-md-6 col-lg-4 col-sm-6">
								<div class="product-wrap-2 mb-25">
									<div class="product-img">
										<a href=""> <img class="default-img"
											src="${base }/upload/${p.avatar}" alt=""> <img
											class="hover-img" src="${base }/upload/${p.avatar}" alt="">
										</a> <span class="pink">New</span>
										<div class="product-action-2">
											<a title="Quick View" href="#" data-toggle="modal"
												data-target="#exampleModal${p.id }"><i class="fa fa-eye"></i></a> <a
												title="Compare" href="#"><i class="fa fa-retweet"></i></a>
										</div>
									</div>
									<div class="product-content-2">
										<div class="title-price-wrap-2">
											<h3>
												<a href="${base }/product-details?id=${p.id}">${p.title }</a>
											</h3>
											<div class="price-2">
												<span><fmt:setLocale value="vi_VN" scope="session" />
													<fmt:formatNumber value="${p.price_sale }" type="currency" /></span> <span
													class="old"><fmt:setLocale value="vi_VN"
														scope="session" /> <fmt:formatNumber
														value="${p.price }" type="currency" /></span>
											</div>
										</div>
										<div class="pro-wishlist-2">
											<a title="Wishlist" href="wishlist.html"><i
												class="fa fa-heart-o"></i></a>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="tab-pane" id="product-3">
					<div class="row">
						<c:forEach items="${hotproduct}" var="p">
							<div class="col-xl-3 col-md-6 col-lg-4 col-sm-6">
								<div class="product-wrap-2 mb-25">
									<div class="product-img">
										<a href=""> <img class="default-img"
											src="${base }/upload/${p.avatar}" alt=""> <img
											class="hover-img" src="${base }/upload/${p.avatar}" alt="">
										</a> <span class="pink">Hot</span>
										<div class="product-action-2">
											<a title="Quick View" href="#" data-toggle="modal"
												data-target="#exampleModal${p.id }"><i class="fa fa-eye"></i></a> <a
												title="Compare" href="#"><i class="fa fa-retweet"></i></a>
										</div>
									</div>
									<div class="product-content-2">
										<div class="title-price-wrap-2">
											<h3>
												<a href="${base }/product-details?id=${p.id}">${p.title }</a>
											</h3>
											<div class="price-2">
												<span><fmt:setLocale value="vi_VN" scope="session" />
													<fmt:formatNumber value="${p.price }" type="currency" /></span> <span
													class="old"><fmt:setLocale value="vi_VN"
														scope="session" /> <fmt:formatNumber
														value="${p.price_sale }" type="currency" /></span>
											</div>
										</div>
										<div class="pro-wishlist-2">
											<a title="Wishlist" href="wishlist.html"><i
												class="fa fa-heart-o"></i></a>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="blog-area pb-55">
		<div class="container">
			<div class="section-title text-center mb-55">
				<h2>BLOG CỦA CHÚNG TÔI</h2>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="blog-wrap mb-30 scroll-zoom">
						<div class="blog-img">
							<a href="${base }/blog"><img
								src="user/img/blog/blog-6.jpg" alt=""></a> <span
								class="purple">Cách sống</span>
						</div>
						<div class="blog-content-wrap">
							<div class="blog-content text-center">
								<h3>
									<a href="">Tận hưởng phong cách <br>
										mua sắm
									</a>
								</h3>
								<span>Bởi cửa hàng <a href="#">Flone</a></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="blog-wrap mb-30 scroll-zoom">
						<div class="blog-img">
							<a href="${base }/blog"><img
								src="user/img/blog/blog-4.jpg" alt=""></a> <span
								class="purple">Cách sống</span>
						</div>
						<div class="blog-content-wrap">
							<div class="blog-content text-center">
								<h3>
									<a href="">Tận hưởng phong cách <br>
										mua sắm
									</a>
								</h3>
								<span>Bởi cửa hàng <a href="#">Flone</a></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="blog-wrap mb-30 scroll-zoom">
						<div class="blog-img">
							<a href="${base }/blog"><img
								src="user/img/blog/blog-8.jpg" alt=""></a> <span
								class="purple">Cách sống</span>
						</div>
						<div class="blog-content-wrap">
							<div class="blog-content text-center">
								<h3>
									<a href="">Tận hưởng phong cách <br>
										mua sắm
									</a>
								</h3>
								<span>Bởi cửa hàng <a href="#">Flone</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Modal end -->
	<!-- JS============================================ -->
	<!-- FOOTER -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/user/layout/model.jsp"></jsp:include>
	<!-- JS -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

</body>

</html>