<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!
</h1>
<p> <c:out value="$TomcatServerTime"></c:out>
<P>  게시판글을 불러온다고 예상하면: 현재 서버의 시간은  ${TomcatserverTime}. </P>
</body>
</html>
