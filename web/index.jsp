<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 10-sep-2014, 12:25:42
    Author     : BetoDCS
--%>

<sql:query var="clave" dataSource="jdbc/Examen1">
    SELECT ClaveCarrera, name FROM Subject
</sql:query>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tec Profesores</title>
    </head>
    <body>
        <h1>Bienvenido al Primer Parcial!!! </h1>
        <h2>Albero Diaz Couder Santiañez</h2>
        <h2>Matricula: A01231691</h2>

       


        <form action="response.jsp">
            <strong>Selecciona una carrera:</strong>
            <select name="ClaveCarrera">
                <c:forEach var="row" items="${clave.rows}">
                    <option value="${row.ClaveCarrera}">${row.NombreCarrera}</option>
                </c:forEach>
            </select>
            <input type="submit" value="submit" name="Submit" />
        </form>

    </body>

</html>
