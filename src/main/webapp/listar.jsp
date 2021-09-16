
<%@page import="com.mycompany.pagina1.PersonaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.pagina1.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Pacientes</h1>
            <a href="add.jsp">Agregar</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>PACIENTE</th>
                        <th>ENFERMEDAD</th>
                        <th>ESTADO</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona>list=dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per = null;
                    while(iter.hasNext()){
                        per=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td><%= per.getId()%></td>
                        <td><%= per.getPaciente()%></td>
                        <td><%= per.getEnfermedad()%></td>
                        <td><%= per.getEstado()%></td>
                        <td>
                            <a href="Controlador?accion=editar&id=<%=per.getId()%>">Editar</a>
                            <a href="Controlador?accion=eliminar&id=<%=per.getId()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

                
        </div>
    </body>
</html>
