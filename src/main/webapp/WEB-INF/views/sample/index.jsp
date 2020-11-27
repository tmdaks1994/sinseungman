<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jsp: Java Server Page의 약자 -->
<%-- 자바주석 시작
-jsp에서 자바프로그램을 사용할 때 쓰는 태그 꺽쇠<% %>
-@page골뱅이는 에노테이션-페이지지시자 laungage:java,
-콘텐츠타입:text/html;문자셋:유니코드 페이징인코딩:UTF-8
-다른언어PHP 예를 들면<?PHP?>꺽쇠로 감싸준다.
자바 주석 끝--%>

<!-- HomeController.java 에서 index.jsp로 매칭 시킨 결과가 나오는 페이지.\<br>
-Html에서는 /resources/sample/index.html으로 접근한다.<br>
-HomeController를 거쳐서 index.jsp를 접근하는 이유는 보안때문이다.<br>
-다른예로, php프로그램은 위에 있는 html처럼 파일에 바로 접근이 가능하다.<br>
-출발은 자바(pc용 애플리케이션,웹프로그램도 만드는데 모두 사용된다.)<br>
-자바에서 출발한 스프링프레임워크: 자바에서 웹프로그램 만드는데 특화된 라이브러리를 구조화시켜서
개발자가 편하게 만들어 놓은 것이 스프링프레임워크.<br>
-jsp: 스프링 MVC프로젝트<br>
-MVC에서 View단에 해당하는 기술 부분이 jsp이다.<br>
-MVC = Model(데이터베이스)-View(jsp페이지)<->Controller(컨트롤러java클래스)<br>
-org.edu.controller 패키지명: 자바클래스가 있는 폴더 경로를 말한다.<br>
-패키지를 사용하는 이유: 자바 클래스를 기능별로 묶어놓기 위해서 명시적으로 묶는다. <br>-->

<!DOCTYPE html><!-- 현재문서의 형태선언 -->
<html><!-- html문서는 태그열고 ~ 태그닫고 하는 영역확인 중요 -->
<head><!-- 문서내용과는 관계없는 문서정보=메타데이터(데이터의데이터)가 존재 -->
<meta charset="UTF-8"><!-- 문서의 언어 인코딩설정  지금은 유니코드로 됨 -->
<meta name="viewport" content="width=device-width,intial-scale=1,minimum-scale=1,maximum-scale=1">
<title>반응형홈페이지</title><!-- 문서의 제목을 브라우저상단왼쪽에 표시 -->
<!-- 외부 자바스크립트 불러오는 태그(아래) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script><!-- J쿼리코어 -->
<script src="/resources/sample/js/user.js"></script>
<!-- 외부 css파일 불러오는 태그(아래) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- 위 부트스트랩 코어 입니다. -->

<link rel="stylesheet" href="/resources/sample/css/reset.css" type="text/css">
<link rel="stylesheet" href="/resources/sample/css/mobile.css" type="text/css">
<link rel="stylesheet" href="/resources/sample/css/tablet.css" type="text/css">
<link rel="stylesheet" href="/resources/sample/css/pc.css" type="text/css">

<style>
/*반응형-테블릿용(Pc) 스타일 시작*/
@media all and (min-width:1132px) {/*미디어쿼리:미디어의 가로크기가 1132px 이상이면 적용*/
/*슬라이드 영역 시작*/

/*슬라이드 영역 끝*/
}
/*반응형-테블릿용(Pc) 스타일 끝*/
</style>
<script>
$(document).ready(function($) {
	$(".carousel").carousel({
		  interval: 1000,
		  pause: false
	});
});
</script>

</head>
<body><!-- 문서내용이 들어가는 영역 -->
<div id="wrap"><!-- 랩핑시킨 영역 -->
<header class ="header">
<!-- 상단 로고와 햄버거 메뉴영역 시작 -->
<h1 class="logo">
<a href="index.html">LOGO</a>
</h1><!-- 헤드라인 글자를 표시 h1~h6 -->
<div class="menu-toggle-btn">
<span></span>
<span></span>
<span></span>
</div>

<!-- html5 시만텍 웹 = 의미가 있는 태그를 사용하게 해서 AI가 인식하게 된다. -->
<nav class="gnb"><!-- gnb:글로벌네비게이션: 전체영역메뉴 globalnavigation -->
<!-- 리스트를 모여주는 태그 ul(UnOrdered List *.~, *.~ ) , ol(Ordered List 1.~, 2.~ ) -->
<ul>
<li><a href="index.html">HOME</a></li>
<li><a href="weare.html">WE ARE</a></li>
<li><a href="work.html">WORK</a></li>
<li><a href="blog.html">BLOG</a></li>
<li><a href="contact.html">CONTACT US</a></li>
</ul>
</nav> 
<!-- 상단 로고와 햄버거 메뉴영역 끝 -->
</header>
<section><!-- division디비전이라는 div 영역표시 태그 대신에 사용 -->
<!-- 본문 슬라이드 영역 시작 -->
<!-- 이미지를 불러오는 태그 img -->
<!-- 경로:상대(./img/...),절대경로(/resources/sample/img/...) -->
<!-- 태그안쪽에 지정한 스타일을 인라인스타일 -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/resources/sample/img/Xmas.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/resources/sample/img/xmas2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/resources/sample/img/santa.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- 본문 슬라이드 영역 끝 -->
</section>
<footer class ="footer">
<!-- 하단 로고 영역 시작 -->
<p>LOGO</p><!-- 문양영역을 의미하는paragraph 태그. -->
<!-- 하단 로고 영역 끝 -->
</footer>
</div>
</body>
</html>