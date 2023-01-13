<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>naverMaps</title>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=x6albodpw0"></script>
</head>
<body>
	<div id="map" style="width:100%; height:800px;"></div>
	<script>
		var map = new naver.maps.Map('map', {
		    center: new naver.maps.LatLng(37.5112, 127.0981), // 잠실 롯데월드를 중심으로 하는 지도
		    zoom: 15
		});
		
		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(37.5112, 127.0981),
		    map: map
		});
	</script>
</body>
</html>
