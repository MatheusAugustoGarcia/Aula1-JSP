<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Remoção</title>
    </head>
    <body>
        
        <h1>Remover Cliente</h1>
        
        <div class="center">
        
        <form method="post" action="executar_remover.jsp">
            <label>ID: </label>
            <input type="text" name="id" value="<%=request.getParameter("id")%>" readonly/>
            <br><br>
            <label>Nome: </label>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>" readonly/>
            <br><br>
            <input type="submit" value="Remover"/>
        </form>
        
        </div>    
            
        <h1>Menu</h1> 
        
        <div class="center">
            
        <a class="button" href="pag_mostrar.jsp">Voltar</a>
        
        </div>
        
    </body>
</html>
