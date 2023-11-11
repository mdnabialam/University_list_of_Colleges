<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View College</title>
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
	
		<script>
		$(document).ready(function(){
			$('#collegeID').DataTable({
				"pagingType" : "full_numbers"
			});
		});
	

		function deleteConfirm(){
			return confirm("Are you sure,you want to Delete ? ")
		}
	</script>	
</head>
<body>
		<h1>View College Here</h1>
		<a href="addCollege" style="text-decoration:none"> + Add New College Here</a>
		<br><br>
		
		<table border="1" id="collegeID">
			<thead>
		
				<tr>
					<th>S.No</th>
					<th>University Name</th>
					<th>University states</th>
					<th>College Code</th>
					<th>college Name</th>
					<th>ACTION</th>
				</tr>
			</thead>
			
				<tbody>
				
				
				<c:forEach items="${colleges}" var="c" varStatus="index">
						<tr>
							<td>${index.count}</td>
							<td>${c.UniversityId}</td>
							<td>${c.universityName}</td>
							<td>${c.Universitystates}</td>
							<td>${c.collegeCode}</td>
							<td>${c.collegeName}</td>
							
						</tr>
					</c:forEach>
				
				
				</tbody>
		
		
		
		</table>
		
		
</body>
</html>