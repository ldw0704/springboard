<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
				<div class="widget p-lg">
					<h4 class="m-b-lg">Hover rows</h4>
					<p class="m-b-lg docs">
						Add <code>.table-hover</code> to enable a hover state on table rows within a <code>&lt;tbody&gt;</code>.
					</p>

					<table class="table table-hover">
						<tr><th>#</th><th>First Name</th><th>Last Name</th><th>Username</th></tr>
						<tr><td>1</td><td>Mark</td><td>Otto</td><td>@mdo</td></tr>
						<tr><td>2</td><td>Jacob</td><td>Thornton</td><td>@fat</td></tr>
						<tr><td>3</td><td>Larry</td><td>the Bird</td><td>@twitter</td></tr>
					</table>
				</div><!-- .widget -->
			</div><!-- END column -->

		</div><!-- .row -->
	</section><!-- #dash-content -->
</div><!-- .wrap -->


<%--  <%@include file="../includes/footer.jsp" %> --%>
 <jsp:include page="../includes/footer.jsp"></jsp:include>
