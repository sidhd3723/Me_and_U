<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>후기 등록 페이지</title>
		<!-- 헤드부분 임포트  -->
		<c:import url="/WEB-INF/views/layout/head.jsp" />
		<!-- 서머노트 js 및 css 추가 -->
		<script src="<c:url value='/js/summernote/summernote-lite.js' /> "></script>
		<script src="<c:url value='/js/summernote/lang/summernote-ko-KR.js' /> "></script>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/summernote/summernote-lite.css' />"> 
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/review/reviewRegister.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
		<script src="<c:url value='/js/review/reviewRegister.js' />"></script>
		
		<script>
		//미리 보여줄 이미지의 크기를 조절해주는 함수 
		 function imgSize(which){
    		var width = eval("document."+which+".width");
  		    var height = eval("document."+which+".height");
  		    var temp = 0; 
 		    var max_width= 350;   // 이미지의 가로 최대 크기    
 		    var max_height = 350; // 이미지의 세로 최대 크기
    
  		  	if ( width > max_width ) {  // 업로드하는 이미지의 width가 max_width보다 크다면 너비를 width으로 맞우고 비율에 맞춰 세로값을 변경한다.      
  		   	   height = height/(width / max_width);
 		 	   eval("document."+which+".width = max_width");     
 			   eval("document."+which+".height = height");
    		   width = max_width;     
  			}
 
   		 	if( height > max_height ) {
   	 	  	  width = width/(height / max_height);
    	 	  eval(document.getElementById(which).width = width);
     		  eval(document.getElementById(which).height = max_height);
  			}
		}
		</script>
		
	</head>
	<body>
		<!-- wrap -->
		<div id="wrap">
			<!-- Top -->			
			<c:import url="/WEB-INF/views/layout/top.jsp" /> 
			<!--// Top -->
			<!-- review_warp -->
			<div id="review_warp">
			<!-- 제목 -->
			<div class="reviewBox">	
				<div class="review-top">
					
					<div class="toptitle">Review</div>
					<div class="subTitle">BUCKETLIST & 모임 리뷰</div>
				</div>
			</div>	
				<!-- 입력창  -->
				<div name="input_gatherInfo" id="input_gatherInfo">
					<hr id="line">
					
					<form id="regGather_frm" class="regGather_frm" method="post" action="<c:url value='jsp/review/reviewRegister'/>" enctype="multipart/form-data">
						<table id="gatherInfo_tbl" class="gatherInfo_tbl">
							<tr>
								<!-- 이미지 미리보기 영역-->
								<td rowspan="8">
									<img id="preview" src="/images/thumbnail.png" width="350" height="350">
								</td>
							</tr>
							<!-- 높이를 맞추기 위한 빈 행 -->
							<tr>
								
							</tr>
							<!-- 높이를 맞추기 위한 빈 행 -->
							<tr>
								
							</tr>
							<tr>
								<th id="line" >Title.</th>
								<td colspan="3">
									<input type="text" class="gatherInfo_inputLong"  name="reviewTitle" id="reviewTitle">
								</td>
							</tr>
							<tr>
								<th id="line">Write.</th>
								<td colspan="3" rowspan="3">
									<textarea id="summernote" name="reviewWrite"class="gatherInfo_inputLong2"> </textarea>
									<!-- <input type="text" class="gatherInfo_inputLong2" placeholder="한줄평 입력" name="reviewWrite" id="reviewWrite"> -->
									<%-- <input type="hidden" name="reviewNo" value="${review.reviewNo}"> --%>
								</td>
							</tr>
							
							
							<!-- 높이를 맞추기 위한 빈 행 -->
							<tr>
								
							</tr>
							
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th id="line">Category.</th>
								<td>
									<select id="reviewCtg" name="reviewCtg" class="reviewCt">
									<option value="전체">전체</option>
									<option value="여행">여행</option>
									<option value="운동">운동</option>
									<option value="음식">음식</option>
									<option value="문화">문화</option>
									<option value="음악">음악</option>
									<option value="기타">기타</option>
								</select>
								</td>
							</tr>
							<tr>
								<td>
									<!-- 이미지파일업로드 -->
									<div class="filebox">
										<label for="uploadFileOrigin">이미지 선택</label>
										<input type="file" id="uploadFileOrigin" name="uploadFileOrigin" value="이미지 선택">
									</div>
								</td>
							</tr>				
						</table>
						
						<!-- 이미지 사이즈를 조절해주는 함수 cf) 테이블 밖에 선언해주어야함 -->	
						<script>imgSize("img");</script>
						
						<div class="boxBtn">
						<input type="submit" id="submitBtn" class="submitBtn" value="등록">
						<input type="reset" id="resetBtn" class="resetBtn" value="취소">
						</div>
						
						<hr id="line">
						
					</form>
					<br>
				</div>
				<br>
			</div>
			<!-- /review_warp -->	
			<!-- Bottom -->
			<!-- footer -->
			<c:import url="/WEB-INF/views/layout/bottom.jsp" /> 
			<!-- //footer -->
			<!-- //Bottom -->
		</div>
		<!-- //wrap -->
	</body>
</html>
