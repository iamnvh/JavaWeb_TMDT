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
	<c:forEach items="${product }" var="p">
		<!-- Modal -->
		<div class="modal fade" id="exampleModal${p.id }" role="dialog">
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
										<img src="${base }/upload/${p.avatar}" alt="">
									</div>
								</div>
								<!-- Thumbnail Large Image End -->
								<!-- Thumbnail Image End -->
								<div class="quickview-wrap mt-15">
									<div
										class="quickview-slide-active owl-carousel nav nav-style-1"
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
									<h2>${p.title}</h2>
									<div class="product-details-price">
										<span><fmt:setLocale value="vi_VN" scope="session" />
											<fmt:formatNumber value="${p.price_sale }" type="currency" /></span>
										<span class="old"><fmt:setLocale value="vi_VN"
												scope="session" /> <fmt:formatNumber value="${p.price }"
												type="currency" /></span>
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
									<p>${p.short_description }</p>
									<div class="pro-details-meta">
										<span>Danh Mục :</span>
										<ul>
											<li><a href="">${p.categories1.nameCategory }</a></li>
										</ul>
									</div>
									<div class="pro-details-list">
										<ul>
											<li>- Chất liệu mới</li>
											<li>- Biểu tượng mang cảm hứng</li>
											<li>- Phong cách rất hiện đại</li>
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
													<li class="white"></li>
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
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>