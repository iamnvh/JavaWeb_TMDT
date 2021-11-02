<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<li class="active">Đăng Nhập</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="login-register-area pt-100 pb-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-md-12 ml-auto mr-auto">
					<div class="login-register-wrapper">
						<div class="login-register-tab-list nav">
							<a class="active" data-toggle="tab" href="#lg1">
								<h4>Đăng Nhập</h4>
							</a>
						</div>
						<div class="tab-content">
							<div id="lg1" class="tab-pane active">
								<div class="login-form-container">
									<div class="login-register-form">
										<form action="${base }/perform_login" method="post">
												<input type="hidden" name="${_csrf.parameterName}"
													value="${_csrf.token}" />

												<c:if test="${not empty param.login_error}">
													<div class="alert alert-danger" role="alert">Nỗ lực đăng nhập không thành công, hãy thử lại !!!</div>
												</c:if>
												<input type="text" name="username" placeholder="Tên đăng nhập*">
												<input type="password" name="password"
													placeholder="Mật Khẩu*">
												<div class="button-box">
													<div class="login-toggle-btn">
														<input type="checkbox"> <label>Nhớ mật khẩu</label>
														<a href="#">Quên mật khẩu?</a>
													</div>
													<button type="submit">
														<span>Đăng Nhập</span>
													</button>
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
	<!-- JS============================================ -->
	<!-- FOOTER -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<!-- JS -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

</body>

</html>