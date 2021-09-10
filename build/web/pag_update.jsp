<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="sexystyle.css" rel="stylesheet" type="text/css"/>
        <title>Atualização</title>
    </head>
    <body>
        
        <div class="Header-container center">
        
        <h1>Atualizar Cliente</h1>
        
        </div>
        
        <div class="Body-container center">
        
        <form method="post" action="executar_update.jsp">

            <label>ID: </label>
            <input type="text" name="id" value="<%=request.getParameter("id")%>" readonly/>
            <br><br>
            <label>Nome: </label>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/>
            <br><br>
            <label>Email: </label>
            <input type="text" name="email" value="<%=request.getParameter("email")%>"/>
            <br><br>
            <input class="button" type="submit" value="Atualizar"/>
            
        </form>
        
        </div>    
          
        <div class="Header-container center">
            
        <h1>Menu</h1> 
        
        </div>
        
        <div class="Body-container center">
            
        <a class="button" href="pag_mostrar.jsp">Voltar</a>
        
        </div>
        
    </body>
</html>
