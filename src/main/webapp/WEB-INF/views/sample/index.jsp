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

<%@ include file="./include/header.jsp" %>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

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

<%@ include file="./include/footer.jsp" %>