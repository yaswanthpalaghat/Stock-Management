<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://unpkg.com/jspdf@latest/dist/jspdf.min.js">
var doc = new jsPDF()

doc.text('Hello world!', 10, 10)
doc.save('a4.pdf')
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
  <form>
  <input id="date" type="date" value="2017-06-01">
  <button>Submit</button>
</form>
</form>
</body>
</html>