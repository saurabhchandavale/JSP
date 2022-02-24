<html>
<body>
<h3>Training Portal</h3>
<!-- read the favorite programming language cookie -->
<%
//the default if there are no cookie
String favlang ="Java";

//get the cookies from the browser request
Cookie[] theCookies =request.getCookies();

//find your favorite language cookie
if(theCookies != null){
	for(Cookie tempCookie : theCookies){
		if("myApp.favoritelanguage".equals(tempCookie.getName())){
			favlang=tempCookie.getValue();
			break;
		}
	}
}

%>

<!-- now show a personalized page  -->
<h4>New Books for <%= favlang %></h4>
<ul>
<li>Book Book</li>
<li>Book Book</li>
<li>Book Book</li>
</ul>

<h4>New Jobs for <%= favlang %></h4>
<ul>
<li>Book Book</li>
<li>Book Book</li>
<li>Book Book</li>
</ul>

<h4>Latest reports for <%= favlang %></h4>
<ul>
<li>Book Book</li>
<li>Book Book</li>
<li>Book Book</li>
</ul>
<hr>
<a href="cookies.html">Personalize this page</a>

</body>
</html>