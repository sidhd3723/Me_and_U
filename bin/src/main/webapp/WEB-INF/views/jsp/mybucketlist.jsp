<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>나의 버킷리스트</title>
		<!-- head import -->
		<c:import url="/WEB-INF/views/layout/head.jsp" /> 
		<script src="<c:url value='/js/bucketList/mybucketlist.js'/>"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/bucketList/mybucketlist.css'/>">
	</head>
	<body>
		<!-- top import -->
		<c:import url="/WEB-INF/views/layout/top.jsp" />
		<div id="mainwrap">
			<section>
				<div id="slideShow">
					<div id="prevNextButtonBox">
						<img id="prevButton" src="<c:url value='/images/prevButton.png'/>">
						<img id="nextButton" src="<c:url value='/images/nextButton.png'/>">
					</div>
					<div id="slideText">
						<b>나의 버킷리스트</b>
					</div>
					<div id="slideShowBox">
						<div id="slidePanel">
							<img src="<c:url value='/images/배낭여행.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/런던브릿지1.jpg'/>" class="slideImage">
							<img src="<c:url value='/images/사이클1.jpg'/>" class="slideImage">
						</div>
						<div id="controlButtonBox">
							<img src="<c:url value='/images/controlButton2.png'/>" class="controlButton">
							<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
							<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
						</div>
					</div>
				</div>
			</section>
			<div id="miniWrap">
				<section>
					<div id="mybucketlist">
						<form id="mybucketlistForm" method="post" <%-- action="<c:url value='/menu/boardList'/>" --%>>
							<div id="listInsertBox">
								<input type="text" id="listInsertText"placeholder="이루고 싶은 것을 입력하세요!">
								<input type="submit" id="listInsertBtn" value="등록하기">
							</div>
							<div id="mybucketlistTitle">
								<b>나의 버킷리스트</b>
								<span><input type="checkbox" name="mybucketlistView" value="complete">완료 리스트 보기
								<input type="checkbox" name="mybucketlistView" value="notcomplete">미완료 리스트 보기</span>
							</div>
						</form>
						<table id="mybucketlistTable" border="1">
								<tr>
									<th class="mylisttable1"><input type="button" id="deletebucketBtn" value="삭제"></th>
									<th class="mylisttable2">내용</th>
									<th class="mylisttable3">완료</th>
								</tr>
								<!-- 프론트용 임시 시작 -->
								<tr> 
									<td><input type="checkbox"></td><td>미국 가보기</td><td><button class="listCompleteBtn">완료</button></td>
								</tr>
								<tr>
									<td><input type="checkbox"></td><td>자전거 국내 완주</td><td><button class="listCompleteBtn">완료</button></td>
								</tr>
								<tr>
									<td><input type="checkbox"></td><td>패러글라이딩 타보기</td><td><button class="listCompleteBtn">완료</button></td>
								</tr>
								<!-- 프론트용 임시 끝 -->
								<%-- <c:forEach var="mybcklist" items="${ mybucketList }">
									<tr>
										<td><input type="checkbox" name="mybucketlist" value="${mybcklist.mybkListNo }"></td>
										<td>${ mybcklist.mybkListWrite }</td>
										<td><button id="listCompleteBtn">완료</button></td>
								</c:forEach> 백엔드때 사용 --%>
						</table>
					</div>
				</section>
				<hr>
				<section>
					<div id="combucketlist">
						<div id="combucketlistTitle">
							<b>모두의 버킷리스트</b>
							<span><input type="checkbox" name="combucketlistView" value="complete">완료 리스트 보기
							<input type="checkbox" name="combucketlistView" value="notcomplete">미완료 리스트 보기</span>
						</div>
						<table id="mybucketlistTable" border="1">
								<tr>
									<th class="comlisttable1"><input type="button" id="deletebucketBtn" value="삭제"></th>
									<th class="comlisttable2">내용</th>
									<th class="comlisttable3">상세정보 보기</th>
									<th class="comlisttable4">완료</th>
								</tr>
								<!-- 프론트용 임시 시작 -->
								<tr> 
									<td><input type="checkbox"></td><td>유럽 여행 가기</td><td><button class="combkdetailView">상세정보 보기</button></td><td><button class="listCompleteBtn">완료</button></td>
								</tr>
								<tr>
									<td><input type="checkbox"></td><td>오지 탐험</td><td><button class="combkdetailView">상세정보 보기</button></td><td><button class="listCompleteBtn">완료</button></td>
								</tr>
								<tr>
									<td><input type="checkbox"></td><td>스카이 다이빙 해보기</td><td><button class="combkdetailView">상세정보 보기</button></td><td><button class="listCompleteBtn">완료</button></td>
								</tr>
								<!-- 프론트용 임시 끝 -->
								<%-- <c:forEach var="combcklist" items="${ combucketList }">
									<tr>
										<td><input type="checkbox" name="combucketlist" value="${combcklist.combkListNo }"></td>
										<td>${ combcklist.mybkListWrite }</td>
										<td><button class="combkdetailView">상세정보 보기</button></td>
										<td><button id="listCompleteBtn">완료</button></td>
								</c:forEach> 백엔드때 사용 --%>
						</table>
					</div> <br>
				</section>
			</div>
		</div>
		<!--  bottom --> 
		<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
	</body>
</html>