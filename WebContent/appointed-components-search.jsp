<%@page import="xiuxiuxiu.dao.*"%>
<%@page import="xiuxiuxiu.pojo.*"%>
<%@page import="java.util.*"%>
<%@page import="xiuxiuxiu.dao.ViewComponentDAOImpl.ViewComponent"%>;
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<title>预约零件</title>

<script type="application/x-javascript">
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/slicebox.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet" />
<!-- //font-awesome-icons -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css' />
<link
	href="http://fonts.googleapis.com/css?family=Raleway:100i,200,200i,300,400,500,500i,600,700,700i,800,800i"
	rel="stylesheet" />
</head>
<body>
	<div class="agileits_w3layouts_banner_nav">
		<nav class="navbar navbar-default">
			<div class="navbar-header navbar-left">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h1>
					<a class="navbar-brand" href="index.html"><i class="fa fa-crosshairs" aria-hidden="true"></i> 修！咻咻！</a>
				</h1>

			</div>
			<ul class="agile_forms">
				<li><a class="active" href="#" data-toggle="modal"
					data-target="#myModal2"> Sign In</a></li>
				<li><a href="#" data-toggle="modal" data-target="#myModal3">
						Sign Up</a></li>
			</ul>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right"
				id="bs-example-navbar-collapse-1">
				<nav>
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.html"
							class="hvr-underline-from-center">主页</a></li>
						<li><a href="#" class="hvr-underline-from-center">预约</a></li>
						<li><a href="#" class="hvr-underline-from-center">文章
								&amp; 通知</a></li>
						<li><a href="#" class="hvr-underline-from-center">我的</a></li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle hvr-underline-from-center"
							data-toggle="dropdown">Short Codes <b
								class="fa fa-caret-down"></b></a>
							<ul class="dropdown-menu agile_short_dropdown">
								<li><a href="icons.html">Web Icons</a></li>
								<li><a href="typography.html">Typography</a></li>
							</ul></li>
						<li><a href="contact.html" class="hvr-underline-from-center">Contact</a></li>
					</ul>
				</nav>

			</div>
		</nav>

		<div class="clearfix"></div>
	</div>
	<p></p>
	<!-- 主体内容：开始 -->
	<div class="services">
		<div class="container">
			<ul id="formTab" class="nav nav-tabs" role="tablist">
				<li class="nav-item"><a class="hvr-underline-from-center"
					data-toggle="tab" href="#field-service">检索预约零件名单</a></li>
				<li><a class="hvr-underline-from-center" data-toggle="tab"
					href="#door-to-door-service">导入预约零件名单</a></li>
			</ul>

			<div class="tab-content">

				<div class="table-responsive">
					<table class="table">
						<p style="">总数：${totalNum} </p>
						<a href="ViewComponentServlet?method=list" class="view resw3">刷新</a>
						<thead>
							<tr>
								<th>姓名</th>
								<th>学号</th>
								<th>联系电话</th>
								<th>个数</th>
								<th>预约类型</th>
								<th>场次</th>
								<th>零件类型</th>
								<th>是否完成</th>
								<th>详情</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${viewComponents}" var="viewComponents">
								<tr>
									<td>${viewComponents.userName}</td>
									<td>${viewComponents.studentID}</td>
									<td>${viewComponents.phoneNumber}</td>
									<td>1</td>
									<td>${viewComponents.applicationType}</td>
									<td>${viewComponents.activeTime}</td>
									<td>${viewComponents.reservationState}</td>
									<td>${viewComponents.reservationID}</td>
									<td><a
										href="ViewComponentServlet?method=list&id=${ViewComponents.id}"
										class="view resw3">详情</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 按钮 -->
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-9">
						<input type="submit" class="btn btn-primary" value="导出" /> <input
							type="submit" class="btn btn-primary" value="返回" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 预约零件搜索的表单：结束 -->

	<!-- 主体内容：结束 -->

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
	<!-- password-script -->
	<script type="text/javascript">
    window.onload = function () {
        document.getElementById("password1").onchange = validatePassword;
        document.getElementById("password2").onchange = validatePassword;
    }

    function validatePassword() {
        var pass2 = document.getElementById("password2").value;
        var pass1 = document.getElementById("password1").value;
        if (pass1 != pass2)
            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
        else
            document.getElementById("password2").setCustomValidity('');
        //empty string means no validation error
    }
</script>
	<!-- //password-script -->

	<!-- //js -->
	<script src="js/bars.js"></script>

	<script type="text/javascript" src="js/jquery.slicebox.js"></script>
	<script type="text/javascript">
    $(function () {
        var Page = (function () {
            var $navArrows = $('#nav-arrows').hide(),
                $navDots = $('#nav-dots').hide(),
                $nav = $navDots.children('span'),
                $shadow = $('#shadow').hide(),
                slicebox = $('#sb-slider').slicebox({
                    onReady: function () {
                        $navArrows.show();
                        $navDots.show();
                        $shadow.show();
                    },
                    onBeforeChange: function (pos) {
                        $nav.removeClass('nav-dot-current');
                        $nav.eq(pos).addClass('nav-dot-current');
                    }
                }),
                init = function () {
                    initEvents();
                },
                initEvents = function () {
                    // add navigation events
                    $navArrows.children(':first').on('click', function () {
                        slicebox.next();
                        return false;
                    });

                    $navArrows.children(':last').on('click', function () {
                        slicebox.previous();
                        return false;
                    });

                    $nav.each(function (i) {
                        $(this).on('click', function (event) {
                            var $dot = $(this);
                            if (!slicebox.isActive()) {
                                $nav.removeClass('nav-dot-current');
                                $dot.addClass('nav-dot-current');
                            }
                            slicebox.jump(i + 1);
                            return false;
                        });
                    });
                };
            return {
                init: init
            };
        })();
        Page.init();
    });
</script>
	<!-- Stats -->
	<script src="js/waypoints.min.js"></script>
	<script src="js/counterup.min.js"></script>
	<script>
    jQuery(document).ready(function ($) {
        $('.counter').counterUp({
            delay: 10,
            time: 2000
        });
    });
</script>
	<!-- //Stats -->

	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	<!-- flexisel -->
	<script type="text/javascript">
    $(window).load(function () {
        $("#flexiselDemo1").flexisel({
            visibleItems: 4,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 2
                }
            }
        });

    });
</script>
	<!-- //flexisel -->
	<!-- //flexisel -->
	<!-- js for portfolio lightbox -->
	<script src="js/jquery.chocolat.js "></script>
	<!-- //menu -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
    $(document).ready(function () {
        /*
          var defaults = {
          containerID: 'toTop', // fading element id
          containerHoverID: 'toTopHover', // fading element hover id
          scrollSpeed: 1200,
          easingType: 'linear'
          };
        */

        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
	<!-- //here ends scrolling icon -->

</body>

</html>