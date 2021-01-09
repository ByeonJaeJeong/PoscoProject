<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<link href="/css/main.css" rel="stylesheet">
<meta charset="EUC-KR">
<title>POSCO |���Ҿ� �Բ� �����ϴ� ����ù�</title>

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
					<img src="/img/slogan.png"
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
								<img src="/img/learnmore.png" />
							</a> <a href="#" class="learnmore_wrap mobile-hide innovilt_gobtn">
								<img src="/img/learnmore_e.png" />
							</a>
						</div>
						<div class="products_list">
							<ul>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products1.jpg" alt="�����" class="pc" target="_blank">
										<img src="/img/products1_m.jpg" alt="�����" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">�����</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products2.jpg" alt="��ǰ��" class="pc" target="_blank">
										<img src="/img/products2_m.jpg" alt="��ǰ��" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">��ǰ��</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products3.jpg" alt="�ް�Ʈ����" class="pc"
										target="_blank"> <img src="/img/products3_m.jpg"
										alt="�ް�Ʈ����" class="mobile" target="_blank">
										<div class="cap">
											<p class="products_gnb">�ް�Ʈ����</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products4.jpg" alt="�̿���" class="pc" target="_blank">
										<img src="/img/products4_m.jpg" alt="�̿���" class="mobile"
										target="_blank">
										<div class="cap">
											<p class="products_gnb">�̿���</p>
										</div>
								</a></li>
								<li><a href="#" class="product_gobtn"> <img
										src="/img/products5.jpg" alt="��ǰ ����&���丮" class="pc"
										target="_blank"> <img src="/img/products5_m.jpg"
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
													2020�� �������� <br class="only-pc">���� ���ƺ��� <br
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
													�̰߰�, ���̰�, <br class="only-pc">�ò����� �۾��� <br
														class="only-pc">���� �κ����� �ðܿ�! <br class="only-pc">
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
													���ϸ� ���� ������, <br class="only-pc">��ɺ������ �ϻ� ������ <br
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
			<div class="cultrue_wrap">
				<div class="container">
					<div class="subject">
						<h1 class="title">
							������ ��ȭ���
						</h1>
						<p class="orangebar"><span></span></p>
					</div>
					<div class="culture_cont">
						<div class="culture_exp">
							<div class="explantion">
								<h2>explantion</h2>
								<p>�����ֹ��� ȭ�հ� ǳ��ο� ��ȭ��Ȱ�� ���� ��ȭ�ü��� �����ϰ� ���� ���� ������ �����ϴ� �� ��� �޼��� Ȱ���� ���� ���弭�� �ֽ��ϴ�.
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
												<a href="#" title="�����ڷγ� ���̷��� Ȯ������ ��ȭ��� ���� ��� �ȳ� �ٷΰ���" tabindex="0">
													<p class="culture_genre">Notice</p>
													<p class="culture_title"><span>[����] ��ȭ��� ��� �ȳ�</span></p>
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
	<!-- content �� -->
	<!-- scroll �̹��� -->
	<div class="down">
		<img src="/img/drag-down.png" />
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
</body>
</html>