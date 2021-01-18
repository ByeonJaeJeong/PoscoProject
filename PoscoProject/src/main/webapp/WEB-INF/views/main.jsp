<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script> --><link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-scrollTo/2.1.2/jquery.scrollTo.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<link href="/css/main.css" rel="stylesheet">
<meta charset="UTF-8">
<title>POSCO | 더불어 함께 발전하는 기업시민</title>

</head>
<body class="main">
	<jsp:include page="ribbon.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	<!--header 삽입  -->

	<!-- script -->
	<script type="text/javascript">
	$(function(){
////////////////////Popup Ribbon     ////////////////////
			
			var ribbon = 80;

			//페이지 로드 후 배너 안보이게 removeclass 
			$("body").removeClass("ribbon-on");

			//페이지 업,다운 스크롤 시 헤더 transition 추가/삭제
			var lastScroll = 0;
			$(window).scroll(function(event){
				//Sets the current scroll position
				var st = $(this).scrollTop();
				//Determines up-or-down scrolling
				if (st > lastScroll){
					//스크롤 다운할 때
					$("header").css({"transition":"none"});
				}
				else {
					//스크롤 업 할때
					$("header").css({"transition":'Top .5s'});
				}
				//Updates scroll position
				lastScroll = st;
			});

			
			$(".ribbon button").click(function(){
				console.log("실행1");
				$("header").css({"transition":"none"});
				console.log("실행2");
				$(".ribbon").slideUp(500,"easeInOutExpo");
				console.log("실행3");
				$("header").animate({"top":0},500,"easeInOutExpo");
				console.log("실행4");
				$("body").removeClass("ribbon-on");
				ribbon = 0;
				if ($("#ribbon-chk").is(":checked")){
					setCookie("ribbonBanner", "done", 1);
				}
			});

			//오늘 하루 열지 않음  해당 쿠키가 있으면 헤더 안움직이게
			cookiedata = document.cookie;
			if ( cookiedata.indexOf("ribbonBanner=done") < 0 ){

			setTimeout(function(){
				$("body").addClass("ribbon-on");
				$(".ribbon").addClass("on");
				$("header").css({"transition":'Top .5s'});
			}, 500);
			}
			//해당 쿠키가 없으면 헤더 움직이게
			else {
			   $("body").removeClass("ribbon-on");
			}

			
			$(window).scroll(function(){
				
				var st = $(window).scrollTop();
				
				if ( $("body").hasClass("ribbon-on") ) {
					
					if(st < ribbon){
						$("header").css({"top":ribbon-st});
						$("header #gnb .menu li .bg").css({"top":ribbon-st + 80});
						$("header #util .search-act").css({"top":ribbon-st + 80});
					}else{
						$("header").css({"top":0});
						$("header #gnb .menu li .bg").css({"top":80});
						$("header #util .search-act").css({"top":80});
					}
					
				} else {
					
					$("header").css({"top":0});
					$("header #gnb .menu li .bg").css({"top":80});
					$("header #util .search-act").css({"top":80});
				}
			});
		    
		    // Ribbon banner Slide 띠배너 슬라이드
		    var loveSlide=$(".loveSlide").bxSlider({
		        mode:"horizontal",
		        speed:1500,
		        pause: 4500,
		        pager:false,
		        moveSlides:1,
		        slideWidth:"716",
		        minSlides:1,
		        maxSlides:1,
		        infiniteLoop:true,
		        slideMargin:0,
		        auto:true,
		        autoHover:true,
		        controls:false,
		        autoControls:false,
		        autoControlsCombine:false,
		    });

		    // 띠배너 웹 접근성
		    $('.loveSlide a').focusin(function () {
		        mySlider.stopAuto();
		    });

		    $(".prev").on("click",function(){
		        loveSlide.goToPrevSlide();
		        return false;
		    });

		    $(".next").on("click",function(){
		        loveSlide.goToNextSlide();
		        return false;
		    });
			/*  */
			
				/* section height */
		var ht = $(window).height();	
	//브라우저의 높이값을 section의 높이값으로 지정
	$("section").height(ht);
	
	//브라우저가 리사이즈 될 때마다 브라우저와 section의 높이값을 갱신
	$(window).on("resize",function(){
		var ht = $(window).height();	
		$("section").height(ht);
	});	
	//section위에서 마우스 휠을 움직이면	
	 $("section").on("mousewheel",function(event,delta){    
		
	//마우스 휠을 올렸을때	
	if (delta > 0) {  
	//변수 prev에 현재 휠을 움직인 section에서 이전 section의 offset().top위치 저장
		var prev = $(this).prev().offset().top;
		//문서 전체를 prev에 저장된 위치로 이동
		$("html,body").stop().animate({"scrollTop":prev},1000);
			 
		//마우스 휠을 내렸을때	 
			}else if (delta < 0) {  
			//변수 next에 현재 휠을 움직인 section에서 다음 section의 offset().top위치 저장
			var next = $(this).next().offset().top;
			//문서 전체를 next에 저장된 위치로 이동
			$("html,body").stop().animate({"scrollTop":next},1000);
			
		}
	});		 
			
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
	});
	/* 쿠키 생성 script */
	function setCookie(cname, cvalue, exdays) {
	    var d = new Date();
	    d.setTime(d.getTime() + (exdays*24*60*60*1000));
	    var expires = "expires="+ d.toUTCString();
	    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
	}
	
	// 접근성 관련 포커스 강제 이동
	function accessibilityFocus() {
	  
	  $(document).on('keydown', '[data-focus-prev], [data-focus-next]', function(e){
	    var next = $(e.target).attr('data-focus-next'),
	        prev = $(e.target).attr('data-focus-prev'),
	        target = next || prev || false;
	    
	    if(!target || e.keyCode != 9) {
	      return;
	    }
	    
	    if( (!e.shiftKey && !!next) || (e.shiftKey && !!prev) ) {
	      setTimeout(function(){
	        $('[data-focus="' + target + '"]').focus();
	      }, 1);
	    }
	    
	  });
	  
	}

	function tooltip() {
	  var openBtn = '[data-tooltip]',
	      closeBtn = '.quick-close';
	  
	  function getTarget(t) {
	    return $(t).attr('id');
	  }
	  
	  function open(t) {
	    var showTarget = $('[data-focus="modal-' + t + '"]');
	    showTarget.show().focus();
	    showTarget.find('.quick-close').data('activeTarget', t);
	  }
	  
	  function close(t) {
	    var activeTarget = $('[data-focus="modal-' + t + '"]');
	    activeTarget.hide();
	    $('[data-tooltip="' + t + '"]').focus();
	  }
	  
	  $(document)
	    .on('click', openBtn, function(e){
	      e.preventDefault();
	      open(getTarget(e.target));
	    })
	    .on('click', closeBtn, function(e) {
	      e.preventDefault();
	      close($(this).data('activeTarget'));
	    })
	  
	}
	$(document).ready(function(){
		  
		  tooltip();
		  accessibilityFocus();
		  
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
				<a href="http://challengetochange.posco.com" target="_blank" class="posco_movie_btn" data-id="NJwsPhG2NGI" title="새창열기" data-focus="on">
						<!--p class="posco_movie_title">POSCO Group PR Movie</p-->
                        <p class="posco_movie_title"><img src="/img/main/section1/more_view.png" alt="함께 만드는 기업시민, 자세히 보기"></p>
					</a>
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
						<div class="learnmore_wrap">
						
						</div>
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
										<img src="/img/main/section3/media1.jpg" class="pc"> <img
										src="/img/main/section3/media1_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/main/section3/cap_news.jpg" alt="newsroom" class="caption">
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
										<img src="/img/main/section3/media2.jpg" class="pc"> <img
										src="/img/main/section3/media2_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/main/section3/cap_news.jpg" alt="newsroom" class="caption">
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
										<img src="/img/main/section3/media3.jpg" class="pc"> <img
										src="/img/main/section3/media3_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/main/section3/cap_ytb.jpg" alt="youtube" class="caption">
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
										<img src="/img/main/section3/media4.jpg" class="pc"> <img
										src="/img/main/section3/media4_m.jpg" class="mobile">
										<div class="cap">
											<img src="/img/main/section3/cap_ytb.jpg" alt="youtube" class="caption">
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
                                    <p class="prev_btn"><a href="#none"><img src="/img/ic_prev.png" alt="prev"></a></p>
                                    <p class="next_btn"><a href="#none"><img src="/img/ic_next.png" alt="next"></a></p>
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