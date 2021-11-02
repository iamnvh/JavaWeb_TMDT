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
					<li class="active">Sản Phẩm Chi tiết</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="shop-area pt-100 pb-100">
		<div class="container">
			<div class="row">
				<div class="col-xl-7 col-lg-7 col-md-12">
					<div class="product-details-img mr-20 product-details-tab">
						<div class="zoompro-wrap zoompro-2 pr-20">
							<div class="zoompro-border zoompro-span">
								<img class="zoompro" src="${base }/upload/${product.avatar}"
									data-zoom-image="${base }/upload/${product.avatar}" alt="" />
							</div>
						</div>
						<div id="gallery" class="product-dec-slider-2">
							<c:forEach items="${product.productImages }" var="pi">
								<a data-zoom-image="${base }/upload/${pi.path}"
									data-image="${base }/upload/${pi.path}"> <img
									src="${base }/upload/${pi.path}" alt="">
								</a>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-lg-5 col-md-12">
					<div class="product-details-content">
						<h2>${product.title }</h2>
						<div class="product-details-price">
							<span><fmt:setLocale value="vi_VN" scope="session" /> <fmt:formatNumber
									value="${product.price_sale }" type="currency" /></span> <span
								class="old"><fmt:setLocale value="vi_VN" scope="session" />
								<fmt:formatNumber value="${product.price }" type="currency" />
							</span>
						</div>
						<div class="pro-details-rating-wrap">
							<div class="pro-details-rating">
								<i class="fa fa-star-o yellow"></i> <i
									class="fa fa-star-o yellow"></i> <i class="fa fa-star-o yellow"></i>
								<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
							</div>
							<span><a href="#">3 Reviews</a></span>
						</div>
						<p>${product.short_description }</p>
						<div class="pro-details-list">
							<ul>
								<li>- Chất liệu mới</li>
								<li>- Biểu tượng mang cảm hứng</li>
								<li>- Phong cách rất hiện đại</li>
							</ul>
						</div>
						<div class="pro-details-size-color">
							<div class="pro-details-color-wrap">
								<span>Màu Sắc</span>
								<div class="pro-details-color-content">
									<ul>
										<li class="blue"></li>
										<li class="maroon active"></li>
										<li class="gray"></li>
										<li class="green"></li>
										<li class="yellow"></li>
									</ul>
								</div>
							</div>
							<div class="pro-details-size">
								<span>Kích Cỡ</span>
								<div class="pro-details-size-content">
									<ul>
										<li><a href="#">s</a></li>
										<li><a href="#">m</a></li>
										<li><a href="#">l</a></li>
										<li><a href="#">xl</a></li>
										<li><a href="#">xxl</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="pro-details-quality">
							<div class="cart-plus-minus">
								<input class="cart-plus-minus-box" type="text" name="qtybutton"
									id="sl_${product.id }" value="1">
							</div>
							<div class="pro-details-cart btn-hover">
								<button
									style="outline: white !important; background: transparent !important; color: white !important; border: 0px !important;">
									<a
										onclick="Cart.addItemToCart(${product.id }, 'sl_${product.id }')">Thêm
										Vào Giỏ</a>
								</button>
							</div>
							<div class="pro-details-wishlist">
								<a href="#"><i class="fa fa-heart-o"></i></a>
							</div>
							<div class="pro-details-compare">
								<a href="#"><i class="pe-7s-shuffle"></i></a>
							</div>
						</div>
						<div class="pro-details-meta">
							<span>Danh Mục :</span>
							<ul>
								<li><a href="">${product.categories1.nameCategory }</a></li>
							</ul>
						</div>
						<div class="pro-details-social">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="description-review-area pb-90">
		<div class="container">
			<div class="description-review-wrapper">
				<div class="description-review-topbar nav">
					<a data-toggle="tab" href="#des-details1">Bổ sung thông tin</a> <a
						class="active" data-toggle="tab" href="#des-details2"> Miêu tả</a>
					<a data-toggle="tab" href="#des-details3">Nhận xét (2)</a>
				</div>
				<div class="tab-content description-review-bottom">
					<div id="des-details2" class="tab-pane active">
						<div class="product-description-wrapper">
							
							<p>${product.detail_description }</p>
						</div>
					</div>
					<div id="des-details1" class="tab-pane ">
						<div class="product-anotherinfo-wrapper">
							<ul>
								<li><span>Tên : </span> ${product.title }</li>
								<li><span>Giá :</span><fmt:setLocale value="vi_VN" scope="session" /> <fmt:formatNumber
									value="${product.price_sale }" type="currency" /></li>
								<li><span>Miêu tả ngắn :</span> ${product.short_description }</li>
							</ul>
						</div>
					</div>
					<div id="des-details3" class="tab-pane">
						<div class="row">
							<div class="col-lg-7">
								<div class="review-wrapper">
									<div class="single-review">
										<div class="review-img">
											<img src="assets/img/testimonial/1.jpg" alt="">
										</div>
										<div class="review-content">
											<div class="review-top-wrap">
												<div class="review-left">
													<div class="review-name">
														<h4>Hảo</h4>
													</div>
													<div class="review-rating">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i>
													</div>
												</div>
												<div class="review-left">
													<a href="#">Reply</a>
												</div>
											</div>
											<div class="review-bottom">
												<p>Sản phẩm có chất lượng chưa tốt lắm, đường chỉ không thẳng, chất liệu vải nóng.</p>
											</div>
										</div>
									</div>
									<div class="single-review child-review">
										<div class="review-img">
											<img src="assets/img/testimonial/2.jpg" alt="">
										</div>
										<div class="review-content">
											<div class="review-top-wrap">
												<div class="review-left">
													<div class="review-name">
														<h4>Hảo </h4>
													</div>
													<div class="review-rating">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i>
													</div>
												</div>
												<div class="review-left">
													<a href="#">Trả Lời</a>
												</div>
											</div>
											<div class="review-bottom">
												<p>Sản phẩm có chất lượng chưa tốt lắm, đường chỉ không thẳng, chất liệu vải nóng.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-5">
								<div class="ratting-form-wrapper pl-50">
									<h3>Thêm Đánh Giá</h3>
									<div class="ratting-form">
										<form action="#">
											<div class="star-box">
												<span>Đánh giá của bạn :</span>
												<div class="ratting-star">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<div class="rating-form-style mb-10">
														<input placeholder="Tên" type="text">
													</div>
												</div>
												<div class="col-md-6">
													<div class="rating-form-style mb-10">
														<input placeholder="Email" type="email">
													</div>
												</div>
												<div class="col-md-12">
													<div class="rating-form-style form-submit">
														<textarea name="Your Review" placeholder="Nội Dung"></textarea>
														<input type="submit" value="Gửi">
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="related-product-area pb-95">
		<div class="container">
			<div class="section-title text-center mb-50">
				<h2>Những sản phẩm tương tự</h2>
			</div>
			<div class="related-product-active owl-carousel">
				<div class="product-wrap">
					<div class="product-img">
						<a href="#"> <img class="default-img"
							src="user/img/product/pro-1.jpg" alt=""> <img
							class="hover-img" src="assets/img/product/pro-1-1.jpg" alt="">
						</a> <span class="pink">-10%</span>
						<div class="product-action">
							<div class="pro-same-action pro-wishlist">
								<a title="Wishlist" href="#"><i class="pe-7s-like"></i></a>
							</div>
							<div class="pro-same-action pro-cart">
								<a title="Add To Cart" href="#"><i class="pe-7s-cart"></i>
									Thêm Vào Giỏ Hàng</a>
							</div>
							<div class="pro-same-action pro-quickview">
								<a title="Quick View" href="#" data-toggle="modal"
									data-target="#exampleModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
					</div>
					<div class="product-content text-center">
						<h3>
							<a href="product-details.html">Áo Nỉ</a>
						</h3>
						<div class="product-rating">
							<i class="fa fa-star-o yellow"></i> <i
								class="fa fa-star-o yellow"></i> <i class="fa fa-star-o yellow"></i>
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
						</div>
						<div class="product-price">
							<span>100.000đ</span> <span class="old">150.000đ</span>
						</div>
					</div>
				</div>
				<div class="product-wrap">
					<div class="product-img">
						<a href="single-product.html"> <img class="default-img"
							src="user/img/product/pro-2.jpg" alt=""> <img
							class="hover-img" src="assets/img/product/pro-2-1.jpg" alt="">
						</a> <span class="purple">New</span>
						<div class="product-action">
							<div class="pro-same-action pro-wishlist">
								<a title="Wishlist" href="#"><i class="pe-7s-like"></i></a>
							</div>
							<div class="pro-same-action pro-cart">
								<a title="Add To Cart" href="#"><i class="pe-7s-cart"></i>
									Thêm Vào Giỏ Hàng</a>
							</div>
							<div class="pro-same-action pro-quickview">
								<a title="Quick View" href="#" data-toggle="modal"
									data-target="#exampleModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
					</div>
					<div class="product-content text-center">
						<h3>
							<a href="product-details.html">Áo Nỉ</a>
						</h3>
						<div class="product-rating">
							<i class="fa fa-star-o yellow"></i> <i
								class="fa fa-star-o yellow"></i> <i class="fa fa-star-o yellow"></i>
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
						</div>
						<div class="product-price">
							<span>100.000đ</span> <span class="old">150.000đ</span>
						</div>
					</div>
				</div>
				<div class="product-wrap">
					<div class="product-img">
						<a href="#"> <img class="default-img"
							src="user/img/product/pro-3.jpg" alt=""> <img
							class="hover-img" src="assets/img/product/pro-3-1.jpg" alt="">
						</a> <span class="pink">-10%</span>
						<div class="product-action">
							<div class="pro-same-action pro-wishlist">
								<a title="Wishlist" href="#"><i class="pe-7s-like"></i></a>
							</div>
							<div class="pro-same-action pro-cart">
								<a title="Add To Cart" href="#"><i class="pe-7s-cart"></i>
									Thêm Vào Giỏ Hàng</a>
							</div>
							<div class="pro-same-action pro-quickview">
								<a title="Quick View" href="#" data-toggle="modal"
									data-target="#exampleModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
					</div>
					<div class="product-content text-center">
						<h3>
							<a href="product-details.html">Áo Nỉ</a>
						</h3>
						<div class="product-rating">
							<i class="fa fa-star-o yellow"></i> <i
								class="fa fa-star-o yellow"></i> <i class="fa fa-star-o yellow"></i>
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
						</div>
						<div class="product-price">
							<span>100.000đ</span> <span class="old">150.000đ</span>
						</div>
					</div>
				</div>
				<div class="product-wrap">
					<div class="product-img">
						<a href="#"> <img class="default-img"
							src="user/img/product/pro-4.jpg" alt=""> <img
							class="hover-img" src="assets/img/product/pro-4-1.jpg" alt="">
						</a> <span class="purple">New</span>
						<div class="product-action">
							<div class="pro-same-action pro-wishlist">
								<a title="Wishlist" href="#"><i class="pe-7s-like"></i></a>
							</div>
							<div class="pro-same-action pro-cart">
								<a title="Add To Cart" href="#"><i class="pe-7s-cart"></i>
									Thêm Vào Giỏ Hàng</a>
							</div>
							<div class="pro-same-action pro-quickview">
								<a title="Quick View" href="#" data-toggle="modal"
									data-target="#exampleModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
					</div>
					<div class="product-content text-center">
						<h3>
							<a href="product-details.html">Áo Nỉ</a>
						</h3>
						<div class="product-rating">
							<i class="fa fa-star-o yellow"></i> <i
								class="fa fa-star-o yellow"></i> <i class="fa fa-star-o yellow"></i>
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
						</div>
						<div class="product-price">
							<span>100.000đ</span> <span class="old">150.000đ</span>
						</div>
					</div>
				</div>
				<div class="product-wrap">
					<div class="product-img">
						<a href="#"> <img class="default-img"
							src="user/img/product/pro-5.jpg" alt=""> <img
							class="hover-img" src="assets/img/product/pro-5-1.jpg" alt="">
						</a> <span class="pink">-10%</span>
						<div class="product-action">
							<div class="pro-same-action pro-wishlist">
								<a title="Wishlist" href="#"><i class="pe-7s-like"></i></a>
							</div>
							<div class="pro-same-action pro-cart">
								<a title="Add To Cart" href="#"><i class="pe-7s-cart"></i>
									Thêm Vào Giỏ Hàng</a>
							</div>
							<div class="pro-same-action pro-quickview">
								<a title="Quick View" href="#" data-toggle="modal"
									data-target="#exampleModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
					</div>
					<div class="product-content text-center">
						<h3>
							<a href="product-details.html">Áo Nỉ</a>
						</h3>
						<div class="product-rating">
							<i class="fa fa-star-o yellow"></i> <i
								class="fa fa-star-o yellow"></i> <i class="fa fa-star-o yellow"></i>
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
						</div>
						<div class="product-price">
							<span>100.000đ</span> <span class="old">150.000đ</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">x</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-5 col-sm-12 col-xs-12">
							<div class="tab-content quickview-big-img">
								<div id="pro-1" class="tab-pane fade show active">
									<img src="assets/img/product/quickview-l1.jpg" alt="">
								</div>
								<div id="pro-2" class="tab-pane fade">
									<img src="assets/img/product/quickview-l2.jpg" alt="">
								</div>
								<div id="pro-3" class="tab-pane fade">
									<img src="assets/img/product/quickview-l3.jpg" alt="">
								</div>
								<div id="pro-4" class="tab-pane fade">
									<img src="assets/img/product/quickview-l2.jpg" alt="">
								</div>
							</div>
							<!-- Thumbnail Large Image End -->
							<!-- Thumbnail Image End -->
							<div class="quickview-wrap mt-15">
								<div class="quickview-slide-active owl-carousel nav nav-style-1"
									role="tablist">
									<a class="active" data-toggle="tab" href="#pro-1"><img
										src="assets/img/product/quickview-s1.jpg" alt=""></a> <a
										data-toggle="tab" href="#pro-2"><img
										src="assets/img/product/quickview-s2.jpg" alt=""></a> <a
										data-toggle="tab" href="#pro-3"><img
										src="assets/img/product/quickview-s3.jpg" alt=""></a> <a
										data-toggle="tab" href="#pro-4"><img
										src="assets/img/product/quickview-s2.jpg" alt=""></a>
								</div>
							</div>
						</div>
						<div class="col-md-7 col-sm-12 col-xs-12">
							<div class="product-details-content quickview-content">
								<h2>Products Name Here</h2>
								<div class="product-details-price">
									<span>$18.00 </span> <span class="old">$20.00 </span>
								</div>
								<div class="pro-details-rating-wrap">
									<div class="pro-details-rating">
										<i class="fa fa-star-o yellow"></i> <i
											class="fa fa-star-o yellow"></i> <i
											class="fa fa-star-o yellow"></i> <i class="fa fa-star-o"></i>
										<i class="fa fa-star-o"></i>
									</div>
									<span>3 Reviews</span>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisic elit
									eiusm tempor incidid ut labore et dolore magna aliqua. Ut enim
									ad minim venialo quis nostrud exercitation ullamco</p>
								<div class="pro-details-list">
									<ul>
										<li>- 0.5 mm Dail</li>
										<li>- Inspired vector icons</li>
										<li>- Very modern style</li>
									</ul>
								</div>
								<div class="pro-details-size-color">
									<div class="pro-details-color-wrap">
										<span>Color</span>
										<div class="pro-details-color-content">
											<ul>
												<li class="blue"></li>
												<li class="maroon active"></li>
												<li class="gray"></li>
												<li class="green"></li>
												<li class="yellow"></li>
											</ul>
										</div>
									</div>
									<div class="pro-details-size">
										<span>Size</span>
										<div class="pro-details-size-content">
											<ul>
												<li><a href="#">s</a></li>
												<li><a href="#">m</a></li>
												<li><a href="#">l</a></li>
												<li><a href="#">xl</a></li>
												<li><a href="#">xxl</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="pro-details-quality">
									<div class="cart-plus-minus">
										<input class="cart-plus-minus-box" type="text"
											name="qtybutton" value="2">
									</div>
									<div class="pro-details-cart btn-hover">
										<a href="#">Add To Cart</a>
									</div>
									<div class="pro-details-wishlist">
										<a href="#"><i class="fa fa-heart-o"></i></a>
									</div>
									<div class="pro-details-compare">
										<a href="#"><i class="pe-7s-shuffle"></i></a>
									</div>
								</div>
								<div class="pro-details-meta">
									<span>Categories :</span>
									<ul>
										<li><a href="#">Minimal,</a></li>
										<li><a href="#">Furniture,</a></li>
										<li><a href="#">Electronic</a></li>
									</ul>
								</div>
								<div class="pro-details-meta">
									<span>Tag :</span>
									<ul>
										<li><a href="#">Fashion, </a></li>
										<li><a href="#">Furniture,</a></li>
										<li><a href="#">Electronic</a></li>
									</ul>
								</div>
								<div class="pro-details-social">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
										<li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal end -->
	<!-- JS
============================================ -->
	<!-- FOOTER -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>

	<!-- JS -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

</body>

</html>