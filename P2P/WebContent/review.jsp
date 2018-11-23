<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="Resources/css/base.css" rel="stylesheet">
<title>Main</title>
<style>
</style>
</head>
<body>
	<div class="layout">
		<div class="left-box">
		</div>
		<div class="center-box">
			<div id="logo" style="margin-top:30px">
				<a href="main.jsp"><img src="Resources/img/logo.png" style="width:152px;height:80px"/></a>
			</div>
			<div id="menu">
				<div class="side_text">
					<a href="average.jsp">·&nbsp;&nbsp;총/전공평점평균</a><br>
					<a href="graduate.jsp">·&nbsp;&nbsp;졸업요건진단</a><br>
					<a href="introduce.jsp">·&nbsp;&nbsp;자기소개서</a><br>
					<a href="information.jsp">·&nbsp;&nbsp;취업신상정보</a><br>
					<a href="calendar.jsp">·&nbsp;&nbsp;자격정보/시험일정</a><br>
					<a href="review.jsp">·&nbsp;&nbsp;면접/입사후기</a>
				</div>
			</div>
			<div id="link">
				<div class="side_text">
					<a href="http://www.kyonggi.ac.kr/KyonggiUp.kgu" target="_blank">·&nbsp;&nbsp;경기대학교</a>&nbsp;&nbsp;&nbsp;<img src="img/link_m.png" /><br>
					<a href="http://kutis.kyonggi.ac.kr/webkutis/" target="_blank">·&nbsp;&nbsp;KUTIS</a>&nbsp;&nbsp;&nbsp;<img src="img/link_m.png" /><br>
					<a href="http://cs.kyonggi.ac.kr" target="_blank">·&nbsp;&nbsp;컴퓨터과학과</a>&nbsp;&nbsp;&nbsp;<img src="img/link_m.png" />
				</div>
			</div>
			<p>
				<font color="#566270" style="font-size:8pt">© Kyonggi University, P2P</font>
			</p>
		</div>
		<div class="right-box" style="line-height:50%">
			<div id="header" style="width:800px;text-align:right;">
				<div class="head_text" style="margin-top:30px">
					<b>· 소속 : </b>컴퓨터과학과&nbsp;&nbsp;&nbsp;
					<b>· 학번 : </b>201800000&nbsp;&nbsp;&nbsp;
					<b>· 사용자 : </b>ㅇㅇㅇ&nbsp;&nbsp;&nbsp;
					<b>· 구분 : </b>학생&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<img src="img/logout_button.png" style="width:60px;height:auto;vertical-align:middle"/>
				</div>
			</div>
			<img src="img/line.png" style="width:100%;height:4px" />
			<div id="content" style="width:785px;padding:15px 15px 15px 15px">
				<div class="title">
					<h1>
						면접 / 입사후기
						<img src="img/question.png" title="설명을 작성해주세요." />
					</h1>
				</div>
				<div class="article">
					<div class="container">
						<form id="boardForm" name="boardForm" method="post">
							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>날짜</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="result" items="${list }" varStatus="status">
									<tr>
										<td><c:out value="${result.code }"/></td>
										<td><a href='#' onClick='fn_view(${result.code})'><c:out value="${result.title }"/></a></td>
										<td><c:out value="${result.writer }"/></td>
										<td><c:out value="${result.reg_datetime }"/></td>
										<td></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<div>            
								<a href='#' onClick='fn_write()' class="btn btn-success">글쓰기</a>            
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
//글쓰기
function fn_write(){
    
    var form = document.getElementById("boardForm");
    
    form.action = "<c:url value='/board/writeForm.do'/>";
    form.submit();
    
}
 
//글조회
function fn_view(code){
    
    var form = document.getElementById("boardForm");
    var url = "<c:url value='/board/viewContent.do'/>";
    url = url + "?code=" + code;
    
    form.action = url;    
    form.submit(); 
}
</script>
</body>
</html>