<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<link href="/css/main.css" rel="stylesheet">
<meta charset="EUC-KR">
<title>POSCO |더불어 함께 발전하는 기업시민</title>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!--header 삽입  -->

	<!-- script -->
	<script type="text/javascript">
		/*  scroll event */
		window.onload = function() {
			var elm = ".posco_section";
			$(elm).each(function(index) {
				// 개별적으로 Wheel 이벤트 적용
				$(this).on("mousewheel DOMMouseScroll", function(e) {
					e.preventDefault();
					var delta = 0;
					if (!event)
						event = window.event;
					if (event.wheelDelta) {
						delta = event.wheelDelta / 120;
						if (window.opera)
							delta = -delta;
					} else if (event.detail)
						delta = -event.detail / 3;
					var moveTop = $(window).scrollTop();
					var elmSelecter = $(elm).eq(index);

					// 마우스휠을 위에서 아래로
					if (delta < 0) {
						if ($(elmSelecter).next() != undefined) {
							try {
								moveTop = $(elmSelecter).next().offset().top;
							} catch (e) {
							}
						}
						// 마우스휠을 아래에서 위로
					} else {
						if ($(elmSelecter).prev() != undefined) {
							try {
								moveTop = $(elmSelecter).prev().offset().top;
							} catch (e) {
							}
						}
					}

					// 화면 이동 0.8초(800)
					$("html,body").stop().animate({
						scrollTop : moveTop + 'px'
					}, {
						duration : 800,
						complete : function() {
						}
					});
				});
			});
		}

		/* dot_menu li on */
		$(window).on("scroll", function() {
			//변수 ht에 현재 브라우저의 넓이값 저장
			var ht = $(window).height();
			//변수 scroll에 현재 문서가 스크롤된 거리 저장
			var scroll = $(window).scrollTop();
			for (var i = 0; i < 7; i++) {
				if (scroll >= ht * i && scroll < ht * (i + 1)) {
					$(".dot_menu li").removeClass();
					$(".dot_menu li").eq(i).addClass("on");
				}
				;
			}
		});
	</script>
	<!-- script -->
	<!-- content 시작 -->
	<div id="contents">
		<!-- section visual -->
		<section class="posco_section" id="visual">
			<video src="/movie/posco.mp4" muted="muted" autoplay="autoplay"
				loop="loop"></video>
			<div class="video_txt">
				<p>
					<img src="/img/slogan.png"
						alt="Challenge Together, Change Tomorrow 기업, 시민이 되다.함께, 미래가 되다">
				</p>
			</div>
		</section>
		<!-- section products -->
		<section class="posco_section" id="products"></section>
		<!-- section media -->
		<section class="posco_section" id="media"></section>
		<!-- section culture -->
		<section class="posco_section" id="culture"></section>
		<!-- section about -->
		<section class="posco_section" id="about"></section>
	</div>
	<!-- content 끝 -->
	<!-- scroll 이미지 -->
	<div class="down">
		<img src="/img/drag-down.png" />
	</div>
	<div class="dot_menu">
		<ul>
			<li><a href="#visual" title="메인 비주얼 바로가기"></a></li>
			<li><a href="#products" title="포스코 제품 바로가기"></a></li>
			<li><a href="#media" title="포스코 미디어 바로가기"></a></li>
			<li><a href="#culture" title="포스코 문화행사 바로가기"></a></li>
			<li><a href="#about" title="About POSCO 바로가기"></a></li>

		</ul>
	</div>
	<!-- footer -->
</body>
</html>