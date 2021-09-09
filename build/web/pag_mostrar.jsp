<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<%@page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar</title>
    </head>
    <body>
        
        <h1>Consultar DB</h1>
        
        <%
          
            out.print("<table border = '1'>");
            out.print("<tr>");
                
                out.print("<th>ID</th>");
                out.print("<th>Nome</th>");
                out.print("<th>Email</th>");
                
            out.print("</tr>");
            
            DAOCliente cli = new DAOCliente();
            ArrayList<Cliente> lista = cli.listarCliente();
            
            for (int i=0;i<lista.size();i++) {
            
            out.print("<tr>");
            
                out.print("<td>"+lista.get(i).getId()+"</td>");
                out.print("<td>"+lista.get(i).getNome()+"</td>");
                out.print("<td>"+lista.get(i).getEmail()+"</td>");  
                
            out.print("</tr>");
            
            }
            
            out.print("</table>");

        %>
        
        <br><br><br><br>
        
        <h1>MENU</h1>
        
        <input type="button" value="Voltar" onclick="window.location='index.jsp'" >
        
    </body>
</html>
