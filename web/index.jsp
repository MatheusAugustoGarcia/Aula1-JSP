<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Index</title>
    </head>
    <body>
        
        
        <h1>Inserir Cliente</h1>
        
        <div class="center">
        
        <form method="post" action="executar_inserir.jsp">
            <label>Nome: </label>
            <input type="text" name="nome" required=""/>
            <br><br>
            <label>Email: </label>
            <input type="text" name="email" required=""/>
            <br><br>
            <input type="submit" value="ENVIAR"/>
        </form>
        
        </div>    
            
        <h1>Menu</h1> 
        
        <div class="center">
        
        <a class="button" href="pag_mostrar.jsp">Consultar DB</a>
        
        </div>
        
    </body>
</html>
