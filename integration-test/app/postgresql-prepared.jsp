<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="java.sql.*" %>
<%
    Class.forName("org.postgresql.Driver");
    Connection conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1/postgres", "postgres", "");
    String sql = "SELECT * FROM user";
    PreparedStatement stmt = conn.prepareStatement(sql);
    ResultSet rs = stmt.executeQuery();
    while (rs.next()) {
        out.println(rs.getString("user"));
    }
%>
