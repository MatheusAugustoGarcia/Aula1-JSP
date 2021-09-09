<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>

<%
          
            try {
                
                
               Cliente cli = new Cliente();
               DAOCliente cld = new DAOCliente();
               int id = Integer.parseInt(request.getParameter("id"));
               
               if(id == 0) {
                   
                   response.sendRedirect("pag_mostrar.jsp");
                   
               }
               
               else {
                   
                   cli.setId(id);
                   cld.removerCliente(cli);
                   response.sendRedirect("pag_mostrar.jsp");
                   
               }
                
            }
            
            catch(Exception erro) {
                
                throw new RuntimeException("Erro executar remover: ", erro);
                
            }

        %>