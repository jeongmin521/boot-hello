<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="<c:url value='/common.js'/>"></script>
<body>
	<form action ="add" method="post">
		A : <input id="a" name="a" type="number" placeholder="정수 입력" required><br/>
		B : <input id="b" name="b" type="number" placeholder="정수 입력" required><br/>
		result : <span id="result"></span><br/>
		<input type="submit" value="계산">
		<input type="button" id="jsonCalc" value="JSON 계산">
	</form>
<script type="text/javascript">
//const jsonCalc = document.querySelector("#jsonCalc");
jsonCalc.addEventListener("click", e => {
	e.preventDefault();
	const a = document.getElementById("a");
	const b = document.getElementById("b");
	const result = document.getElementById("result");
	
	
	myFetch("jsonCalc", {a:a.value, b:b.value}, json => {
		if(json.status == 0) {
			result.innerText = json.result;
		} else {
			alert(json.statusMessage);
		}
	});
});
</script>
</body>
</html>