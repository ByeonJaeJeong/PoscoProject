<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���-�α���-������ȸ��-POSCO</title>
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
				<a href="#" aria-label="�ҼȰ��� ����" class="btn-share"></a>
				<div>
					<ul data-focus="modal-sns" data-focus-prev="modal-sns-close" tabindex=0>
						<li><a href="#none" onclick="javascript:copy_url('/homepage/docs/kor6/jsp/member/s91h1000010w.jsp?'); return false;" class="url" title="������ �ּҺ���">URL����</a></li>
            			<li><a href="#none" onclick="javascript:goSnsShare('facebook')" class="facebook" title="��â����">���̽���</a></li>
						<li><a href="#none" onclick="javascript:goSnsShare('twitter')" class="twitter" title="��â����">Ʈ����</a></li>
						<li><a href="#none" onclick="javascript:goSnsShare('kakaostory')" class="kakao" title="��â����">īī����</a></li>
						<li><a href="#none" onclick="javascript:goSnsShare('googleplus')" class="google" title="��â����">�����÷���</a></li>
					</ul>
					<a href="#" aria-label="�ҼȰ��� �ݱ�" class="close" data-focus="modal-sns-close" data-focus-next="modal-sns"></a>
				</div>
			</div>
		</div>
	</nav>
	<form name ="form1" method="POST">
		<input type="hidden" name="prePage" value="https://www.posco.co.kr/homepage/docs/kor6/jsp/s91a0000001i.jsp">
		<input type="hidden" name="mode" value="login">
		<input type="hidden" name="returl" value="">
					
		<div id="contens" tabindex="-1" class="container">
			<h3>�α���</h3>
			<div class="login-wrap">
				<ul class="list-style01">
					<li>�����ڿ��� �����ϴ� ���� ���� ������ ���� �̿��� ���ϽŴٸ� �α����� ���ֽñ� �ٶ��ϴ�.</li>
					<li>������ Ȩ������ ��ȸ�� ���� �� ���� �����в����� ȸ�� ���� �� �α����Ͽ� �ֽñ� �ٶ��ϴ�.</li>
				</ul>
				<div class="login-form">
					<div class="form">
						<div class="wrap">
							<label for="USER_ID">���̵�</label>
							<input type="text" id="USER_ID" name="USER_ID" title="���̵� �Է�">
							<label for="PASS_WORD">�н�����</label>
							<input type="password" id="PASS_WORD" name="PASS_WORD" autocomplete="off" title="�н����� �Է�">
							<input type="button" value="�α���" title="�α��� ��ư" onclick="javascript:goSubmit();">
						</div>
					</div>
					<div class="info">
						<p class="title">ȸ������</p>
						<p class="text">������ ȸ������ ���� �� �ִ� ���� ���񽺿� ������ ����������.</p>
						<a href="javascript:goRegister();">ȸ������</a>
						<p class="title">���̵� ã��/��й�ȣ ��߱�</p>
						<p class="text">���� Ȯ�� �� ���̵�� ��й�ȣ�� ���Ϸ� �����帳�ϴ�.</p>
						<a href="javascript:goFindId();">���̵� ã��/��й�ȣ ��߱�</a>
					</div>
				</div>
				<p class="text">�������������� �α��� �� ��ܿ� ��ġ�� ������������ �����ϼż� �����Ͻø� �˴ϴ�.</p>
			</div>
		</div>
	</form>
</section>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>