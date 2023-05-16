<%@page import="com.emergentes.modelo.Libro"%>
<%
    Libro lib = (Libro) request.getAttribute("lib");
    int opc = Integer.parseInt(request.getParameter("opc"));
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=(opc == 0) ? "Nuevo " : "Editar "%>libro</h1>
        <form action="MainController?op=<%=(opc == 0) ? "nuevo " : "editar "%>" method="post">
            <input type='hidden' name='id' value='${lib.id}'>
            <table border="0">

                <tr>
                    <th>ISBN</th>
                    <th><input type='text' name='isbn' value='${lib.isbn}'></th>

                </tr>
                <tr>
                    <th>Titulo</th>
                    <th><input type='text' name='titulo' value='${lib.titulo}'></th>

                </tr>
                <tr>
                    <th>Categoria</th>
                    <th><input type='text' name='categoria' value='${lib.categoria}'></th>
                </tr>
                <td></td>
                <td><input type='submit'></td>
            </table>
        </form>
        <a href="MainController">Regresar</a>
    </body>
</html>
