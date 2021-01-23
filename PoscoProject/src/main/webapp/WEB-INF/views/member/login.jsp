<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인-로그인-포스코회원-POSCO</title>
</head>
<body class="membership">
<jsp:include page="../header.jsp"></jsp:include>
<section>
	<div class="subTop">
		<div class="container">
			<h2>POSCO<br>Membership</h2>
		</div>
	</div>
	<nav id="lnb">
		<div class="container">
			<script type="text/javascript">
				var _sns_share_text = '';
				var _sns_share_url = '/homepage/docs/kor6/jsp/member/s91h1000010w.jsp?';
				function goSnsShare(social){
					if(_sns_share_text.length==0)
						_sns_share_text = document.title;
					if(_sns_share_url.length==0)
						_sns_share_url = window.location.pathname;	
					sendSns(social, _sns_share_url, _sns_share_text) ; 
				}
			</script>
			<ul class="main-lnb">
				<li class="home"></li>
				<li class="one"></li>
				<li class="two"></li>
				<li class="three"></li>
			</ul>
			<div class="share">
				<a href="#" aria-label="소셜공유 열기" class="btn-share"></a>
				<div>
					<ul data-focus="modal-sns" data-focus-prev="modal-sns-close" tabindex=0>
						<li><a href="#none" onclick="javascript:copy_url('/homepage/docs/kor6/jsp/member/s91h1000010w.jsp?'); return false;" class="url" title="페이지 주소복사">URL복사</a></li>
            			<li><a href="#none" onclick="javascript:goSnsShare('facebook')" class="facebook" title="새창열림">페이스북</a></li>
						<li><a href="#none" onclick="javascript:goSnsShare('twitter')" class="twitter" title="새창열림">트위터</a></li>
						<li><a href="#none" onclick="javascript:goSnsShare('kakaostory')" class="kakao" title="새창열림">카카오톡</a></li>
						<li><a href="#none" onclick="javascript:goSnsShare('googleplus')" class="google" title="새창열림">구글플러스</a></li>
					</ul>
					<a href="#" aria-label="소셜공유 닫기" class="close" data-focus="modal-sns-close" data-focus-next="modal-sns"></a>
				</div>
			</div>
		</div>
	</nav>
	<form name ="form1" method="POST">
		<input type="hidden" name="prePage" value="https://www.posco.co.kr/homepage/docs/kor6/jsp/s91a0000001i.jsp">
		<input type="hidden" name="mode" value="login">
		<input type="hidden" name="returl" value="">
					
		<div id="contens" tabindex="-1" class="container">
			<h3>로그인</h3>
			<div class="login-wrap">
				<ul class="list-style01">
					<li>포스코에서 제공하는 보다 많은 정보와 서비스 이용을 원하신다면 로그인을 해주시기 바랍니다.</li>
					<li>포스코 홈페이지 비회원 직원 및 가족 여러분께서는 회원 가입 후 로그인하여 주시기 바랍니다.</li>
				</ul>
				<div class="login-form">
					<div class="form">
						<div class="wrap">
							<label for="USER_ID">아이디</label>
							<input type="text" id="USER_ID" name="USER_ID" title="아이디 입력">
							<label for="PASS_WORD">패스워드</label>
							<input type="password" id="PASS_WORD" name="PASS_WORD" autocomplete="off" title="패스워드 입력">
							<input type="button" value="로그인" title="로그인 버튼" onclick="javascript:goSubmit();">
						</div>
					</div>
					<div class="info">
						<p class="title">회원가입</p>
						<p class="text">포스코 회원만이 누릴 수 있는 각종 서비스와 정보를 누려보세요.</p>
						<a href="javascript:goRegister();">회원가입</a>
						<p class="title">아이디 찾기/비밀번호 재발급</p>
						<p class="text">본인 확인 후 아이디와 비밀번호를 메일로 보내드립니다.</p>
						<a href="javascript:goFindId();">아이디 찾기/비밀번호 재발급</a>
					</div>
				</div>
				<p class="text">개인정보수정은 로그인 후 상단에 위치한 마이페이지를 선택하셔서 수정하시면 됩니다.</p>
			</div>
		</div>
	</form>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>