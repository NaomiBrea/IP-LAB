<%@page import=”java.sql.*”%>
<%@page import=”java.io.*”%>
<%
out.println (“<html><body bgcolor=\”pink\”>”);
String title=request.getParameter (“title”);
Driver d=new oracle.jdbc.driver.OracleDriver ();
DriverManager.regiserDriver (d);
Connection con=
DriverManager.getConnection (“jdbc:oracle:thin:@localhost:1521:orcl”,”scott”,”tiger”);
Statement stmt=con.createStatement ();
String sqlstmt=”select * from book where title=”+title+””;
ResultSet rs=stmt.executeQuery (sqlstmt);
int flag=0;
while(rs.next())
{
out.println (“<div align=\”center\”>”);
out.println (“NAME :”+rs.getString(1)+”<br>”);
out.println (“EDITION:”+rs.getString(3)+”<br>”);
out.println (“BRAND:” +rs.getString(4)+”<br>”);
out.println (“COST :” +rs.getString(5)+”<br>”);
out.println (“</div>”);
flag=1;
  }
if(flag==0)
{
out.println(“SORRY INVALID ID TRY AGAIN ID <br><br>”);
out.println(“<a href=\”/tr1/catalog.html\”>press HERE to RETRY </a>”);
}
out.println (“</body></html>”);
%>
