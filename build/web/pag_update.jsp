<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualização</title>
    </head>
    <body>
        <form method="post" action="executar_update.jsp">
            <h1>Atualizar Cliente</h1>
            <br>
            <label>ID: </label>
            <input type="text" name="id" required=""/>
            <br><br>
            <label>Nome: </label>
            <input type="text" name="nome" required=""/>
            <br><br>
            <label>Email: </label>
            <input type="text" name="email" required=""/>
            <br><br>
            <input type="submit" value="Atualizar"/>
            <br><br><br><br>
        </form>
        
        <h1>Menu</h1> 
        <input type="button" value="Voltar" onclick="window.location='index.jsp'" >
        
    </body>
</html>
