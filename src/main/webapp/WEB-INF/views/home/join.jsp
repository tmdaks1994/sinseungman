<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>
<link rel="stylesheet" href="/resources/home/css/board.css">
<link rel="stylesheet" href="/resources/home/css/join.css">

<script src="/resources/home/js/jquery.validate.js"></script>
<script src="/resources/home/js/additional-methods.js"></script>
<script>
$(document).ready(function() {
	$(".appForm").validate({
		rules: {
			password: "required",
			password_chk: {
				equalTo: "#password_lbl"
			}
		}
	});
	$.extend($.validator.messages, {
		required: "필수 항목 입니다.",
		email: "유효하지 않는 Email주소 입니다.",
		digits: "숫자만 입력 가능합니다.",
		equalTo: "비밀번호가 일치하지 않습니다."
	});
});
</script>

	<!-- 메인콘텐츠영역 -->
	<div id="container">
		<!-- 메인상단위치표시영역 -->
		<div class="location_area member">
			<div class="box_inner">
				<h2 class="tit_page">스프링 <span class="in">in</span> 자바</h2>
				<p class="location">MEMBER <span class="path">/</span> 회원가입</p>
				<ul class="page_menu clear">
					<li><a href="javascript:;" class="on">회원가입</a></li>
				</ul>
			</div>
		</div>	
		<!-- //메인상단위치표시영역 -->

		<!-- 메인본문영역 -->
		<div class="bodytext_area box_inner">
			<!-- 폼영역 -->
			<form action="join.html" class="appForm">
				<fieldset>
					<legend>입력 양식</legend>
					<p class="info_pilsoo pilsoo_item">필수입력</p>
					<ul class="app_list">
						<li class="clear">
                            <label for="email_lbl" class="tit_lbl pilsoo_item">이메일</label>
                            <div class="app_content email_area">
                                <input type="email" name="email" class="w100p" id="email_lbl" title="이메일 주소" placeholder="이메일을 입력해주세요" required/>
                            </div>
						</li>
						<li class="clear">
							<label for="name_lbl" class="tit_lbl pilsoo_item">작성자명</label>
							<div class="app_content"><input type="text" name="name" class="w100p" id="name_lbl" placeholder="이름을 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="pwd_lbl" class="tit_lbl pilsoo_item">비밀번호</label>
							<div class="app_content"><input type="password" name="pwd" class="w100p" id="pwd_lbl" placeholder="비밀번호를 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="pwd2_lbl" class="tit_lbl pilsoo_item">비밀번호 확인</label>
							<div class="app_content"><input type="password" name="pwd2" class="w100p" id="pwd2_lbl" placeholder="비밀번호를 다시 한번 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="phone_lbl" class="tit_lbl pilsoo_item">연락처</label>
							<div class="app_content"><input type="tel" name="phone" class="w100p" id="phone_lbl" placeholder="휴대폰”-”없이 숫자만 입력하세요" required/></div>
						</li>
						<li class="clear">
							<span class="tit_lbl pilsoo_item">성별</span>
							<div class="app_content radio_area">
								<input type="radio" class="css-radio" id="mmm_lbl" name="gender" checked><label for="mmm_lbl">남</label>
								<input type="radio" class="css-radio" id="www_lbl" name="gender"><label for="www_lbl">여</label>
							</div>
						</li>
						<li class="clear">
							<label for="content_lbl" class="tit_lbl pilsoo_item">문의내용</label>
							<div class="app_content"><textarea name="content" id="content_lbl" class="w100p" placeholder="내용을 입력해 주세요" required></textarea></div>
						</li>
						<li class="clear">
                            <span class="tit_lbl pilsoo_item">개인정보 활용동의</span>
							<div class="app_content checkbox_area">
								<input type="checkbox" name="agree" class="css-checkbox" id="agree_lbl" required checked/><label for="agree_lbl">동의함</label>
							</div>
						</li>
					</ul>
					<p class="btn_line">
					<button class="btn_baseColor">회원가입</button>
					</p>	
				</fieldset>
			</form>
			<!-- //폼영역 -->
		</div>
		<!-- //메인본문영역 -->
	</div>
	<!-- //메인콘텐츠영역 -->

<%@ include file="./include/footer.jsp" %>