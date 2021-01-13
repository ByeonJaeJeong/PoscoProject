<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<link href="/css/main.css" rel="stylesheet">
<meta charset="EUC-KR">
<title>POSCO | 더불어 함께 발전하는 기업시민</title>

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
		/* 스크롤 높이에 따른 top 버튼 사라짐 */
		$(window).on("scroll",function(){
			var ht= $(window).height();
			//현재 브라우저의 넓이값 저장
			//변수 scroll에 현재 문서가 스크롤된 거리 저장
			var scroll = $(window).scrollTop();
			//현재브라우저 넓이값 이 스크롤된 거리보다 길때)
			if(scroll<1){
				$(".top-btn").fadeOut();
			}else{
				$(".top-btn").fadeIn();
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
					<img src="/img/main/section1/slogan.png"
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
								<img src="/img/main/section2/learnmore.png" />
							</a> <a href="#" class="learnmore_wrap mobile-hide innovilt_gobtn">
								<img src="/img/main/section2/learnmore_e.png" />
							</a>
						</div>
						<div class="products_list">
							<ul>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/main/section2/products1.jpg" alt="산업별" class="pc" target="_blank">
										<img src="/img/main/section2/products1_m.jpg" alt="산업별" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">산업별</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/main/section2/products2.jpg" alt="제품별" class="pc" target="_blank">
										<img src="/img/main/section2/products2_m.jpg" alt="제품별" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">제품별</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/main/section2/products3.jpg" alt="메가트렌드" class="pc"
										target="_blank"> <img src="/img/main/section2/products3_m.jpg"
										alt="메가트렌드" class="mobile" target="_blank">
										<div class="cap">
											<p class="products_gnb">메가트렌드</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/main/section2/products4.jpg" alt="이용기술" class="pc" target="_blank">
										<img src="/img/main/section2/products4_m.jpg" alt="이용기술" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">이용기술</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/main/section2/products5.jpg" alt="제품 뉴스&스토리" class="pc"
										target="_blank"> <img src="/img/main/section2/products5_m.jpg"
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
									src="/img/main/section3/newsroom.png" alt="newsroom" />
								</a>
							</div>
							<ul>
								<li><a href="http://www.youtube.com/helloposco"
									target="_blank" class="youtube_gobtn"> <img
										src="/img/main/section3/youtube.png">
								</a></li>
								<li><a href="http://www.linkedin.com/company/posco"
									target="_blank" class="linkedin_gobtn"> <img
										src="/img/main/section3/linkedin.png">
								</a></li>
								<li><a href="https://www.facebook.com/HELLOPOSCO"
									target="_blank" class="facebook_gobtn"> <img
										src="/img/main/section3/facebook.png">
								</a></li>
								<li><a href="https://www.instagram.com/hello_posco/"
									target="_blank" class="insta_gobtn"> <img
										src="/img/main/section3/insta.png">
								</a></li>
							</ul>
						</div>
						<div class="media_list">
							<ul>
								<li><a href="#" target="_blank" class="newsroom_gobtn">
										<img src="/img/main/section3/media1.jpg" class="pc"> <img
										src="/img/main/section3/media1_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/main/section3/cap_news.jpg" alt="newsroom" class="caption">
											<img src="/img/main/section3/ico_eye.png" class="ico_media mobile-hide">
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
										<img src="/img/main/section3/media2.jpg" class="pc"> <img
										src="/img/main/section3/media2_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/main/section3/cap_news.jpg" alt="newsroom" class="caption">
											<img src="/img/main/section3/ico_eye.png" class="ico_media mobile-hide">
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
										<img src="/img/main/section3/media3.jpg" class="pc"> <img
										src="/img/main/section3/media3_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/main/section3/cap_ytb.jpg" alt="youtube" class="caption">
											<img src="/img/main/section3/ico_movie.png" class="ico_media mobile-hide">
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
										<img src="/img/main/section3/media4.jpg" class="pc"> <img
										src="/img/main/section3/media4_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/main/section3/cap_ytb.jpg" alt="youtube" class="caption">
											<img src="/img/main/section3/ico_movie.png" class="ico_media mobile-hide">
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
			<div class="culture_wrap">
				<div class="container">
					<div class="subject">
						<h1 class="title">
							포스코 문화행사
						</h1>
						<p class="orangebar"><span></span></p>
					</div>
					<div class="culture_cont">
						<div class="culture_exp">
							<div class="explanation">
								<h2>Explanation</h2>
								<p>지역주민의 화합과 풍요로운 문화생활을 위해 문화시설을 지원하고 수준 높은 공연을 개최하는 등 기업 메세나 활동에 적극 앞장서고 있습니다.
								</p>
							</div>
							<div class="schedule">
                                <img src="/img/main/section4/schedule.jpg" alt="">
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
													<img src="/img/main/section4/slide_img_10.jpg">
												</a>
											</li>
											<li>
												<a href="#" title="신종코로나 바이러스 확산으로 문화행사 공연 취소 안내 바로가기" tabindex="0">
													<p class="culture_genre">Notice</p>
													<p class="culture_title"><span>[공지] 문화행사 취소 안내</span></p>
													<img src="/img/main/section4/slide_img_10.jpg">
												</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="culture_controls">
                                    <p class="prev_btn"><a href="#none"><img src="/img/main/section4/ic_prev.png" alt="prev"></a></p>
                                    <p class="next_btn"><a href="#none"><img src="/img/main/section4/ic_next.png" alt="next"></a></p>
                                </div>
							</div>
						</div>
						<div class="culture_info">
							<div class="culture_news">
								<h2 class="newsimg_pc">Culture News</h2>
								<a href="https://newsroom.posco.com/kr/2020%eb%85%84%ec%97%90%eb%8f%84-%ea%b8%b0%ec%97%85%ec%8b%9c%eb%af%bc-%ed%8f%ac%ec%8a%a4%ec%bd%94-%eb%ac%b8%ed%99%94%ed%96%89%ec%82%ac%ea%b0%80-%ec%97%ac%eb%9f%ac%eb%b6%84%ea%b3%bc-%ed%95%a8%ea%bb%98/" target="_blank">
                                    <img src="/img/main/section4/culture_news_m.jpg" alt="" class="newsimg_m">
                                    <h2 class="newsimg_m">Culture News</h2>
                                    <p class="news_title">2020년에도 기업시민 포스코 문화행사가 여러분과 함께 합니다!</p>
                                    <img src="/img/main/section4/culture_news.jpg" alt="" class="newsimg_pc">
                                </a>
							</div>
							<div class="culture_detail">
								<h2>Detail Page</h2>
                                <a href="/homepage/docs/kor6/jsp/prcenter/culture/s91c2000010m.jsp" title="문화행사 메인페이지 바로가기"><p>상세페이지 보러가기</p></a>
							</div>
						</div>
						<div class="culture_back"></div>
					</div>
				</div>
			</div>
		</section>
		<!-- section about -->
		<section class="posco_section" id="about">
			<div class="about_wrap">
				<div class="container">
					<div class="subject">
						<h1 class="title">About POSCO</h1>
						<p class="orangebar"><span></span></p>
						<p class="text">포스코는 '더불어 함께 발전하는 기업시민' 이라는 경영이념을 바탕으로 신뢰와 존경 받는 영속기업으로 발전해 나갈 것입니다.</p>
					</div>
					<div class="about_list">
						<ul>
							<li class="cont_ethics">
								<img src="/img/main/section5/about1.png" alt="" class="pc">
								<img src="/img/main/section5/about1_m.png" alt="" class="mobile">
								<div class="cap">
									<p class="title mobile-hide">회사소개</p>
									<p class="text only-mobile-hide">세계에서 가장 <br>경쟁력있는 철강회사로서 <br>인류발전에 기여합니다.</p>
									<a href="#"><img src="/img/main/section5/viewmore.png" alt="View more" class="link"></a>
								</div>
							</li>
							<li class="cont_sustain">
								<img src="/img/main/section5/about2.png" alt="" class="pc">
								<img src="/img/main/section5/about2_m.png" alt="" class="mobile">
								<div class="cap">
									<p class="title mobile-hide">윤리경영</p>
									<p class="text only-mobile-hide">올바른 일을 <br>올바르게 하는 것, <br>바로 포스코가 하는 것입니다.</p>
									<a href="#"><img src="/img/main/section5/viewmore.png" alt="View more" class="link"></a>
								</div>
							</li>
							<li class="cont_safety">
								<img src="/img/main/section5/about4.png" alt="" class="pc">
								<img src="/img/main/section5/about4_m.png" alt="" class="mobile">
								<div class="cap">
									<p class="title mobile-hide">안전환경 경영</p>
									<p class="text only-mobile-hide">자율적 안전문화와 <br>산업보건 업무를<br>중점 추진하고 있습니다.</p>
									<a href="#"><img src="/img/main/section5/viewmore.png" alt="View more" class="link"></a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- content 끝 -->
	<!-- scroll 이미지 -->
	<div class="down">
		<img src="/img/main/section1/drag-down.png" />
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
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>