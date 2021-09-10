<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="sexystyle.css" rel="stylesheet" type="text/css"/>
        <title>Index</title>
    </head>
    <body>
        
        <div class="Header-container center">
        <h1>Inserir Cliente</h1>
        </div>
        
        <div class="Body-container center">
        
        <form method="post" action="executar_inserir.jsp">
            <label>Nome: </label>
            <input type="text" name="nome" required=""/>
            <br><br>
            <label>Email: </label>
            <input type="text" name="email" required=""/>
            <br><br>
            <input class="button" type="submit" value="ENVIAR"/>
        </form>
        
        </div>    
           
        <div class="Header-container center">
        
        <h1>Menu</h1> 
        
        </div>
        
        <div class="Header-container center">
           
        <a class="button" href="pag_mostrar.jsp">Consultar DB</a>
        
        </div>
        
    </body>
</html>
