<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
					<li><a href="${base }/index">Trang Chủ</a></li>
					<li class="active">Liên Hệ Với Chúng Tôi</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="contact-area pt-100 pb-100">
		<div class="container">
			<div class="contact-map mb-10">
				<div id="map"></div>
			</div>
			<div class="custom-row-2">
				<div class="col-lg-4 col-md-5">
					<div class="contact-info-wrap">
						<div class="single-contact-info">
							<div class="contact-icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="contact-info-dec">
								<p>+012 345 678 102</p>
								<p>+012 345 678 102</p>
							</div>
						</div>
						<div class="single-contact-info">
							<div class="contact-icon">
								<i class="fa fa-globe"></i>
							</div>
							<div class="contact-info-dec">
								<p>
									<a href="#">nobitacrush@gmail.com</a>
								</p>
								<p>
									<a href="#">Flone-Fashion.com</a>
								</p>
							</div>
						</div>
						<div class="single-contact-info">
							<div class="contact-icon">
								<i class="fa fa-map-marker"></i>
							</div>
							<div class="contact-info-dec">
								<p>Địa chỉ 137 phố Mai Dịch, trung tâm DevPro.</p>
							</div>
						</div>
						<div class="contact-social text-center">
							<h3>Đăng Ký</h3>
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
								<li><a href="#"><i class="fa fa-tumblr"></i></a></li>
								<li><a href="#"><i class="fa fa-vimeo"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-7">
					<div class="contact-form">
						<div class="contact-title mb-30">
							<h2>Liên Lạc</h2>
						</div>
						<form class="contact-form-style" action="${base }/contact" method="post">
							<div class="row">
								<div class="col-lg-6">
									<input name="firstName" placeholder="Tên*" type="text" id="firstName">
								</div>
								<div class="col-lg-6">
									<input name="lastName" placeholder="Tên*" type="text" id="lastName">
								</div>
								<div class="col-lg-6">
									<input name="email" placeholder="Email*" type="email" id="email" >
								</div>
								<div class="col-lg-12">
									<textarea name="message" placeholder="Nội Dung Bạn Muốn Nói ...*" id="content"></textarea>
									<button class="submit" type="submit" onclick="SaveContact();">GỬI</button>
								</div>
							</div>
						</form>
						<!-- <script type="text/javascript">
							function SaveContact() {
								var data = {};
								data["firstName"] = $("#firstName").val();
								data["lastName"] = $("#lastName").val();
								data["email"] = $("#email").val();
								data["content"] = $("#content").val();

								//Jquery
								$.ajax({
									url : "/contact-ajax",
									type : "post",
									contentType : "application/json",
									data : JSON.stringify(data),

									dataType : "json",
									success : function(jsonResult) {
										if (jsonResult.code == 200) {
											alert(jsonResult.status)
										} else {
											alert(jsonResult.data);
										}
									},
									error : function(jqXhr, textStatus,
											errorMessage) { // error callback 
									}
								});
							}
						</script> -->
						<p class="form-messege"></p>
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