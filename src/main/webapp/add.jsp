
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
        <h1> Agregar Persona</h1>
        <form action="Controlador" method="GET">
            Paciente:<br>
            <input type="text" name="txtPac"><br>
            Enfermedad:<br>
            <input type="text" name="txtEnf"><br>
            Estado:<br>
            <input type="test" name="txtEst"><br>
            <input type="submit" name="accion" value="Agregar"><br>
        </form>
        </div>
    </body>
</html>
