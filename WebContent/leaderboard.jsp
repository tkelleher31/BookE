<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="styles/leaderboardStyles.css">

<link href="https://fonts.googleapis.com/css?family=Asap"
	rel="stylesheet">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<header> <nav
	class="navbar navbar-expand-sm justify-content-between fixed-top">

<div class="logo">
	<img src="images/Logo-01.png" class="navbar-brand">
</div>

<ul class="navbar-nav collapse navbar-collapse">

	<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
	<li class="nav-item"><a class="nav-link" href="profile.jsp">Profile</a></li>
	<li class="nav-item"><a class="nav-link" href="leaderBoard.jsp">Leaderboard</a></li>
</ul>


<form action="UserController" method="post">
    <input type="submit" name="action" value="Sign-Out"/>
</form>
</nav> </header>
<body>

	<div class="container">
		<h2 align="center">Leaderboard</h2>

		<table class="table table-hover table-secondary table-striped">
			<thead>

				<tr>
					<th>Player</th>
					<th>Wins</th>
					<th>Loses</th>
					<th>Win Ratio</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
					
						<td><c:out value="${user.userName}"></c:out></td>
						<td><c:out value="${user.wins}"></c:out></td>
						<td><c:out value="${user.loses}"></c:out></td>
						<td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${user.wins/(user.wins + user.loses)}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>