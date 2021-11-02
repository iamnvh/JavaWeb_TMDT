<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Footer -->
<footer class="footer-area bg-gray pt-100 pb-70">
	<div class="container">
		<div class="row">
			<div class="col-lg-2 col-md-4 col-sm-4">
				<div class="copyright mb-30">
					<div class="footer-logo">
						<a href="index.html"> <img alt=""
							src="assets/img/logo/logo.png">
						</a>
					</div>
					<p>
						Copy© 2020 <a href="#">Flone</a>.<br> Đã đăng ký Bản quyền
					</p>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4">
				<div class="footer-widget mb-30 ml-30">
					<div class="footer-title">
						<h3>Thông Tin</h3>
					</div>
					<div class="footer-list">
						<ul>
							<li><a href="">Về chúng tôi</a></li>
							<li><a href="#">Vị trí cửa hàng</a></li>
							<li><a href="">Thông Tin</a></li>
							<li><a href="#"> Theo dõi đơn hàng</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4">
				<div class="footer-widget mb-30 ml-50">
					<div class="footer-title">
						<h3>LIÊN KẾT</h3>
					</div>
					<div class="footer-list">
						<ul>
							<li><a href="#">Lợi nhuận</a></li>
							<li><a href="#">Chính sách</a></li>
							<li><a href="#"> Hướng dẫn</a></li>
							<li><a href="#">Câu hỏi</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-2 col-md-6 col-sm-6">
				<div class="footer-widget mb-30 ml-75">
					<div class="footer-title">
						<h3>Xã Hội</h3>
					</div>
					<div class="footer-list">
						<ul>
							<li><a href="#">Facebook</a></li>
							<li><a href="#">Twitter</a></li>
							<li><a href="#">Instagram</a></li>
							<li><a href="#">Youtube</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="footer-widget mb-30 ml-70">
					<div class="footer-title">
						<h3>ĐĂNG KÝ</h3>
					</div>
					<div class="subscribe-style">
						<p>Nhận cập nhật qua email về cửa hàng mới nhất của chúng tôi
							và đặc biệt đề nghị.</p>
						<div id="mc_embed_signup" class="subscribe-form">
							<div id="mc_embed_signup_scroll" class="mc-form">
								<input type="email" placeholder="Nhập Email vào đây ..."
									id="email" class="form-control">
								<button class="btn btn-light" type="button" name="subscribe"
									onclick="saveSubscribe();">Đăng Ký</button>
								<script type="text/javascript">
									function saveSubscribe() {
										var data = {};
										data["email"] = $("#email").val();

										$.ajax({
											url : "/subscribe",
											type : "post",
											contentType : "application/json",
											data : JSON.stringify(data),

											datatype : "json",
											success : function(jsonResult) {
												if (jsonResult.code == 200) {
													alert(jsonResult.status)
												} else {
													alert(jsonResult.data)
												}
											},
											error : function(jqXhr, textStatus,
													errorMessage) { // error callback 
											}
										});
									}
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>