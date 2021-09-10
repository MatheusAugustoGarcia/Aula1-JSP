<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<%@page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Mostrar</title>
    </head>
    <body>
        
        <h1>Consultar DB</h1>
        
        <br><br><br>
        
        <form action="pag_mostrar.jsp" method="post">
         
            <label>Pesquisa por nome: </label>
            <input type="text" name="nome" />
            <input type="submit" value="Pesquisar" />
            
        </form>
        
        <div class="center">
        
        <%
          
            out.print("<table border = '1'>");
            out.print("<tr>");
                
                out.print("<th>ID</th>");
                out.print("<th>Nome</th>");
                out.print("<th>Email</th>");
                out.print("<th>Update</th>");
                out.print("<th>Delete</th>");
                
            out.print("</tr>");
            
            DAOCliente cli = new DAOCliente();
            
            if (request.getParameter("nome") == "" || request.getParameter("nome") == null) {
            
            ArrayList<Cliente> lista = cli.listarCliente();
            
            for (int i=0;i<lista.size();i++) {
            
            out.print("<tr>");
            
                out.print("<td>"+lista.get(i).getId()+"</td>");
                out.print("<td>"+lista.get(i).getNome()+"</td>");
                out.print("<td>"+lista.get(i).getEmail()+"</td>");
                out.print("<td><a href='pag_update.jsp?id="
                        + lista.get(i).getId()
                        + "&nome="+lista.get(i).getNome()
                        + "&email="+lista.get(i).getEmail()
                        +"'>Link</a></td>");
                out.print("<td><a href='pag_remover.jsp?id="
                        + lista.get(i).getId()
                        + "&nome="+lista.get(i).getNome()
                        +"'>Link</a></td>");
                              
            out.print("</tr>");
            
            }
            
            }
            
            else {
                
                ArrayList<Cliente> lista = cli.pesquisarNome(request.getParameter("nome"));
            
            for (int i=0;i<lista.size();i++) {
            
            out.print("<tr>");
            
                out.print("<td>"+lista.get(i).getId()+"</td>");
                out.print("<td>"+lista.get(i).getNome()+"</td>");
                out.print("<td>"+lista.get(i).getEmail()+"</td>");
                out.print("<td><a href='pag_update.jsp?id="
                        + lista.get(i).getId()
                        + "&nome="+lista.get(i).getNome()
                        + "&email="+lista.get(i).getEmail()
                        +"'>Link</a></td>");
                out.print("<td><a href='pag_remover.jsp?id="
                        + lista.get(i).getId()
                        + "&nome="+lista.get(i).getNome()
                        +"'>Link</a></td>");
                              
            out.print("</tr>");
            
            }
                           
            }
            
            out.print("</table>");

        %>
        
        </div>
        
        <h1>MENU</h1>
        
        <div class="center">
        
        <a class="button" href="index.jsp">Voltar</a>
        
        </div>  
        
    </body>
</html>
