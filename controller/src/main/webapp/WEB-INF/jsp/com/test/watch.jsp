<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.min.js" integrity="sha512-OvBgP9A2JBgiRad/mM36mkzXSXaJE9BEIENnVEmeZdITvwT09xnxLtT4twkCa8m/loMbPHsvPl0T8lRGVBwjlQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/moment@2.29.3/moment.min.js"></script>
<script>
	moment.locale('ko');
    setInterval(() => console.log(moment().format("YYYY-MM-DD HH:mm:ss")), 1000);
    // setInterval(() => console.log(moment().format("HH") < 13 ? "좋은 아침!" : (moment().format("HH") < 19 ? "활기찬 오후!" : "잘자요!")), 1000);
	
    $(function() {
    	setInterval(() => $("#time").text(moment().format("YYYY-MM-DD HH:mm:ss")), 1000);
    	setInterval(() => $("#comment").text(moment().format("HH") < 12 ? "좋은 아침!" : (moment().format("HH") < 18 ? "활기찬 오후!" : "잘자요!")), 1000);
    })
</script>
</head>
<body>
    <h1 id="time"></h1>
    <h1 id="comment"></h1>
</body>
</html>