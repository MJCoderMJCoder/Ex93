<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>First Page</title>
</head>
<body>
	<h2>注释测试：</h2>
	<!-- 该注释内容在客户端浏览器里是看不见的；但是查看源代码时，客户端可以看到这些注释内容。 -->
	<%-- 在客户端通过查看源代码时看不到注释中的内容 --%>
	<hr/>
	
	<h3>
	Today is:
	<%= new java.util.Date() %>
	</h3>
	<hr/>
	
	<h2>声明部分：</h2>
	<%! int count = 0; %>
	<%
		//将count的值输出后再加1
		out.println(count++);
	%>
	<hr/>
	
	<h3>JSP表达式的作用是将其里面内容所运算的结果输出（JSP表达式里的内容一定是字符串类型）</h3>
	<%
		String msg = "欢迎访问";
	%>
	<br>
	<%= msg %>
	<hr/>
	
	<h2>Java脚本段：</h2>
	<%
		String str= "hello";
		out.println(str);
	%>
	<hr/>
</body>
</html>