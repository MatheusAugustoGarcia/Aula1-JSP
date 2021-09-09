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
            <input type="text" name="id" value="<%=request.getParameter("id")%>" readonly/>
            <br><br>
            <label>Nome: </label>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>" readonly/>
            <br><br>
            <input type="submit" value="Remover"/>
            <br><br><br><br>
        </form>
        
        <h1>Menu</h1> 
        <input type="button" value="Voltar" onclick="window.location='pag_mostrar.jsp'" >
        
    </body>
</html>
