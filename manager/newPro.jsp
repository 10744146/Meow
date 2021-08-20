<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>

<html>
    <head><title>新增產品</title></head>
    <body>
    <%
	request.setCharacterEncoding("UTF-8");
		
		String proName=request.getParameter("proName");
		int proPrice=Integer.parseInt(request.getParameter("proPrice"));
		int proDis=Integer.parseInt(request.getParameter("proDis"));
		String proPic1=request.getParameter("proPic1");
		String proPic2=request.getParameter("proPic2");
		String proPic3=request.getParameter("proPic3");
		String proNote=request.getParameter("proNote");
		String stoNum=request.getParameter("stoNum");
		
		
	try {
        	Class.forName("com.mysql.jdbc.Driver");	
        try 
		{
        	String url="jdbc:mysql://localhost:3306/nocat";
			String sql="";
            Connection con=DriverManager.getConnection(url,"root","1234");   						
			if(con.isClosed())
				out.println("連線建立失敗");
			else
			{
				sql="USE nocat";
				con.createStatement().execute(sql);         
				
				sql="INSERT INTO products(proName,proPrice,proDis,proPic1,proPic2,proPic3,proNote,stoNum) VALUES ('"+proName+"','"+proPrice+"','"+proDis+"','"+proPic1+"','"+proPic2+"','"+proPic3+"','"+proNote+"','"+stoNum+"')";
				con.createStatement().execute(sql);  

				

			}
		   
           con.close();
        }            
        catch (SQLException sExec) {
           out.println("SQL錯誤!" + sExec.toString());
        }
    }       
    catch (ClassNotFoundException e) {
          out.println("class錯誤" + e.toString());
    }
		response.sendRedirect("m_product.jsp");
    %>
    </body>
</html>