<html>
<head><title>Student Confirmation Title</title></head>
<body>

The student is conformed: ${param.firstname } ${param.lastname }
<br/><br/>
The student's country is: ${param.country }
<br/><br/>
Students favorite language is: ${param.favoritelanguage }
<br/><br/>
<ul>
<%
String[] langs = request.getParameterValues("favoritelanguage");
for(String tempLang : langs){
	out.println("<li>" + tempLang + "</li>");
}
%>
</ul>
</body>
</html>