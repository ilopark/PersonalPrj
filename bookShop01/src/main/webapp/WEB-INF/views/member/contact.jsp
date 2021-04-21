<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	 isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
	#support{
		margin: 100px; 20px; 0px; 20px;
		width: 100%;
		text-align: center;
	}
	
	
	hr{
		height:3px;
	}
</style>
</head>
<body>
<div class="container">
	<section id="support" class="cau">
		<hr width ="15%" color="black" >
		<h3>ABOUT US</h3>
	</section>
		<h4>
			<strong>▌ 주소 및 연락처</strong><br />
		</h4>
		<br />
		<br />
		<h5>
			업체명
			<p>- SONGPRING</p>
		</h5><br />
		<br />
		<br />
		<h5>
			주소
			<p>- 서울특별시 강남구 테헤란로 124 삼원타워 5층</p>
		</h5><br />
		<br />
		<br />
		<h5>
			<strong>TEL</strong>
			<p>- 02) 000- 0000</p>
			<p>- 상담시간 : 평일 09:00 ~ 18:30</p>
		</h5><br />
		<br />
		<br />
		<h5>
			<strong>FAX</strong>
			<p>- 02) 000- 0000</p>
		</h5><br />
		<br />
		<br />
		<h5>
			<strong>E-mail</strong>
			<p>- park3650@naver.com</p>
		</h5><br />
		<br />
		<br />
		<h4>
			<strong>▌ 오시는 길</strong><br />
		</h4><br />
		<br />
		<br />
		<p><strong>SONGPRING</strong>에 찾아오시는 방법은 아래와 같습니다.</p><br />
		<br />
		<br />
		<h5>
			<strong>지하철 이용시</strong>
			<p>- 2호선 , 신분당선 : 강남역 1번 출구 (도보 600m, 삼원타워) </p>
		</h5><br />
		<br />
		<br />
		<div id="map" style="width:100%;height:400px;" ></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4bfb90a1dd1458dd205c08437f7b3176"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(37.498812056368266, 127.03172679024351), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(37.498812056368266, 127.03172679024351); 
			
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			// marker.setMap(null);    
		</script>
		<br />
		<!-- 
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
		
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(37.499026, 127.031549),
				level: 3
			};
	
			var map = new kakao.maps.Map(container, options);
			
			</script>
		 -->
</div><br />
</body>
</html>