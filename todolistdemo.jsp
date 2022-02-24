<%@ page import="java.util.*" %>
<html>
<body>
<!-- step 1 create form -->
<form action="todolistdemo.jsp">
Add new Items: <input type="text" name="theitem" />
<input type="submit" value="Submit" />
</form>
<br>
Item entered:  <%=request.getParameter("theitem") %>
<!-- step 2 add new items to do list -->
<%
	// get the TO DO items from the session
	List<String> items = (List<String>) session.getAttribute("myToDoList");

	// if the TO DO items doesn't exist, then create a new one
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	
	// see if there is form data to add
	String theitem = request.getParameter("theitem");
	if (theitem != null) {
		items.add(theitem);
	}
%>

<!-- Step 3: Display all "To Do" item from session -->
<hr>
<b>To List Items:</b> <br/>

<ol>
<%
	for (String temp : items) {
		out.println("<li>" + temp + "</li>");
	}
%>
</ol>

</body>

</html>

