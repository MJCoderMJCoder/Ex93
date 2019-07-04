<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>DataBaseTest</title>
</head>
<body>
	<%
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "";
		
		//加载驱动程序
		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		} catch (ClassNotFoundException e) {}
		
		//建立数据连接
		try {
			con = DriverManager.getConnection("jdbc:odbc:student", "", "");
			stmt = con.createStatement();
		} catch(SQLException ee) {}
		
		//建立表
		sql = "create table student2(id text(20) primary key, name text(20), gender text(2),"+
		"address text(50), phone text(20), major text(30))";
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//添加数据
		sql = "insert into student2 values('2012001', '张三', '男', '太原市迎泽西大街79号', '13803511208', '软件工程')";
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//获取并浏览数据
		sql = "select * from student2";
		try {
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				out.println(rs.getString("id"));
				out.println("\t" + rs.getString("name"));
				out.println("\t" + rs.getString("gender"));
				out.println("\t" + rs.getString("address"));
				out.println("\t" + rs.getString("phone"));
				out.println("\t" + rs.getString("major"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//释放资源
		try{
			rs.close();
			stmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	%>
</body>
</html>