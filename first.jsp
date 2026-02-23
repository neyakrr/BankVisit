<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JSP Scriptlet Example</h2>
<%
int a = 10;
int b = 20;
int sum = a+b;
out.println("sum: " +sum);%>

<hr>
<%
int age = 20;
if(age >= 18){
	out.println("Eligible to vote");
}else{
out.println("Not Eligible to vote");}
%>
<hr>
<form >

<%
String name = request.getParameter("x");
out.write(name);
%>
<hr>
<h2>JSP Declaration Example</h2>
<%!
int a =10;
int b=20;
int add(){
	return a+b;
}%>

<p>Result: <%= add()  %></p>
<h1>Using directive tag</h1>
<%= new Date() %>

<hr>

<%!
int factorial(int n){
	if(n==0)
	{
		return 1;
	}
	return n*factorial(n-1);
}%>


<%= "Factorial of 5 is: "+ factorial(4) %>
<br>
<br>

</body>
</html>