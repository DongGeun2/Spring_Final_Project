<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<!-- Primary Meta Tags -->
<title>�������� �ڵ�����</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- ������ ��� -->
<script
	src="${pageContext.request.contextPath}/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<!-- Fontawesome -->
<link type="text/css"
	href="${pageContext.request.contextPath}/vendor/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet">

<!-- Pixel CSS -->
<link type="text/css"
	href="${pageContext.request.contextPath}/css/pixel.css"
	rel="stylesheet">
<!-- main CSS -->
<link type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">

<!-- favicon -->
<link type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/img/favicon/cycoding-favicon.ico"
	rel="icon">

</head>
<!-- ������ ��� -->
<script
	src="${pageContext.request.contextPath}/vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- JQuesy -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<link type="text/css"
	href="${pageContext.request.contextPath}/css/pixel.css"
	rel="stylesheet">
<!-- main CSS -->
<link type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
</head>
</head>
<body>


	<h3>��� �׽�Ʈ</h3>
	<div class="panel-group" id="accordion" role="tablist"
		aria-multiselectable="true">
		<!-- �ϳ��� item�Դϴ�. data-parent ��û�� href ������ ����� �ϸ� �������� �۵��մϴ�. -->
		<div class="panel panel-default">
			<div class="panel-heading" role="tab">
				<a role="button" data-toggle="collapse" data-parent="#accordion"
					href="#collapse1" aria-expanded="false"> Item #1 </a>
			</div>
			<div id="collapse1" class="panel-collapse collapse" role="tabpanel">
				<div class="panel-body">Hello world1</div>
			</div>
		</div>
		<!-- -->
		<!-- �ϳ��� item�Դϴ�. -->
		<div class="panel panel-default">
			<div class="panel-heading" role="tab">
				<a role="button" data-toggle="collapse" data-parent="#accordion"
					href="#collapse2" aria-expanded="false"> Item #2 </a>
			</div>
			<div id="collapse2" class="panel-collapse collapse" role="tabpanel">
				<div class="panel-body">Hello world2</div>
			</div>
		</div>
		<div class="panel panel-default">

			<div class="panel-heading" role="tab">
				<a role="button" data-toggle="collapse" data-parent="#accordion"
					href="#collapse3" aria-expanded="false"> Item #3 </a>
			</div>

			<div id="collapse3" class="panel-collapse collapse" role="tabpanel">
				<div class="panel-body">Hello world3</div>
			</div>
		</div>
	</div>



	<li class="nav-item dropdown mydropdow" panel-group" id="accordion" role="tablist"
		aria-multiselectable="true">
		<div class="panel panel-default">
		<div class="panel-heading" role="tab">
			<a role="button" data-toggle="collapse" data-parent="#accordion"
					href="#my_sub" aria-expanded="false">������ ������ <i class="fas fa-caret-down"></i></a>
		</div> <!-- 1�� �޴� -->
		<div class="sub panel-collapse collapse" role="tabpanel" id="my_sub">
			<ul class="panel-body">
				<li><a href="${pageContext.request.contextPath}/admin/chart">���</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/member">ȸ������</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/site">����Ʈ����</a></li>
				<li><a href="${pageContext.request.contextPath}/logout">�α׾ƿ�</a></li>
			</ul>
		</div>
		</div>
	</li>
	<%-- <li>
										<div>${sessionScope.nickname}�� <i class="fas fa-caret-down"></i></div> <!-- 1�� �޴� -->
										<div class="sub" id="my_sub">
											<ul>
												<li><a
													href="${pageContext.request.contextPath}/mypage/mypageCheck">����������</a></li>
												<li><a
													href="${pageContext.request.contextPath}/mypage/wishProject">�ϸ�ũ/��������</a></li>

												<li class="subdrop"><a href="#">������Ʈ</a>
												
												<se:authorize access="hasAnyRole('ROLE_MEMBER', 'ROLE_TEAMMANGER')">
													<input type="hidden" id="ismember" value="1" />
												</se:authorize>
												<se:authorize access="!hasAnyRole('ROLE_MEMBER', 'ROLE_TEAMMANGER')">
													<input type="hidden" id="ismember" value="0" />
												</se:authorize>
													<ul class="susub" id="project_sub">
													<!-- ���� �������� ������Ʈ �ִ��� Ȯ�� -->
																											
													</ul></li>

												<li><a href="${pageContext.request.contextPath}/logout">�α׾ƿ�</a></li>

											</ul>
										</div>
									</li> --%>


</body>
</html>