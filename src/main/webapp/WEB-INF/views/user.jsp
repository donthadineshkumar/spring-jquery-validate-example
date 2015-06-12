<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Details</title>
</head>
<body>
<table>
		<tr>
			<th>username</th> <td>${user.username}</td>
	   </tr>
	   		<tr>
			<th>password</th> <td>${user.password}</td>
	   </tr>
	   	<tr>
			<th>age</th> <td>${user.age}</td>
	   </tr>
	   <tr>
			<th>email</th> <td>${user.email}</td>
	   </tr>
</table>
</body>
</html>