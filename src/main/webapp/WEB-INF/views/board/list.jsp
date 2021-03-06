<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%int i = 10; %>
<!--JSP include 현재페이지값을 가져가서 할수잇으나 권장하지않음 -->
<%-- <%@ include file="../includes/header.jsp" %> --%>
<!--JSP 액션태그내에  jsp:param include 값던지기 가능 -->

<jsp:include page="../includes/header.jsp"></jsp:include>


<!-- APP MAIN ==========-->
<main id="app-main" class="app-main">
  <div class="wrap">
	<section class="app-content">
		<div class="row">
			<div class="col-md-12">
				<h4 class="m-b-lg">Tables</h4>
			</div><!-- END column -->		

			<div class="col-md-12">
				<div class="widget p-lg" >
					<h4 style="display: inline" class="m-b-lg" >Board List Page</h4>
					<a href="register" class="btn btn-success" role="button" style="float: right;">Register New Board</a>
					<%-- <p class="m-b-lg docs">
						Add <code>.table-hover</code> to enable a hover state on table rows within a <code>&lt;tbody&gt;</code>.
					</p> --%>

					<table class="table table-hover">
					<thead>
						<tr><th>#번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>수정일</th></tr>
					</thead>
					<tbody>
					<c:forEach var="board" items="${list }">	
						<tr><td>${board.bno }</td><td><a href="get?bno=${board.bno }">${board.title }</a></td><td>${board.writer }</td><td><fmt:formatDate value="${board.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td><td><fmt:formatDate value="${board.updatedate }" pattern="yy-MM-dd HH:mm:ss"/></td></tr>
					</c:forEach>	
					</tbody>
					</table>
				</div><!-- .widget -->
			</div><!-- END column -->

		</div><!-- .row -->
	</section><!-- #dash-content -->
</div><!-- .wrap -->


<%--  <%@include file="../includes/footer.jsp" %> --%>
 <jsp:include page="../includes/footer.jsp"></jsp:include>
