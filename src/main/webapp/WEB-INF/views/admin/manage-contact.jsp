<!-- sử dụng tiếng việt, tàu,... -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- TagLibs -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">
<jsp:include page="/WEB-INF/views/admin/layout/variables.jsp"></jsp:include>

<!-- Title Page-->
<title>Bảng Điều Khiển</title>

<!-- Fontfaces CSS-->
<jsp:include page="/WEB-INF/views/admin/layout/css.jsp"></jsp:include>
</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<!-- MENU SIDEBAR-->
		<jsp:include page="/WEB-INF/views/admin/layout/header-and-menu.jsp"></jsp:include>

		<!-- MAIN CONTENT -->

		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<jsp:include page="/WEB-INF/views/admin/layout/page-content.jsp"></jsp:include>
			<!-- END HEADER DESKTOP-->

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">

						<div class="row">
							<div class="col-md-12">
								<!-- DATA TABLE -->
								<h3 class="title-5 m-b-35">Quản Lý Thông Tin</h3>
								<div class="table-data__tool">
									<div class="table-data__tool-right"></div>
								</div>
								<div class="table-responsive table-responsive-data2">
									<table class="table table-data2">
										<thead>
											<tr>
												<th>id</th>
												<th>Họ</th>
												<th>Tên</th>
												<th>email</th>
												<th>nội dung</th>
												<th>trạng thái</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${contact }" var="c">
												<tr class="tr-shadow">
													<td>${c.id }</td>
													<td>${c.firstName }</td>
													<td>${c.lastName }</td>
													<td><span class="block-email">${c.email }</span></td>
													<td>${c.message }</td>
													<td><span id="_product_status_${c.id} }"> <c:choose>
																<c:when test="${c.status }">
																	<span class="badge badge-primary">Active</span>
																</c:when>
																<c:otherwise>
																	<span class="badge badge-warning">InActive</span>
																</c:otherwise>
															</c:choose>
													</span></td>
													<td>
														<div class="table-data-feature">

															<button class="item" data-toggle="tooltip"
																data-placement="top" title="Edit">
																<a href=""> <i class="zmdi zmdi-edit"></i>
																</a>
															</button>
															<button class="item" data-toggle="tooltip"
																data-placement="top" title="Delete"
																onclick="DeleteProduct(${p.id})">
																<i class="zmdi zmdi-delete"></i>
															</button>
															<button class="item" data-toggle="tooltip"
																data-placement="top" title="More">
																<i class="zmdi zmdi-more"></i>
															</button>
														</div>
													</td>
												</tr>
												<tr class="spacer"></tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- END DATA TABLE -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END MAIN CONTENT-->
		<!-- END PAGE CONTAINER-->
	</div>
	<!-- Jquery JS-->
	<jsp:include page="/WEB-INF/views/admin/layout/js.jsp"></jsp:include>


	<script type="text/javascript">
		function DeleteProduct(productId) {
			// javascript object.
			var data = {};

			// $ === jQuery
			$.ajax({
						url : "/admin/delete-product?productId=" + productId,
						type : "post",
						contentType : "application/json",
						data : JSON.stringify(data),

						dataType : "json",
						success : function(jsonResult) {
							if (jsonResult.code == 200) {

								$("#_product_status_" + productId)
										.html("<span class=\"badge badge-warning\">InActive</span>");
								alert("successful delele");

							} else {
								
								alert(jsonResult.message);
							}
						},
						error : function(jqXhr, textStatus, errorMessage) { // error callback 

						}
					});
		}
	</script>

</body>
</html>
<!-- end document-->
