<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remoção</title>
    </head>
    <body>
        <form method="post" action="executar_remover.jsp">
            <h1>Remover Cliente</h1>
            <br>
            <label>ID: </label>
            <input type="text" name="id" required=""/>
            <br><br>
            <input type="submit" value="Remover"/>
            <br><br><br><br>
        </form>
        
        <h1>Menu</h1> 
        <input type="button" value="Voltar" onclick="window.location='index.jsp'" >
        
    </body>
</html>
