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
		<section class="posco_section" id="products">
			<div class="products_wrap">
				<div class="container">
					<div class="subject">
						<h1 class="title">포스코 제품</h1>
						<p class="orangebar">
							<span></span>
						</p>
						<p class="text">
							혁신적인 제품개발과 이용기술을 통한 고객가치 향상을 실현합니다.<br> 세계 최고의 프리미엄 제품과 서비스
							제공을 위해 R&amp;D를 혁신하고 차별화된 솔루션 개발에 앞장서겠습니다.
						</p>
						<div class="learnmore_wrap">
							<a href="#" class="learnmore_wrap mobile-hide product_gobtn">
								<img src="/img/learnmore.png" />
							</a> <a href="#" class="learnmore_wrap mobile-hide innovilt_gobtn">
								<img src="/img/learnmore_e.png" />
							</a>
						</div>
						<div class="products_list">
							<ul>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products1.jpg" alt="산업별" class="pc" target="_blank">
										<img src="/img/products1_m.jpg" alt="산업별" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">산업별</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products2.jpg" alt="제품별" class="pc" target="_blank">
										<img src="/img/products2_m.jpg" alt="제품별" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">제품별</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products3.jpg" alt="메가트렌드" class="pc"
										target="_blank"> <img src="/img/products3_m.jpg"
										alt="메가트렌드" class="mobile" target="_blank">
										<div class="cap">
											<p class="products_gnb">메가트렌드</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products4.jpg" alt="이용기술" class="pc" target="_blank">
										<img src="/img/products4_m.jpg" alt="이용기술" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">이용기술</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products5.jpg" alt="제품 뉴스&스토리" class="pc"
										target="_blank"> <img src="/img/products5_m.jpg"
										alt="제품 뉴스&스토리" class="mobile" target="_blank">
										<div class="cap">
											<p class="products_gnb">산업별</p>
										</div>
								</a></li>
							</ul>
						</div>
						<div class="learnmore_wrap"></div>
					</div>
				</div>
			</div>
		</section>
		<!-- section media -->
		<section class="posco_section" id="media">
			<div class="media_wrap">
				<div class="container">
					<div class="container_wrap">
						<div class="subject">
							<h1 class="title">포스코미디어</h1>
							<p class="orangebar">
								<span></span>
							</p>
						</div>
						<div class="media_sns">
							<div>
								<a href="#" target="_blank" class="newsroom_gobtn"> <img
									src="/img/newsroom.png" alt="newsroom" />
								</a>
							</div>
							<ul>
								<li><a href="http://www.youtube.com/helloposco"
									target="_blank" class="youtube_gobtn"> <img
										src="/img/youtube.png">
								</a></li>
								<li><a href="http://www.linkedin.com/company/posco"
									target="_blank" class="linkedin_gobtn"> <img
										src="/img/linkedin.png">
								</a></li>
								<li><a href="https://www.facebook.com/HELLOPOSCO"
									target="_blank" class="facebook_gobtn"> <img
										src="/img/facebook.png">
								</a></li>
								<li><a href="https://www.instagram.com/hello_posco/"
									target="_blank" class="insta_gobtn"> <img
										src="/img/insta.png">
								</a></li>
							</ul>
						</div>
						<div class="media_list">
							<ul>
								<li><a href="#" target="_blank" class="newsroom_gobtn">
										<img src="/img/media1.jpg" class="pc"> <img
										src="/img/media1_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/cap_news.jpg" alt="newsroom" class="caption">
											<img src="/img/ico_eye.png" class="ico_media mobile-hide">
											<div>
												<p class="date">Dec 29, 2020</p>
												<p class="title">
													2020년 포스코의 <br class="only-pc">한해 돌아보기 <br
														class="only-pc"> <span class="mobile-hide"></span>
												</p>
											</div>
										</div>
								</a></li>
								<li><a href="#" target="_blank" class="newsroom_gobtn">
										<img src="/img/media2.jpg" class="pc"> <img
										src="/img/media2_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/cap_news.jpg" alt="newsroom" class="caption">
											<img src="/img/ico_eye.png" class="ico_media mobile-hide">
											<div>
												<p class="date">Dec 23, 2020</p>
												<p class="title">
													뜨겁고, 무겁고, <br class="only-pc">시끄러운 작업… <br
														class="only-pc">이제 로봇에게 맡겨요! <br class="only-pc">
													<span class="mobile-hide"></span>
												</p>
											</div>
										</div>
								</a></li>
								<li><a href="#" target="_blank" class="youtube_gobtn">
										<img src="/img/media3.jpg" class="pc"> <img
										src="/img/media3_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/cap_ytb.jpg" alt="youtube" class="caption">
											<img src="/img/ico_movie.png" class="ico_media mobile-hide">
											<div>
												<p class="date">Dec 23, 2020</p>
												<p class="title">
													일하며 배우며 나누며, <br class="only-pc">재능봉사단의 일상 속으로 <br
														class="only-pc">
													<span class="mobile-hide"></span>
												</p>
											</div>
										</div>
								</a></li>
								<li><a href="#" target="_blank" class="youtube_gobtn">
										<img src="/img/media4.jpg" class="pc"> <img
										src="/img/media4_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/cap_ytb.jpg" alt="youtube" class="caption">
											<img src="/img/ico_movie.png" class="ico_media mobile-hide">
											<div>
												<p class="date">Dec 29, 2020</p>
												<p class="title">
													우리 아이가 자라는 <br class="only-pc">포스코 마을 <br
														class="only-pc">
													<span class="mobile-hide"></span>
												</p>
											</div>
										</div>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- section culture -->
		<section class="posco_section" id="culture">
			<div class="cultrue_wrap">
				<div class="container">
					<div class="subject">
						<h1 class="title">
							포스코 문화행사
						</h1>
						<p class="orangebar"><span></span></p>
					</div>
					<div class="culture_cont">
						<div class="culture_exp">
							<div class="explantion">
								<h2>explantion</h2>
								<p>지역주민의 화합과 풍요로운 문화생활을 위해 문화시설을 지원하고 수준 높은 공연을 개최하는 등 기업 메세나 활동에 적극 앞장서고 있습니다.
								</p>
							</div>
							<div class="schedule">
                                <img src="/docs/kor6/jsp/_images/main/schedule.jpg" alt="">
                            </div>
						</div>
						<div class="culture_event">
							<h2>Culture Event</h2>
							<div class="culture_slide">
								<div class="bx_wrapper">
									<div class="bx-viewport">
										<ul class="mySlider">
											<li>
												<a href="#" title="신종코로나 바이러스 확산으로 문화행사 공연 취소 안내 바로가기" tabindex="0">
													<p class="culture_genre">Notice</p>
													<p class="culture_title"><span>[공지] 문화행사 취소 안내</span></p>
													<img src="/img/">
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="culture_info"></div>
						<div class="culture_back"></div>
					</div>
				</div>
			</div>
		</section>
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