<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Colleges</title>
</head>
<body>
	<h1>List of Colleges with University Name</h1>
	
	<p>
		<font color='green'>${succMsg }</font>
	</p>
	<p>
		<font color='red'>${errMsg }</font>
	</p>
	<form:form action="saveCollege" modelAttribute="college" method="post">
	
	<table style=" table-layout border: solid;">
		
			<tr>
				<form:hidden path="collegeId"/>
				<td>University Id  :</td>
				<td><form:input path="UniversityId"/></td>
			</tr>
			
			
			<tr>
				<td>University Name :</td>
				<td><form:input path="universityName"/></td>
			</tr>
			<tr>
				<td>University states : </td>
				<td><form:input path="Universitystates"/></td>
			</tr>
			
			<tr>
				<td>college Code </td>
				<td><form:input path="collegeCode"/></td>
			</tr>
			
			<tr>
				<td>college Name  </td>
				<td><form:input path="collegeName"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Save"></td>
				<td><input type="reset" value="Rest"></td>
			</tr>
			
	</table>
	
	</form:form>
	
	<a href="">View All Colleges</a>
	
</body>
</html>