<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Find a Video</title>
</head>
<body>
	<form action="findvideos" method="post">
		<h1>Search for a Video by Title</h1>
		<p>
			<label for="title">title</label>
			<input id="title" name="title" value="${fn:escapeXml(param.title)}">
		</p>
		<p>
			<input type="submit">
			<br/><br/><br/>
			<span id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
	<br/>
	<div id="videoCreate"><a href="videocreate">Create Video</a></div>
	<br/>
	<h1>Matching Video</h1>
        <table border="1">
            <tr>
                <th>Title</th>
                <th>PublishTime</th>
                <th>Tags</th>
                <th>Views</th>
                <th>dislikes</th>
                <th>thumbnailLink</th>
                <th>Delete Video</th>
                <th>Update Video</th>
            </tr>
            <c:forEach items="${videos}" var="videos" >
                <tr>
                    <td><c:out value="${videos.getTitle()}" /></td>
                    <td><c:out value="${videos.getPublishTime()}" /></td>
                    <td><c:out value="${videos.getTags()}" /></td>
                       <td><c:out value="${videos.getViews()}" /></td>
                    <td><c:out value="${videos.getDislikes()}" /></td>
                    <td><c:out value="${videos.getThumbnailLink()}" /></td>
                    <td><a href="userdelete?username=<c:out value="${videos.getVideoId()}"/>">Delete</a></td>
                    <td><a href="userupdate?username=<c:out value="${videos.getVideoId()}"/>">Update</a></td>
                </tr>
            </c:forEach>
       </table>
</body>
</html>
