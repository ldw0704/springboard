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
				<h4 class="m-b-lg">Board Register</h4>
			</div><!-- END column -->		

			<div class="col-md-12">
				<div class="widget p-lg" >
					<h4 class="m-b-lg" >Board Register</h4>					
					<%-- <p class="m-b-lg docs">
						Add <code>.table-hover</code> to enable a hover state on table rows within a <code>&lt;tbody&gt;</code>.
					</p> --%>

					<div class="panel-body">
						<form method="post" action="">
							<div class="form-group">
								<label>제목</label><input type="text" name="title" id="title" class="form-control" value="" required="required"/>
							</div>
							<div class="form-group">
								<label>내용</label><textarea style="resize: none;" name="content" id="content" class="form-control" required="required"></textarea>
							</div>
							<div class="form-group">
								<label>작성자</label><input type="text" name="writer" id="writer" class="form-control" value="" required="required"/>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-default">글쓰기</button>
								<button type="button" class="btn btn-default">취소</button>
							</div>
						</form>
					</div>
				</div><!-- .widget -->
			</div><!-- END column -->

		</div><!-- .row -->
	</section><!-- #dash-content -->
</div><!-- .wrap -->


<%--  <%@include file="../includes/footer.jsp" %> --%>
 <jsp:include page="../includes/footer.jsp"></jsp:include>
