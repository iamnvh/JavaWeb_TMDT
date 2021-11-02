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
					<li class="active">Về chúng tôi</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="welcome-area pt-100 pb-95">
		<div class="container">
			<div class="welcome-content text-center">
				<h5>Chúng ta là ai</h5>
				<h1>Chào mừng đến với Flone</h1>
				<p>Trang web của chúng tôi mang đến sự hài hòa về phong cách và
					màu sắc giúp chúng ta có cái nhìn toàn cảnh về sản phẩm cũng như
					chất lượng được đảm bảo và cam kết hoàn tiền nếu khách hàng không
					hài lòng về sản phẩm</p>
			</div>
		</div>
	</div>
	<div class="about-mission-area pb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4">
					<div class="single-mission mb-30">
						<h3>Tầm nhìn của chúng tôi</h3>
						<p>Flone cung cấp cách tất cả những ý tưởng sai lầm này về hàm
							niềm vui và nỗi đau được sinh ra sẽ cho bạn một tài khoản riêng
							về hệ thống, và giải thích những gì thực tế kéo nhà thám hiểm ăn
							của sự thật.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="single-mission mb-30">
						<h3>Nhiệm vụ của chúng ta</h3>
						<p>Flone cung cấp cách tất cả những ý tưởng sai lầm này về hàm
							niềm vui và nỗi đau được sinh ra sẽ cho bạn một tài khoản riêng
							về hệ thống, và giải thích những gì thực tế kéo nhà thám hiểm ăn
							của sự thật.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4">
					<div class="single-mission mb-30">
						<h3>Mục tiêu của chúng tôi</h3>
						<p>Flone cung cấp cách tất cả những ý tưởng sai lầm này về hàm
							niềm vui và nỗi đau được sinh ra sẽ cho bạn một tài khoản riêng
							về hệ thống, và giải thích những gì thực tế kéo nhà thám hiểm ăn
							của sự thật.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="funfact-area bg-gray-3 pt-100 pb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-count text-center mb-30">
						<div class="count-icon">
							<i class="pe-7s-portfolio"></i>
						</div>
						<h2 class="count">360</h2>
						<span>Dự án hoàn thành</span>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-count text-center mb-30">
						<div class="count-icon">
							<i class="pe-7s-cup"></i>
						</div>
						<h2 class="count">690</h2>
						<span> Cúp Thưởng</span>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-count text-center mb-30">
						<div class="count-icon">
							<i class="pe-7s-light"></i>
						</div>
						<h2 class="count">420</h2>
						<span>Thương hiệu </span>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-count text-center mb-30 mrgn-none">
						<div class="count-icon">
							<i class="pe-7s-smile"></i>
						</div>
						<h2 class="count">100</h2>
						<span> Khách hàng hạnh phúc</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="team-area pt-95 pb-70">
		<div class="container">
			<div class="section-title-2 text-center mb-60">
				<h2>Thành viên của nhóm</h2>
				<p>Thành viên tham gia vào quản lý website</p>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<a href="#"> <img src="user/img/team/team-1.jpg" alt="">
							</a>
							<div class="team-action">
								<a class="facebook" href="#"> <i class="fa fa-facebook"></i>
								</a> <a class="twitter" title="Wishlist" href="#"> <i
									class="fa fa-twitter"></i>
								</a> <a class="instagram" href="#"> <i class="fa fa-instagram"></i>
								</a>
							</div>
						</div>
						<div class="team-content text-center">
							<h4>Mr.Mike Banding</h4>
							<span>Người Quản Lý </span>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<a href="#"> <img src="user/img/team/team-3.jpg" alt="">
							</a>
							<div class="team-action">
								<a class="facebook" href="#"> <i class="fa fa-facebook"></i>
								</a> <a class="twitter" title="Wishlist" href="#"> <i
									class="fa fa-twitter"></i>
								</a> <a class="instagram" href="#"> <i class="fa fa-instagram"></i>
								</a>
							</div>
						</div>
						<div class="team-content text-center">
							<h4>Mr.Peter Pan</h4>
							<span>Người Phát Triển </span>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<a href="#"> <img src="user/img/team/team-2.jpg" alt="">
							</a>
							<div class="team-action">
								<a class="facebook" href="#"> <i class="fa fa-facebook"></i>
								</a> <a class="twitter" title="Wishlist" href="#"> <i
									class="fa fa-twitter"></i>
								</a> <a class="instagram" href="#"> <i class="fa fa-instagram"></i>
								</a>
							</div>
						</div>
						<div class="team-content text-center">
							<h4>Ms.Sophia</h4>
							<span>Người Thiết Kế </span>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="team-wrapper mb-30">
						<div class="team-img">
							<a href="#"> <img src="user/img/team/team-4.jpg" alt="">
							</a>
							<div class="team-action">
								<a class="facebook" href="#"> <i class="fa fa-facebook"></i>
								</a> <a class="twitter" title="Wishlist" href="#"> <i
									class="fa fa-twitter"></i>
								</a> <a class="instagram" href="#"> <i class="fa fa-instagram"></i>
								</a>
							</div>
						</div>
						<div class="team-content text-center">
							<h4>Mr.John Lee</h4>
							<span>Chủ tịch </span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="brand-logo-area pb-100 about-brand-logo">
		<div class="container">
			<div class="brand-logo-active owl-carousel">
				<div class="single-brand-logo">
					<img src="user/img/brand-logo/barnd-logo-1.png" alt="">
				</div>
				<div class="single-brand-logo">
					<img src="user/img/brand-logo/barnd-logo-2.png" alt="">
				</div>
				<div class="single-brand-logo">
					<img src="user/img/brand-logo/barnd-logo-3.png" alt="">
				</div>
				<div class="single-brand-logo">
					<img src="user/img/brand-logo/barnd-logo-4.png" alt="">
				</div>
				<div class="single-brand-logo">
					<img src="user/img/brand-logo/barnd-logo-5.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
</body>
</html>