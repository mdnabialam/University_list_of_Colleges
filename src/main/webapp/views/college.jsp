<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Colleges</title>
<style>
	body {
	margin: 0px;
	font-size: 30px;
	background-color: olive;
	text-align: center;
}
input{
	font-size: 30px;
	border-radius: 10px;
}
.sub{
	margin-left: 90px;
}
.sub:hover{
	color: green;
	cursor: pointer;
}
a{
color: white;
background-color: black;
}
a:hover {
	color: black;
	background-color: white;
}
.sub:hover{
	border-color: red;
	
}
table {
	margin-left: 450px;
}
p{
	background-color: white;
}


</style>
</head>
<body>
	<h1>List of Colleges with University Name</h1>
	
	<p style=" text-align: center;">
		<font color='black'>${succMsg }</font>
	</p>
	<p>
		<font color='red'>${errMsg }</font>
	</p>
	<form:form action="saveCollege" modelAttribute="college" method="post">
	<div>
	<table style=" table-layout border: solid; ">
		
			<tr>
				<form:hidden path="collegeId"/>
				<td>University Id  :</td>
				<td><form:input path="UniversityId" placeholder="Enter University Number Id" /></td>
			</tr>
			
			
			<tr>
				<td>University Name	:</td>
				<td><form:input path="universityName" placeholder="Enter University Name"/></td>
			</tr>
			<tr>
				<td>University States	: </td>
				<td><form:input path="Universitystates" placeholder="Enter University states"/></td>
			</tr>
			
			<tr>
				<td>College Code	: </td>
				<td><form:input path="collegeCode" placeholder="Enter College Code"/></td>
			</tr>
			
			<tr>
				<td>College Name	:</td>
				<td><form:input path="collegeName" placeholder="Enter College Name"/></td>
			</tr>
			<tr  >
				<td><input type="submit" value="Save"class="sub"></td>
				<td><input type="reset" value="Rest"class="sub"></td>
			</tr>
			
			
	</table>
	</div>
	</form:form><br>
	
	
	<a href="" style="text-decoration:none">View All Colleges</a>
	
</body>
</html>