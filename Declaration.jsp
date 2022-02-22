<html>
<body>
<h3>Example of declaration </h3><br>

<%! String makeItLower(String data){
	return data.toLowerCase();
}
%><br>
Lower case "Hello World" : <%= makeItLower("Hello World") %>
</body>
</html>