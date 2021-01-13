<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<link href="/css/main.css" rel="stylesheet">
<meta charset="EUC-KR">
<title>POSCO | ���Ҿ� �Բ� �����ϴ� ����ù�</title>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!--header ����  -->

	<!-- script -->
	<script type="text/javascript">
		/*  scroll event */
		window.onload = function() {
			var elm = ".posco_section";
			$(elm).each(function(index) {
				// ���������� Wheel �̺�Ʈ ����
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

					// ���콺���� ������ �Ʒ���
					if (delta < 0) {
						if ($(elmSelecter).next() != undefined) {
							try {
								moveTop = $(elmSelecter).next().offset().top;
							} catch (e) {
							}
						}
						// ���콺���� �Ʒ����� ����
					} else {
						if ($(elmSelecter).prev() != undefined) {
							try {
								moveTop = $(elmSelecter).prev().offset().top;
							} catch (e) {
							}
						}
					}

					// ȭ�� �̵� 0.8��(800)
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
			//���� ht�� ���� �������� ���̰� ����
			var ht = $(window).height();
			//���� scroll�� ���� ������ ��ũ�ѵ� �Ÿ� ����
			var scroll = $(window).scrollTop();
			for (var i = 0; i < 7; i++) {
				if (scroll >= ht * i && scroll < ht * (i + 1)) {
					$(".dot_menu li").removeClass();
					$(".dot_menu li").eq(i).addClass("on");
				}
				;
			}
		});
		/* ��ũ�� ���̿� ���� top ��ư ����� */
		$(window).on("scroll",function(){
			var ht= $(window).height();
			//���� �������� ���̰� ����
			//���� scroll�� ���� ������ ��ũ�ѵ� �Ÿ� ����
			var scroll = $(window).scrollTop();
			//��������� ���̰� �� ��ũ�ѵ� �Ÿ����� �涧)
			if(scroll<1){
				$(".top-btn").fadeOut();
			}else{
				$(".top-btn").fadeIn();
			}
		});
		
	</script>
	<!-- script -->
	<!-- content ���� -->
	<div id="contents">
		<!-- section visual -->
		<section class="posco_section" id="visual">
			<video src="/movie/posco.mp4" muted="muted" autoplay="autoplay"
				loop="loop"></video>
			<div class="video_txt">
				<p>
					<img src="/img/main/section1/slogan.png"
						alt="Challenge Together, Change Tomorrow ���, �ù��� �Ǵ�.�Բ�, �̷��� �Ǵ�">
				</p>
			</div>
		</section>
		<!-- section products -->
		<section class="posco_section" id="products">
			<div class="products_wrap">
				<div class="container">
					<div class="subject">
						<h1 class="title">������ ��ǰ</h1>
						<p class="orangebar">
							<span></span>
						</p>
						<p class="text">
							�������� ��ǰ���߰� �̿����� ���� ����ġ ����� �����մϴ�.<br> ���� �ְ��� �����̾� ��ǰ�� ����
							������ ���� R&amp;D�� �����ϰ� ����ȭ�� �ַ�� ���߿� ���弭�ڽ��ϴ�.
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
										src="/img/main/section2/products1.jpg" alt="�����" class="pc" target="_blank">
										<img src="/img/main/section2/products1_m.jpg" alt="�����" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">�����</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/main/section2/products2.jpg" alt="��ǰ��" class="pc" target="_blank">
										<img src="/img/main/section2/products2_m.jpg" alt="��ǰ��" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">��ǰ��</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/main/section2/products3.jpg" alt="�ް�Ʈ����" class="pc"
										target="_blank"> <img src="/img/main/section2/products3_m.jpg"
										alt="�ް�Ʈ����" class="mobile" target="_blank">
										<div class="cap">
											<p class="products_gnb">�ް�Ʈ����</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/main/section2/products4.jpg" alt="�̿���" class="pc" target="_blank">
										<img src="/img/main/section2/products4_m.jpg" alt="�̿���" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">�̿���</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/main/section2/products5.jpg" alt="��ǰ ����&���丮" class="pc"
										target="_blank"> <img src="/img/main/section2/products5_m.jpg"
										alt="��ǰ ����&���丮" class="mobile" target="_blank">
										<div class="cap">
											<p class="products_gnb">�����</p>
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
							<h1 class="title">�����ڹ̵��</h1>
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
													2020�� �������� <br class="only-pc">���� ���ƺ��� <br
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
													�̰߰�, ���̰�, <br class="only-pc">�ò����� �۾��� <br
														class="only-pc">���� �κ����� �ðܿ�! <br class="only-pc">
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
													���ϸ� ���� ������, <br class="only-pc">��ɺ������ �ϻ� ������ <br
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
													�츮 ���̰� �ڶ�� <br class="only-pc">������ ���� <br
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
							������ ��ȭ���
						</h1>
						<p class="orangebar"><span></span></p>
					</div>
					<div class="culture_cont">
						<div class="culture_exp">
							<div class="explanation">
								<h2>Explanation</h2>
								<p>�����ֹ��� ȭ�հ� ǳ��ο� ��ȭ��Ȱ�� ���� ��ȭ�ü��� �����ϰ� ���� ���� ������ �����ϴ� �� ��� �޼��� Ȱ���� ���� ���弭�� �ֽ��ϴ�.
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
												<a href="#" title="�����ڷγ� ���̷��� Ȯ������ ��ȭ��� ���� ��� �ȳ� �ٷΰ���" tabindex="0">
													<p class="culture_genre">Notice</p>
													<p class="culture_title"><span>[����] ��ȭ��� ��� �ȳ�</span></p>
													<img src="/img/main/section4/slide_img_10.jpg">
												</a>
											</li>
											<li>
												<a href="#" title="�����ڷγ� ���̷��� Ȯ������ ��ȭ��� ���� ��� �ȳ� �ٷΰ���" tabindex="0">
													<p class="culture_genre">Notice</p>
													<p class="culture_title"><span>[����] ��ȭ��� ��� �ȳ�</span></p>
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
                                    <p class="news_title">2020�⿡�� ����ù� ������ ��ȭ��簡 �����а� �Բ� �մϴ�!</p>
                                    <img src="/img/main/section4/culture_news.jpg" alt="" class="newsimg_pc">
                                </a>
							</div>
							<div class="culture_detail">
								<h2>Detail Page</h2>
                                <a href="/homepage/docs/kor6/jsp/prcenter/culture/s91c2000010m.jsp" title="��ȭ��� ���������� �ٷΰ���"><p>�������� ��������</p></a>
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
						<p class="text">�����ڴ� '���Ҿ� �Բ� �����ϴ� ����ù�' �̶�� �濵�̳��� �������� �ŷڿ� ���� �޴� ���ӱ������ ������ ���� ���Դϴ�.</p>
					</div>
					<div class="about_list">
						<ul>
							<li class="cont_ethics">
								<img src="/img/main/section5/about1.png" alt="" class="pc">
								<img src="/img/main/section5/about1_m.png" alt="" class="mobile">
								<div class="cap">
									<p class="title mobile-hide">ȸ��Ұ�</p>
									<p class="text only-mobile-hide">���迡�� ���� <br>������ִ� ö��ȸ��μ� <br>�η������� �⿩�մϴ�.</p>
									<a href="#"><img src="/img/main/section5/viewmore.png" alt="View more" class="link"></a>
								</div>
							</li>
							<li class="cont_sustain">
								<img src="/img/main/section5/about2.png" alt="" class="pc">
								<img src="/img/main/section5/about2_m.png" alt="" class="mobile">
								<div class="cap">
									<p class="title mobile-hide">�����濵</p>
									<p class="text only-mobile-hide">�ùٸ� ���� <br>�ùٸ��� �ϴ� ��, <br>�ٷ� �����ڰ� �ϴ� ���Դϴ�.</p>
									<a href="#"><img src="/img/main/section5/viewmore.png" alt="View more" class="link"></a>
								</div>
							</li>
							<li class="cont_safety">
								<img src="/img/main/section5/about4.png" alt="" class="pc">
								<img src="/img/main/section5/about4_m.png" alt="" class="mobile">
								<div class="cap">
									<p class="title mobile-hide">����ȯ�� �濵</p>
									<p class="text only-mobile-hide">������ ������ȭ�� <br>������� ������<br>���� �����ϰ� �ֽ��ϴ�.</p>
									<a href="#"><img src="/img/main/section5/viewmore.png" alt="View more" class="link"></a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- content �� -->
	<!-- scroll �̹��� -->
	<div class="down">
		<img src="/img/main/section1/drag-down.png" />
	</div>
	<div class="dot_menu">
		<ul>
			<li><a href="#visual" title="���� ���־� �ٷΰ���"></a></li>
			<li><a href="#products" title="������ ��ǰ �ٷΰ���"></a></li>
			<li><a href="#media" title="������ �̵�� �ٷΰ���"></a></li>
			<li><a href="#culture" title="������ ��ȭ��� �ٷΰ���"></a></li>
			<li><a href="#about" title="About POSCO �ٷΰ���"></a></li>

		</ul>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>