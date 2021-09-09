<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <form method="post" action="executar_inserir.jsp">
            <h1>Cadastro de cliente</h1>
            <br>
            <label>Nome: </label>
            <input type="text" name="nome" required=""/>
            <br><br>
            <label>Email: </label>
            <input type="text" name="email" required=""/>
            <br><br>
            <input type="submit" value="ENVIAR"/>
            <br><br><br><br>
        </form>
        
        <h1>Menu</h1> 
        <input type="button" value="Mostrar DB" onclick="window.location='pag_mostrar.jsp'" >
        
    </body>
</html>
