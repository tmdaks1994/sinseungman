<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="./include/header.jsp"%>
    <section class="contact-section"><!-- division디비전이라는 div 영역표시 태그 대신에 사용 -->
<h1>CONTACT</h1>
<div class="container">
<!-- 폼태그의 필수 속성, name, action-데이터를 전송할 대상, method-데이터를 전송하는 방법 -->
<!-- input 한줄입력태그, textarea 여러줄입력태그 -->
<form name="message_form" action="/contact" method="post">
<!-- 스프링에서는 action으로 폼데이터를 전송할 위치를 지정할때, contact.html직접x /contact처럼 컨트롤러를 통해O -->
<fieldset>
<legend>현재폼의 타이틀 영역입니다.</legend>
<div class="input-class">
<label for="name">이름</label>
<input name="name" id="name" type="text" placeholder="이름을 입력">
<label for="phone">연락처</label>
<input name="phone" id="phone" type="text" placeholder="연락처를 입력">
<label for="email">이메일</label>
<input name="email" id="email" type="text" placeholder="E-mail을 입력">
<!-- 입력 제약조건 html5에서 지원하는 기능 type에 꼭 email라고 형식을 지정해야지만, 제약조건이 작동된다. -->
</div>
<div class="textarea-class">
<label for="messate">메시지</label>
<textarea name="message" id="message" placeholder="Memo"></textarea>
</div>
</fieldset>
<div class="submit-btn">
<button type="submit">Message Send</button>
</div>
</form>
<!-- form태그의 목적은 input,textarea,checkbox,radio,select데이터를전송하는목적. -->
<!-- form전송은 get(비보안용),post(보안용) -->
</div>
</section>
    
    <%@ include file="./include/footer.jsp"%>