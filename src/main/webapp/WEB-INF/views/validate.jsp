<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="StyleSheet"  href="WEB-INF/css/styles.css" type="text/css" > -->
<style type="text/css">
label.error {
	color: red;
	margin-left: 5px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#formvalidate").validate({
			rules:{
				username:{
					required:true,
					minlength: 6,
					maxlength: 10
				},
				password:{
					required: true,
					minlength: 6,
					maxlength: 10
				},
				age:{
					required: true,
					number: true,
					min: 18,
					max:40
				},
				email:{
					required: true,
					email: true
				}
			}
		});
	});
	
</script>
</head>
<body>
	<s:form id="formvalidate"
		action="${pageContext.request.contextPath}/jquery/save"
		commandName="user" method="post">
		<table border="0" cellpadding="2" cellspacing="2">
			<tr>
				<td>Username</td>
				<td><s:input path="username" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><s:password path="password" /></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><s:input path="age" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><s:input path="email" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><s:button>Submit</s:button></td>
			</tr>
		</table>
	</s:form>
</body>
</html>