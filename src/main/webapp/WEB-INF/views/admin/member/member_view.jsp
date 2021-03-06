<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- jstl은 jsp의 표준태그 라이브러리 입니다. java standard tag library -->  
  <%@ include file="../include/header.jsp" %>

<!-- 대쉬보드 본문 Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- 본문헤더Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">회원상세보기</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">회원상세보기</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- 본문내용 Main content -->
    <section class="content">
      <div class="container-fluid">
 		
 		<div class="row"> <!-- 부트스트랩의 디자인클래스 row -->
          <div class="col-12"> <!-- 그리드시스템중12가로 칼럼 width:100% -->
            
			<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Read Member</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <strong><i class="fas fa-book mr-1"></i> user_id</strong>
                <p class="text-muted">
                <%--${user_id2}--%>
                <c:out value="${memberVO.user_id}"></c:out>
                  <img onerror="this.src='/resources/dist/img/default-150x150.png'" class="img-circle" src="/resources/profile/${memberVO.user_id}.jpg" style="width:50px;height:50px;" />
                </p>
                <!-- jsp에서 자바변수를 사용하는 방법Model로 수신한$ user_id 변수명으로 표시. -->
                <hr>
                <strong><i class="fas fa-map-marker-alt mr-1"></i> user_name</strong>
                <p class="text-muted">${memberVO.user_name}</p>
                <!-- 부트스트랩 mr-1:margin-right: .25rem여백important -->
                <hr>
                <strong><i class="fas fa-pencil-alt mr-1"></i>email</strong>
                <p class="text-muted">${memberVO.email}</p>
                <hr>
                <strong><i class="far fa-file-alt mr-1"></i> point</strong>
                <p class="text-muted">${memberVO.point}</p>
              	<hr>
                <strong><i class="far fa-circle mr-1"></i> enabled</strong>
                <p class="text-muted">${memberVO.enabled}</p>
                <hr>
                <strong><i class="fas fa-align-left mr-1"></i> levels</strong>
                <p class="text-muted">${memberVO.levels}</p>
              </div>
              <!-- /.card-body -->
            </div>

			<form name="delete_form" id="action_form" action="">
			<!-- 버튼영역 시작 -->
              <div class="card-body">
				<a href="/admin/member/member_list?page=${pageVO.page}" class="btn btn-primary float-right mr-1">LIST ALL</a>
              	<button type="button" id="deleteBtn" class="btn btn-danger float-right mr-1">DELETE</button>
				<button type="button" id="updateBtn" class="btn btn-warning float-right mr-1 text-white">UPDATE</button>            
              </div>
            <!-- 버튼영역 끝 -->
            <input type="hidden" name="user_id" value="${memberVO.user_id}">
            <input type="hidden" name="page" value="${pageVO.page}">
            </form>
          </div>
        </div>
 		</div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
 <!-- /.content-wrapper -->
 
<%@ include file="../include/footer.jsp" %>

<script>
  $(document).ready(function(){
    $("#deleteBtn").bind("click",function(){
    	if(confirm("정말 삭제 하시겠습니까?")) {//confirm()자바스크립트 함수의 반환값은 true
    		$("#action_form").attr("action","/admin/member/member_delete");
    		$("#action_form").attr("method","post");
    		$("#action_form").submit();
    	}
    });
    $("#updateBtn").bind("click",function(){
    	$("#action_form").attr("action","/admin/member/member_update");
    	$("#action_form").attr("method","get");
    	$("#action_form").submit();
    });
  });
</script>