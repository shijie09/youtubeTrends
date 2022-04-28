<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>Find Optimal Ads Time</title>
</head>
<body>
 <div class="container theme-showcase" role="main">
	<form action="findoptimaladstime" method="post">
	<nav class="navbar navbar-expand-lg navbar-info fixed-top bg-light">
		<div class="container-fluid">
			<span class="fs-4" style="margin-right: 2%;font-size:x-large" ><b>YouTubeTrends</b></span>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				 <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				  	<li class="nav-item">
			        	<a href="findvideos" class="nav-link" aria-current="page"><b>Find Videos</b></a>
			        </li>
			        <li class="nav-item">
			        	<a href="videocreate" class="nav-link" aria-current="page"><b>Create Video</b></a>
			        </li>
			        <li class="nav-item">
			        	<a href="findhottest" class="nav-link"><b>Hottest Video</b> </a>
			        </li>
			       	<li class="nav-item">
			        	<a href="#" class="nav-link disabled"><b>Optimal Ads Time</b></a>
			        </li>
		        </ul>
			</div>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		     </button>
		</div>
	</nav>
	<!-- <div class="jumbotron">
		<h1>List the Top N Optimal Ads Time</h1>
		<h4>(Based on the Views of the Video Table)</h4>
		<h3>If you want to cooperate with the Video Creator, you can find the contact information below .</h3>
	</div> -->
	<section class="py-3 text-center container">
		<div class="row py-lg-2" style="margin-top:7%">
			<div class="col-lg-6 col-md-8 mx-auto">
				<h1 class="fw-light">The Top N Optimal Ads Time</h1>
				<p class="lead text-muted">
				List the Top N Optimal Ads Time Based on the Views of the Video Table.
				If you want to cooperate with the Video Creator, you can find the contact information below .
				</p>
				<p class="lead text-muted">
				<label for="topN"><b>Which rank videos information do you want?</b></label> 
				</p>
				<input class="form-control" id="topN" value="${fn:escapeXml(param.time)}">
				<input type="submit" class="btn btn-primary my-2">
			</div>
		</div>
	</section>
		<%--  <label for="topN">Which rank videos information do you want? </label>
			<input id="topN" name="topN" value="${fn:escapeXml(param.time)}"> 
		 <div class="mb-3">
			<label for="topN" class="form-label">Which rank videos information do you want?</label> 
			<input type="email" class="form-control" id="topN" value="${fn:escapeXml(param.time)}">
		</div>
		<p>
			<input type="submit" class="btn btn-primary">
			<br/><br/>
		</p> --%> 
	
	<div class="alert alert-info" role="alert">
		<span id="successMessage">${messages.success}</span>
	</div>
	<!-- <h3>Top N Ads Time(Including Video Info)</h3> -->
      <table class="table table-striped">
            <thead><tr>
            	<th>Views</th>
                <th>PublishTime</th>
                <th>Title</th>
                <th>Tags</th>
                <th>thumbnailLink</th>
            </tr></thead>
            <c:forEach items="${videos}" var="videos" >
                 <tbody><tr>
                 	<td><c:out value="${videos.getViews()}" /></td>
                 	<td><c:out value="${videos.getPublishTime()}" /></td>
                    <td><c:out value="${videos.getTitle()}" /></td>
                    <td><c:out value="${videos.getTags()}" /></td>
                    <td><c:out value="${videos.getThumbnailLink()}" /></td>
                </tr></tbody>
            </c:forEach>
       </table>
       </form>
     </div>
    <!-- Bootstrap -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
