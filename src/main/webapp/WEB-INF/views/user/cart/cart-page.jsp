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
					<li class="active">Giỏ Hàng</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="cart-main-area pt-90 pb-100">
		<div class="container">
			<h3 class="cart-page-title">Giỏ Hàng Của Bạn</h3>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-12">
					<form action="${base }/checkout" method="post">
						<div class="table-content table-responsive cart-table-content">
							<table>
								<thead>
									<tr>
										<th>Ảnh</th>
										<th>Tên Sản Phẩm</th>
										<th>Giá Tiền</th>
										<th>Số Lượng</th>
										<th>Hoạt Động</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${cart.cartItems}" var="item">
										<tr>
											<td class="product-thumbnail"><a href="#"><img
													src="${base }/upload/${item.avatarProduct}" alt=""
													style="width: 80px; height: 100px;"></a></td>
											<td class="product-name"><a href="#">${item.productName }</a></td>
											<td class="product-price-cart"><span class="amount"><fmt:setLocale
														value="vi_VN" scope="session" /> <fmt:formatNumber
														value="${item.priceUnit }" type="currency" /></span></td>
											<td class="product-quantity">
												<div class="">
													<input
														style="width: 50px; background: transparent; border: 0px; font-weight: 500; font-size: 16px;"
														type="text" name="qtybutton" value="${item.quanlity }">
												</div>
											</td>
											<td class="product-remove"><button
													style="border: 0px !important; background: transparent;">
													Edit
												</button>
												<button type="button" style="border: 0px; background: transparent;"
													onclick="DeleteItemInCart(${item.getProductId()});">Xóa</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="cart-shiping-update-wrapper">
									<div class="cart-shiping-update">
										<a href="${base }/list-product">Tiếp Tục Mua Sắm</a>
									</div>
									<div class="cart-clear">
										<button>Cập Nhật Giỏ Hàng</button>
									</div>
								</div>
							</div>
						</div>
					</form>
					<div class="row">
						<div class="col-lg-4 col-md-12">
							<div class="grand-totall">
								<div class="title-wrap">
									<h4 class="cart-bottom-title section-bg-gary-cart">Tổng
										Tiền Giỏ Hàng</h4>
								</div>
								<h5></h5>
								<h5>
									Tổng Tiền Sản Phẩm <span><fmt:setLocale value="vi_VN"
											scope="session" /> <fmt:formatNumber value="${totalPrice }"
											type="currency" /></span>
								</h5>
								<a href="${base }/checkout">Tiến hành Đặt Hàng</a>
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
	<script type="text/javascript">
    function DeleteItemInCart(productId){
        // javascript object.
        var data = {};
        data["productId"] = productId;
        $.ajax({
            url : "/cart_delete",
            type : "post",
            contentType : "application/json",
            data : JSON.stringify(data),

            dataType : "json",
            success : function(jsonResult) {
                $("#totalItemsInCart").html(jsonResult.totalItems);
                alert('Xóa Thành Công !');
                location.reload();
            },
            error : function(jqXhr, textStatus, errorMessage) { // error callback 

            }
        });
    }
    </script>

</body>

</html>