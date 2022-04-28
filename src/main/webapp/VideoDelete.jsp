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
    <title>Delete a Video</title>
</head>
<body>
<div class="container theme-showcase" role="main">
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
	<form action="videodelete" method="post">
		<section class="py-3 text-center container">
			<div class="row py-lg-2" style="margin-top:7%">
				<div class="col-lg-6 col-md-8 mx-auto">
					<h1 class="fw-light">${messages.title}</h1>
					<c:if test="${messages.disableSubmit}"></c:if>
		        	<p class="lead text-muted">
						<label for="title">Title</label> 
					</p>
		            <input id="title" name="title" class="form-control" value="${fn:escapeXml(param.username)}">
		        <!-- </div> -->
		        <!-- </p> -->
			        <p>
						<span id="submitButton">
			                  <c:if test="${messages.disableSubmit}"></c:if>
							<input type="submit" class="btn btn-primary my-2">
						</span>
			        </p>
				</div>
			</div>
			<!-- <p> -->
      <!--   <div> -->
        	
		</section>
	   <%--  <div class="jumbotron">
	        <h1>${messages.title}</h1>
	    </div> --%>
    
        
    </form>
    <br/><br/>
</div>

<!-- Bootstrap -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

</body>
</html>