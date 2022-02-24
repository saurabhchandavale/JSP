<html>

<head><title>Confirmation</title></head>

<%
	// read form data
	String favLang = request.getParameter("favoritelanguage");

	// create the cookie
	Cookie theCookie = new Cookie("myApp.favoritelanguage", favLang);
	
	// set the life span ... total number of seconds (yuk!)
	theCookie.setMaxAge(60*60*24*365);    // <-- for one year
	
	// send cookie to browser
	response.addCookie(theCookie);
%>
<body>

	Thanks! We set your favorite language to: ${param.favoriteLanguage}
	
	<br/><br/>
	
	<a href="cookiehome.jsp">Return to homepage.</a>
	
</body>

</html>

