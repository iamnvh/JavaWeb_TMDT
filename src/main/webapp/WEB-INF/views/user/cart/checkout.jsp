<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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

	<div class="breadcrumb-area pt-35 pb-35 bg-gray-3">
		<div class="container">
			<div class="breadcrumb-content text-center">
				<ul>
					<li><a href="index.html">Trang Chủ</a></li>
					<li class="active">Thủ tục thanh toán</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="checkout-area pt-95 pb-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<div class="billing-info-wrap">
						<h3>Chi tiết thanh toán</h3>
						<c:choose>
							<c:when test="${isLogined }">
								<div class="row">
									<form action="${base }/checkout" method="post">
										<div class="col-lg-6 col-md-6">
											<div class="billing-info mb-20">
												<label>Họ Và Tên</label> <input type="text" name="fullName">
											</div>
										</div>
										<div class="col-lg-12">
											<div class="billing-info mb-20">
												<label>Địa Chỉ Nhà (Nơi Nhận Hàng)</label> <input
													class="billing-address"
													placeholder="Số nhà và tên đường ..." type="text"
													name="address">
											</div>
										</div>
										<div class="col-lg-6 col-md-6">
											<div class="billing-info mb-20">
												<label>Điện Thoại Liên Hệ</label> <input type="tel"
													name="tel">
											</div>
										</div>
										<div class="additional-info-wrap">
											<h4>Thông Tin Thêm</h4>
											<div class="additional-info">
												<label> Ghi chú đơn hàng</label>
												<textarea
													placeholder="Ghi chú về đơn đặt hàng của bạn, ví dụ: lưu ý đặc biệt để giao hàng. "
													name="message"></textarea>
											</div>
										</div>
										<div class="your-order-area">
											<div class="Place-order mt-25">
												<button type="submit" class="btn btn-dark"
													style="width: 300px; height: 50px; border-radius: 25px; background: #a749ff; border: 0px;">
													Đặt Hàng</button>
											</div>
										</div>
									</form>
								</div>
							</c:when>
							<c:otherwise>
								<form action="${base }/checkout" method="post">
									<div class="row">
										<div class="col-lg-6 col-md-6">
											<div class="billing-info mb-20">
												<label>Họ Và Tên</label> <input type="text" name="fullName">
											</div>
										</div>
										<div class="col-lg-12">
											<div class="billing-info mb-20">
												<label>Địa Chỉ Nhà (Nơi Nhận Hàng)</label> <input
													class="billing-address"
													placeholder="Số nhà và tên đường ..." type="text"
													name="address">
											</div>
										</div>
										<div class="col-lg-6 col-md-6">
											<div class="billing-info mb-20">
												<label>Điện Thoại Liên Hệ</label> <input type="tel"
													name="tel">
											</div>
										</div>
										<div class="col-lg-6 col-md-6">
											<div class="billing-info mb-20">
												<label>Email Liên Hệ</label> <input type="email"
													name="email">
											</div>
										</div>
									</div>
									<div class="additional-info-wrap">
										<h4>Thông Tin Thêm</h4>
										<div class="additional-info">
											<label> Ghi chú đơn hàng</label>
											<textarea
												placeholder="Ghi chú về đơn đặt hàng của bạn, ví dụ: lưu ý đặc biệt để giao hàng. "
												name="message"></textarea>
										</div>
									</div>
									<div class="your-order-area">
										<div class="Place-order mt-25">
											<button type="submit" class="btn btn-dark"
												style="width: 300px; height: 50px; border-radius: 25px; background: #a749ff; border: 0px;">
												Đặt Hàng</button>
										</div>
									</div>
								</form>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="your-order-area">
						<h3>Đơn Đặt Hàng Của Bạn</h3>
						<div class="your-order-wrap gray-bg-4">
							<div class="your-order-product-info">
								<div class="your-order-top">
									<ul>
										<li>Sản Phẩm</li>
										<li>Số Lượng</li>
									</ul>
								</div>
								<div class="your-order-middle">
									<c:forEach items="${cart.cartItems}" var="item">
										<ul>
											<li><span class="order-middle-left">${item.productName }
											</span> <span class="order-price">${item.quanlity }</span></li>
										</ul>
									</c:forEach>
								</div>
								<div class="your-order-bottom">
									<ul>
										<li class="your-order-shipping">Vận Chuyển</li>
										<li>Miễn Phí</li>
									</ul>
								</div>
								<div class="your-order-total">
									<ul>
										<li class="order-total"></li>
										<li><fmt:setLocale value="vi_VN" scope="session" /> <fmt:formatNumber
												value="${totalPrice }" type="currency" /></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- JS============================================ -->
	<!-- FOOTER -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>

	<!-- JS -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
</body>

</html>