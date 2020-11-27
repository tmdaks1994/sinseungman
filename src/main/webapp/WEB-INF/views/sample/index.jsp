<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jsp: Java Server Page의 약자 -->
<%-- 자바주석 시작
-jsp에서 자바프로그램을 사용할 때 쓰는 태그 꺽쇠<% %>
-@page골뱅이는 에노테이션-페이지지시자 laungage:java,
-콘텐츠타입:text/html;문자셋:유니코드 페이징인코딩:UTF-8
-다른언어PHP 예를 들면<?PHP?>꺽쇠로 감싸준다.
자바 주석 끝--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반응형 홈페이지</title>
</head>
<body>
HomeController.java 에서 index.jsp로 매칭 시킨 결과가 나오는 페이지.
HomeController를 거쳐서 index.jsp를 접근하는 이유는 보안때문이다.
다른예로, php프로그램은 위에 있는 html처럼 파일에 바로 접근이 가능하다.
</body>
</html>