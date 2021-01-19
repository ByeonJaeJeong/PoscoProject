<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/header.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<header class="container-full">
		<div class="container">
			<h1>
				<a href="#">포스코</a>
			</h1>
			<div id="gnb">
				<ul class="menu">
					<li><a href="#">회사소개</a></li>
					<li><a href="#">기업시민<img src="/img/footer_ico_newwin.png" class="ml5" alt="새창열림"></a></li>
					<li><a href="#">제품</a></li>
					<li><a href="#">투자자정보</a></li>
					<li><a href="#">포스코 뉴스룸<img src="/img/footer_ico_newwin.png" class="ml5" alt="새창열림"></a></li>
				</ul>
			</div>
			<!--  gnb 끝 -->
			<div id="util">
				<div class="search">
					<a href="#" id="top-search">검색</a>
				</div>
				<div class="search-act inter-panel"></div>
				<div class="login mobile-hide">
					<a href="#">로그인</a>
				</div>
				<div class="quick">
					<a href="#" id="quick" data-tooltip="modal-quick">자주찾는 메뉴</a>
				</div>
				<div class="quick-act" data-focus="modal-quick" data-focus-prev="modal-quick-close" tabindex=0 >
					<div class="quick-wrap">
						<div class="top">자주찾는 메뉴</div>
						<ul>
	                    <li><a href="#" target="_blank" class="newsroom_fav">포스코 뉴스룸</a></li>
						<li><a href="#">문화행사</a></li>
						<li><a href="#">견학신청</a></li>
						<li><a href="#" target="_blank">인재채용</a></li>
						<li><a href="#" target="_blank" class="product_fav">제품검색</a></li>
	                	</ul>
	                	<a href="#" class="quick-close" data-focus="modal-quick-close" data-focus-next="modal-quick">자주찾는메뉴 닫기</a>
					</div>
				</div>
				<div class="language mobile-hide">
					<a href="#" id="language">language</a>
				</div>
			</div>
			<!--util 끝  -->

			<div id="all-menu">
				<a href="#" class="btn-all-menu" aria-label="전체메뉴보기" data-tooltip="modal-all"></a>
				<jsp:include page="all-menu.jsp"></jsp:include>
			</div>
			<!-- all menu 끝  -->
			<img src="/img/header/withposco.gif" alt="with POSCO" class="withposco mobile-hide">
		</div>
		<div class="all"></div>
		<!-- container 끝 -->
	</header>
	<!-- container full 끝 -->
