<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>

<%
          
            try {
                
                
               Cliente cli = new Cliente();
               DAOCliente cld = new DAOCliente();
               int id = Integer.parseInt(request.getParameter("id"));
               String nome = request.getParameter("nome");
               String email = request.getParameter("email");
               
               if(id == 0 || nome.equals(null) || email.equals(null)) {
                   
                   response.sendRedirect("pag_mostrar.jsp");
                   
               }
               
               else {
                   
                   cli.setId(id);
                   cli.setNome(nome);
                   cli.setEmail(email);
                   cld.uptadeCliente(cli);
                   response.sendRedirect("pag_mostrar.jsp");
                   
               }
                
            }
            
            catch(Exception erro) {
                
                throw new RuntimeException("Erro executar update: ", erro);
                
            }

        %>