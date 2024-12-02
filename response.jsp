<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseCon.DbConnection"%>
<%

    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    String mac1 =request.getParameter("id");
   
    int i = st.executeUpdate("update file_view set status='Yes' where id = '" + mac1 + "'");
    if (i != 0) {
        response.sendRedirect("user_req.jsp?msg=successfully...");
    } else {
        response.sendRedirect("user_req.jsp?msg=Error");
    }
%>
 