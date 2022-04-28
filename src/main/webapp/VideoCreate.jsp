<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Create a Video</title>
</head>
<body>
<div class="container theme-showcase" role="main">
<!--     <div class="jumbotron">
        <h1>Create Video</h1>
    </div> -->
    <nav class="navbar navbar-expand-lg navbar-info fixed-top bg-light">
		<div class="container-fluid">
			<span class="fs-4" style="margin-right: 2%;font-size:x-large" ><b>YouTubeTrends</b></span>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				 <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				  	<li class="nav-item">
			        	<a href="findvideos" class="nav-link" aria-current="page"><b>Find Videos</b></a>
			          <!-- <a class="nav-link active" aria-current="page" href="#">Home</a> -->
			        </li>
			        <li class="nav-item">
			        	<a href="#" class="nav-link disabled" aria-current="page"><b>Create Video</b></a>
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
		</div>
	</nav>
    <form action="videocreate" method="post" style="margin-top: 7%">
		<div class="mb-3">
			<label for="TrendingDate" class="form-label">TrendingDate</label> 
			<input class="form-control" placeholder="yyyy-MM-dd" id="TrendingDate" name="TrendingDate">
		</div>
		<div class="mb-3">
			<label for="Title" class="form-label">Title</label> 
			<input type="text" class="form-control" id="Title" name="Title">
		</div>
		<div class="mb-3">
			<label for="PublishTime" class="form-label">PublishTime</label> 
			<input class="form-control"  placeholder="yyyy-MM-dd" id="PublishTime" name="PublishTime">
		</div>
		<div class="mb-3">
			<label for="Tags" class="form-label">Tags</label> 
			<input type="text" class="form-control" id="Tags" name="Tags">
		</div>
		<div class="mb-3">
			<label for="Views" class="form-label">Views</label> 
			<input class="form-control" id="Views" name="Views">
		</div>
		<div class="mb-3">
			<label for="CommentCount" class="form-label">CommentCount</label> 
			<input class="form-control" id="CommentCount" name="CommentCount">
		</div>
		<div class="mb-3">
			<label for="ThumbnailLink" class="form-label">ThumbnailLink</label> 
			<input type="text" class="form-control" id="ThumbnailLink" name="ThumbnailLink">
		</div>
		<div class="mb-3">
			<label for="Dislikes" class="form-label">Dislikes</label> 
			<input class="form-control" id="Dislikes" name="Dislikes">
		</div>
		<div class="mb-3">
			<label for="ThumbnailLink" class="form-label">ThumbnailLink</label> 
			<input type="text" class="form-control" id="ThumbnailLink" name="ThumbnailLink">
		</div>
		<div class="mb-3">
			<label for="CommentsDisabled" class="form-label">CommentsDisabled</label> 
			<input type="text" class="form-control" id="CommentsDisabled" name="CommentsDisabled">
		</div>
		<div class="mb-3">
			<label for="RatingsDisabled" class="form-label">RatingsDisabled</label> 
			<input type="text" class="form-control" id="RatingsDisabled" name="RatingsDisabled">
		</div>
		<div class="mb-3">
			<label for="VideoErrorOrRemoved" class="form-label">VideoErrorOrRemoved</label> 
			<input type="text" class="form-control" id="VideoErrorOrRemoved" name="VideoErrorOrRemoved">
		</div>
		<div class="mb-3">
			<label for="Description" class="form-label">Description</label> 
			<input type="text" class="form-control" id="Description" name=Description"">
		</div>
		<div class="mb-3">
			<label for="CategoryId" class="form-label">CategoryId</label> 
			<input class="form-control" id="CategoryId" name="CategoryId">
		</div>
		<div class="mb-3">
			<label for="CountryId" class="form-label">CountryId</label> 
			<input class="form-control" id="CountryId" name="CountryId">
		</div>
		<div class="mb-3">
			<label for="UserId" class="form-label">UserId</label> 
			<input class="form-control" id="UserId" name="UserId">
		</div>
		
		<input type="submit" class="btn btn-primary">
		<!-- <button type="submit" class="btn btn-primary">Submit</button> -->
			
		<!-- <p>
        <h2><label for="TrendingDate">TrendingDate (yyyy-mm-dd)</label></h2> <input
            id="TrendingDate" name="TrendingDate" value="">
        </p>
        <p>
        <h2><label for="Title">Title</label></h2> <input id="Title" name="Title"
                                                         value="">
        </p>
        <p>
        <h2><label for="PublishTime">PublishTime (yyyy-mm-dd)</label></h2> <input
            id="PublishTime" name="PublishTime" value="">
        </p> 
        <p>
        <h2><label for="Tags">Tags</label></h2> <input id="Tags" name="Tags" value="">
        </p>
        <p>
        <h2><label for="Views">Views</label></h2> <input id="Views" name="Views"
                                                         value="">
        </p>
        <p>
        <h2><label for="CommentCount">CommentCount</label></h2> <input
            id="CommentCount" name="CommentCount" value="">
        </p>
        <p>
        <h2><label for="ThumbnailLink">ThumbnailLink</label></h2> <input
            id="ThumbnailLink" name="ThumbnailLink" value="">
        </p>
        <p>
        <h2><label for="Dislikes">Dislikes</label></h2> <input id="Dislikes"
                                                               name="Dislikes" value="">
        </p>
        <p>
        <h2><label for="CommentsDisabled">CommentsDisabled</label></h2> <input
            id="CommentsDisabled" name="CommentsDisabled" value="">
        </p>
        <p>
        <h2><label for="RatingsDisabled">RatingsDisabled</label></h2> <input
            id="RatingsDisabled" name="RatingsDisabled" value="">
        </p>
        <p>
        <h2><label for="VideoErrorOrRemoved">VideoErrorOrRemoved</label></h2> <input
            id="VideoErrorOrRemoved" name="VideoErrorOrRemoved" value="">
        </p>
        <p>
        <h2><label for="Description">Description</label></h2>  <input id="Description"
                                                                      name="Description" value="">
        </p>
        <p>
        <h2><label for="CategoryId">CategoryId</label></h2>  <input id="CategoryId"
                                                                    name="CategoryId" value="">
        </p>
        <p>
        <h2><label for="CountryId">CountryId</label></h2>  <input id="CountryId"
                                                                  name="CountryId" value="">
        </p>
        <p>
        <h2><label for="UserId">UserId</label></h2>  <input id="UserId" name="UserId"
                                                            value="">
        </p>
        <p>
            <input type="submit" class="btn btn-lg btn-primary">
        </p>-->
    </form>
    <br/>
    <br/>
    <p>
    <div class="alert alert-success" role="alert">
        <span id="successMessage">${messages.success}</span>
    </div>
    </p>
</div>

<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

</body>
</html>