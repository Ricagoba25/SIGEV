<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="container__titulo">
        <h2 class="titulo text-center">REGISTRO DE VOLUNTARIO</h2>
    </div>
    <div class="container__formulario">
        <div class="container__formulario_contenido">
            <form action="ServletVoluntario" method="post">
                <!-- Primera fila-->
                <div class="row mt-2">
                    <div class="col-xl-4">
                        <label for="nombre" class="form-label">Nombre:</label>
                        <input type="text" name="nombre" class="form-control" id="nombre">
                    </div>
                    <div class="col-xl-4">
                        <label for="apellidoPaterno" class="form-label">Apellido Paterno:</label>
                        <input type="text" name="apellido1" class="form-control" id="apellidoPaterno">
                    </div>
                    <div class="col-xl-4">
                        <label for="apellidoMaterno" class="form-label">Apellido Materno:</label>
                        <input type="text" name="apellido2" class="form-control" id="apellidoMaterno">
                    </div>
                </div>
                <!-- Segunda Fila-->
                <div class="row mt-2">
                    <div class="col-xl-4">
                        <label for="telefono" class="form-label">Teléfono:</label>
                        <input type="text" name="telefono" class="form-control" id="telefono">
                    </div>
                    <div class="col-xl-4">
                        <label for="correo" class="form-label">Correo:</label>
                        <input type="text" name="correo" class="form-control" id="correo">
                    </div>
                    <div class="col-xl-4">
                        <label for="contrasena" class="form-label">Contraseña:</label>
                        <input type="password" name="contrasenia" class="form-control" id="contrasena">
                    </div>
                </div>
                <!-- Tercera linea-->
                <div class="row mt-2">
                    <div class="col-xl-8">
                        <label for="curp" class="form-label">CURP:</label>
                        <input type="text" class="form-control" id="curp">
                    </div>
                </div>
                <!-- Button -->

                <div class="row justify-content-center mt-2">
                    <div class="col-xl-4">
                        <button type="submit" name="accion" value="agregarVoluntario" class="btn btn-primary btn-login mb-4 mt-4"> Registrarse</button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</div>


</body>
</html>