

<%@page import="com.mycompany.pagina1.Persona"%>
<%@page import="com.mycompany.pagina1.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                PersonaDAO dao = new PersonaDAO();
                int id = Integer.parseInt(String.valueOf(request.getAttribute("idper")));
                Persona p = (Persona)dao.list(id);
                %>
        <h1>Modificar Paciente</h1>
        <form method="GET" action="Controlador">
            Paciente:<br>
            <input type="text" name="txtPac" value="<%=p.getPaciente() %>"><br>
            Enfermedad:<br>
            <input type="text" name="txtEnf" value="<%=p.getEnfermedad()%>"><br>
            Estado:<br>
            <input type="text" name="txtEst" value="<%=p.getEstado()%>"><br>
            <input type="text" name="txtid" value="<%=p.getId()%>">
            <input type="submit" name="accion" value="Actualizar"><br>
        </form>
        </div>
    </body>
</html>
