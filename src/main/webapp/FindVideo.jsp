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
<title>Find Videos</title>
</head>
<body>
 <div class="container theme-showcase" role="main">
	<!-- <form action="findvideos" method="post"> -->
	<!-- <div class="">
		<h1>Explore Trends</h1>
	</div> -->
	<nav class="navbar navbar-expand-lg navbar-info fixed-top bg-light">
		<div class="container-fluid">
			<span class="fs-4" style="margin-right: 2%;font-size:x-large" ><b>YouTubeTrends</b></span>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				 <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				  	<li class="nav-item">
			        	<a href="findvideos" class="nav-link disabled" aria-current="page"><b>Find Videos</b></a>
			          <!-- <a class="nav-link active" aria-current="page" href="#">Home</a> -->
			        </li>
			        <li class="nav-item">
			        	<a href="videocreate" class="nav-link" aria-current="page"><b>Create Video</b></a>
			          <!-- <a class="nav-link active" aria-current="page" href="#">Home</a> -->
			        </li>
			        <li class="nav-item">
			        	<a href="findhottest" class="nav-link"><b>Hottest Video</b> </a>
			        </li>
			       	<li class="nav-item">
			        	<a href="findoptimaladstime" class="nav-link"><b>Optimal Ads Time</b></a>
			        </li>
		        </ul>
			</div>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		     </button>
			<form class="d-flex" action="findvideos" method="post">
					<!-- <label for="title">title</label> -->
				<input id="title" name="title" placeholder="Search videos by title" class="form-control me-2" style="margin-right: 4px;" type="search" aria-label="Search" value="${fn:escapeXml(param.title)}" />
				<button type="submit" class="btn btn-outline-success">Search</button>
			</form>
		</div>
	</nav>
		
	<!-- </form> -->
	<!-- <button type="button" class="btn btn-primary"><a href="videocreate">Create Video</a></button> -->
	<!-- <div id="videoCreate">
		<a href="videocreate" class="btn btn-success">Create Video</a>
		<br/>
		<br/><br/>
		<a href="findhottest" class="btn btn-info">Hottest Video </a>
		<br/>
		<br/><br/>
		<a href="findoptimaladstime" class="btn btn-warning">Optimal Ads Time</a>
	</div>
	<br/> -->
	<div class="alert alert-light" role="alert">
		<span id="successMessage">${messages.success}</span>
	</div>
	<h3>Matching Video</h3>
      <table class="table table-striped">
            <thead><tr>
                <th>Title</th>
                <th>PublishTime</th>
                <th>Tags</th>
                <th>Views</th>
                <th>Dislikes</th>
                <th>Likes</th>
                <th>Delete Video</th>
                <th>Update Video</th>
            </tr></thead>
            <c:forEach items="${videos}" var="videos" >
                 <tbody><tr>
                    <td><c:out value="${videos.getTitle()}" /></td>
                    <td><c:out value="${videos.getPublishTime()}" /></td>
                    <td><c:out value="${videos.getTags()}" /></td>
                       <td><c:out value="${videos.getViews()}" /></td>
                    <td><c:out value="${videos.getDislikes()}" /></td>
                    <%-- <td><c:out value="${videos.getThumbnailLink()}" /></td> --%>
                    <td><a href="videolikes?videoId=<c:out value="${videos.getVideoId()}"/>">Likes</a></td>
                    <td><a href="videodelete?title=<c:out value="${videos.getTitle()}"/>">Delete</a></td>
                    <td><a href="videoupdate?title=<c:out value="${videos.getTitle()}"/>">Update</a></td>
                </tr></tbody>
            </c:forEach>
       </table>
     </div>
    <!-- Bootstrap -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
