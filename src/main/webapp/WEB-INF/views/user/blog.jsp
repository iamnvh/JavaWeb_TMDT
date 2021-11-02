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
                <li>
                    <a href="${base }/index">Trang Chủ</a>
                </li>
                <li class="active">Blog</li>
            </ul>
        </div>
    </div>
</div>
<div class="Blog-area pt-100 pb-100 blog-no-sidebar">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="blog-wrap-2 mb-30">
                            <div class="blog-img-2">
                                <a href="single-product.html"><img src="user/img/blog/blog-9.jpg" alt=""></a>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-2">
                                    <ul>
                                        <li>
22 tháng 4, 2018</li>
                                        <li><a href="#">4 <i class="fa fa-comments-o"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Bộ sưu tập cửa hàng mới cửa hàng của chúng tôi</a></h4>
                                <p>Bộ sưu tập cửa hàng mới về mang lại sự mới lạ trong thiết kế cũng như phong cách để mang lại một mùa hè mới lạ và độc đáo</p>
                                <div class="blog-share-comment">
                                    <div class="blog-btn-2">
                                        <a href="blog-details.html">
Đọc thêm</a>
                                    </div>
                                    <div class="blog-share">
                                        <span>share :</span>
                                        <div class="share-social">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="blog-wrap-2 mb-30">
                            <div class="blog-img-2">
                                <a href="single-product.html"><img src="user/img/blog/blog-4.jpg" alt=""></a>
                                <div class="video-icon">
                                    <a class="video-popup" href="https://www.youtube.com/watch?v=6Tc7LBx7XzE"><i class="fa fa-play"></i></a>
                                </div>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-2">
                                    <ul>
                                        <li>
22 tháng 4, 2018</li>
                                        <li><a href="#">4 <i class="fa fa-comments-o"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Bộ sưu tập cửa hàng mới cửa hàng của chúng tôi</a></h4>
                                <p>Bộ sưu tập cửa hàng mới về mang lại sự mới lạ trong thiết kế cũng như phong cách để mang lại một mùa hè mới lạ và độc đáo</p>
                                <div class="blog-share-comment">
                                    <div class="blog-btn-2">
                                        <a href="blog-details.html">Đọc thêm</a>
                                    </div>
                                    <div class="blog-share">
                                        <span>share :</span>
                                        <div class="share-social">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="blog-wrap-2 mb-30">
                            <div class="blog-img-slide owl-carousel nav-style-4">
                                <a href="single-product.html"><img src="user/img/blog/blog-5.jpg" alt=""></a>
                                <a href="single-product.html"><img src="user/img/blog/blog-9.jpg" alt=""></a>
                                <a href="single-product.html"><img src="user/img/blog/blog-6.jpg" alt=""></a>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-2">
                                    <ul>
                                        <li>22 tháng 4, 2018</li>
                                        <li><a href="#">4 <i class="fa fa-comments-o"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Bộ sưu tập cửa hàng mới cửa hàng của chúng tôi</a></h4>
                                <p>Bộ sưu tập cửa hàng mới về mang lại sự mới lạ trong thiết kế cũng như phong cách để mang lại một mùa hè mới lạ và độc đáo</p>
                                <div class="blog-share-comment">
                                    <div class="blog-btn-2">
                                        <a href="blog-details.html">read more</a>
                                    </div>
                                    <div class="blog-share">
                                        <span>share :</span>
                                        <div class="share-social">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="blog-wrap-2 mb-30">
                            <div class="blog-img-2">
                                <a href="single-product.html"><img src="user/img/blog/blog-6.jpg" alt=""></a>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-2">
                                    <ul>
                                         <li>22 tháng 4, 2018</li>
                                        <li><a href="#">4 <i class="fa fa-comments-o"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Bộ sưu tập cửa hàng mới cửa hàng của chúng tôi</a></h4>
                                <p>Bộ sưu tập cửa hàng mới về mang lại sự mới lạ trong thiết kế cũng như phong cách để mang lại một mùa hè mới lạ và độc đáo</p>
                                <div class="blog-share-comment">
                                    <div class="blog-btn-2">
                                        <a href="blog-details.html">read more</a>
                                    </div>
                                    <div class="blog-share">
                                        <span>share :</span>
                                        <div class="share-social">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="blog-wrap-2 mb-30">
                            <div class="blog-img-2">
                                <a href="single-product.html"><img src="user/img/blog/blog-7.jpg" alt=""></a>
                            </div>
                            <div class="blog-content-2">
                               <div class="blog-meta-2">
                                    <ul>
                                         <li>22 tháng 4, 2018</li>
                                        <li><a href="#">4 <i class="fa fa-comments-o"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Bộ sưu tập cửa hàng mới cửa hàng của chúng tôi</a></h4>
                                <p>Bộ sưu tập cửa hàng mới về mang lại sự mới lạ trong thiết kế cũng như phong cách để mang lại một mùa hè mới lạ và độc đáo</p>
                                <div class="blog-share-comment">
                                    <div class="blog-btn-2">
                                        <a href="blog-details.html">read more</a>
                                    </div>
                                    <div class="blog-share">
                                        <span>share :</span>
                                        <div class="share-social">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="blog-wrap-2 mb-30">
                            <div class="blog-img-2">
                                <a href="single-product.html"><img src="user/img/blog/blog-8.jpg" alt=""></a>
                                <div class="video-icon">
                                    <a class="video-popup" href="https://www.youtube.com/watch?v=6Tc7LBx7XzE"><i class="fa fa-play"></i></a>
                                </div>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-2">
                                    <ul>
                                         <li>22 tháng 4, 2018</li>
                                        <li><a href="#">4 <i class="fa fa-comments-o"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Bộ sưu tập cửa hàng mới cửa hàng của chúng tôi</a></h4>
                                <p>Bộ sưu tập cửa hàng mới về mang lại sự mới lạ trong thiết kế cũng như phong cách để mang lại một mùa hè mới lạ và độc đáo</p>
                                <div class="blog-share-comment">
                                    <div class="blog-btn-2">
                                        <a href="blog-details.html">read more</a>
                                    </div>
                                    <div class="blog-share">
                                        <span>share :</span>
                                        <div class="share-social">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="blog-wrap-2 mb-30">
                            <div class="blog-img-slide owl-carousel nav-style-4">
                                <a href="single-product.html"><img src="user/img/blog/blog-9.jpg" alt=""></a>
                                <a href="single-product.html"><img src="user/img/blog/blog-4.jpg" alt=""></a>
                                <a href="single-product.html"><img src="user/img/blog/blog-5.jpg" alt=""></a>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-2">
                                    <ul>
                                         <li>22 tháng 4, 2018</li>
                                        <li><a href="#">4 <i class="fa fa-comments-o"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Bộ sưu tập cửa hàng mới cửa hàng của chúng tôi</a></h4>
                                <p>Bộ sưu tập cửa hàng mới về mang lại sự mới lạ trong thiết kế cũng như phong cách để mang lại một mùa hè mới lạ và độc đáo</p>
                                <div class="blog-share-comment">
                                    <div class="blog-btn-2">
                                        <a href="blog-details.html">read more</a>
                                    </div>
                                    <div class="blog-share">
                                        <span>share :</span>
                                        <div class="share-social">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="blog-wrap-2 mb-30">
                            <div class="blog-img-2">
                                <a href="single-product.html"><img src="user/img/blog/blog-4.jpg" alt=""></a>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-2">
                                    <ul>
                                         <li>22 tháng 4, 2018</li>
                                        <li><a href="#">4 <i class="fa fa-comments-o"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Bộ sưu tập cửa hàng mới cửa hàng của chúng tôi</a></h4>
                                <p>Bộ sưu tập cửa hàng mới về mang lại sự mới lạ trong thiết kế cũng như phong cách để mang lại một mùa hè mới lạ và độc đáo</p>
                                <div class="blog-share-comment">
                                    <div class="blog-btn-2">
                                        <a href="blog-details.html">read more</a>
                                    </div>
                                    <div class="blog-share">
                                        <span>share :</span>
                                        <div class="share-social">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="blog-wrap-2 mb-30">
                            <div class="blog-img-2">
                                <a href="single-product.html"><img src="user/img/blog/blog-5.jpg" alt=""></a>
                            </div>
                            <div class="blog-content-2">
                                <div class="blog-meta-2">
                                    <ul>
                                         <li>22 tháng 4, 2018</li>
                                        <li><a href="#">4 <i class="fa fa-comments-o"></i></a></li>
                                    </ul>
                                </div>
                                <h4><a href="blog-details.html">Bộ sưu tập cửa hàng mới cửa hàng của chúng tôi</a></h4>
                                <p>Bộ sưu tập cửa hàng mới về mang lại sự mới lạ trong thiết kế cũng như phong cách để mang lại một mùa hè mới lạ và độc đáo</p>
                                <div class="blog-share-comment">
                                    <div class="blog-btn-2">
                                        <a href="blog-details.html">read more</a>
                                    </div>
                                    <div class="blog-share">
                                        <span>share :</span>
                                        <div class="share-social">
                                            <ul>
                                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pro-pagination-style text-center mt-20">
                    <ul>
                        <li><a class="prev" href="#"><i class="fa fa-angle-double-left"></i></a></li>
                        <li><a class="active" href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a class="next" href="#"><i class="fa fa-angle-double-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- FOOTER -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<!-- JS -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

</body>

</html>