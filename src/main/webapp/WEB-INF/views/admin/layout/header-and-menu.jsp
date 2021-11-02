<!-- sử dụng tiếng việt, tàu,... -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- HEADER MOBILE-->
<header class="header-mobile d-block d-lg-none">
	<div class="header-mobile__bar">
		<div class="container-fluid">
			<div class="header-mobile-inner">
				<a class="logo" href="${base }/admin"> <img
					src="/user/img/logo/logo.png" alt="CoolAdmin" />
				</a>
				<button class="hamburger hamburger--slider" type="button">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</button>
			</div>
		</div>
	</div>
	<nav class="navbar-mobile">
		<div class="container-fluid">
			<ul class="navbar-mobile__list list-unstyled">
				<li><a href="/admin/manage_category"> <i
						class="far fa-check-square"></i>Quản Lý Danh Mục
				</a></li>

				<li><a href="/admin/manage_product"> <i
						class="far fa-check-square"></i>Quản Lý Sản Phẩm
				</a></li>
				<li><a href="/admin/manage_user"> <i
						class="far fa-check-square"></i>Quản Lý Người Dùng
				</a></li>
				<li><a href="/admin/manage_cart"> <i
						class="far fa-check-square"></i>Quản Lý Đơn Hàng
				</a></li>
				<li><a href="/admin/manage_contac"> <i
						class="far fa-check-square"></i>Quản Lý Thông Tin
				</a></li>
				<li><a href="${base }/index"> <i
						class="far fa-check-square"></i>Quản Lý Trang Người Dùng
				</a></li>
			</ul>
		</div>
	</nav>
</header>
<!-- END HEADER MOBILE-->

<!-- MENU SIDEBAR-->
<aside class="menu-sidebar d-none d-lg-block">
	<div class="logo">
		<a href="/admin/index"> <img
			src="/user/img/logo/logo.png" alt="Cool Admin" />
		</a>
	</div>
	<div class="menu-sidebar__content js-scrollbar1">
		<nav class="navbar-sidebar">
			<ul class="list-unstyled navbar__list">

				<li><a href="/admin/manage_category"> <i
						class="far fa-check-square"></i>Quản Lý Danh Mục
				</a></li>

				<li><a href="/admin/manage_product"> <i
						class="far fa-check-square"></i>Quản Lý Sản Phẩm
				</a></li>
				<li><a href="/admin/manage_user"> <i
						class="far fa-check-square"></i>Quản Lý Người Dùng
				</a></li>
				<li><a href="/admin/manage_cart"> <i
						class="far fa-check-square"></i>Quản Lý Đơn Hàng
				</a></li>
				<li><a href="/admin/manage_contact"> <i
						class="far fa-check-square"></i>Quản Lý Thông Tin
				</a></li>
				<li><a href="${base }/index"> <i
						class="far fa-check-square"></i>Quản Lý Trang Người Dùng
				</a></li>
			</ul>
		</nav>
	</div>
</aside>
<!-- END MENU SIDEBAR-->