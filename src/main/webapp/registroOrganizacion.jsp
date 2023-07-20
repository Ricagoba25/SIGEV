<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro Organización</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="container__titulo">
        <h2 class="titulo text-center">REGISTRO DE ORGANIZACIÓN</h2>
    </div>
    <div class="container__formulario">
        <div class="container__formulario_contenido">
            <form class="form-signin" action="ServletOrganizacion" method="post">
            <!-- Primera fila-->

                <div class="row mt-2">
                    <div class="col-xl-4">
                        <label for="nombre" class="form-label">Nombre:</label>
                        <input type="text" name="nombre" class="form-control" id="nombre" required>
                    </div>
                    <div class="col-xl-4">
                        <label for="razonSocial" class="form-label">Razón Social:</label>
                        <input type="text" name="razonSocial" class="form-control" id="razonSocial" required>
                    </div>
                    <div class="col-xl-4">
                        <label for="rfc" class="form-label">RFC:</label>
                        <input type="text" name="rfc" class="form-control" id="rfc" required>
                    </div>
                </div>
                <!-- Segunda Fila-->
                <div class="row mt-2">
                    <div class="col-xl-8">
                        <label for="direccion" class="form-label">Dirección:</label>
                        <input type="text" name="direccion" class="form-control" id="direccion" required>
                    </div>
                    <div class="col-xl-4">
                        <label for="telefono" class="form-label">Teléfono:</label>
                        <input type="text" name="telefono" class="form-control" id="telefono" required>
                    </div>
                </div>
                <!-- Tercera linea-->
                <div class="row mt-2">
                    <div class="col-xl-4">
                        <label for="correo" class="form-label">Email:</label>
                        <input type="email" name="correo" class="form-control" id="correo" required>
                    </div>
                    <div class="col-xl-4">
                        <label for="contrasenia" class="form-label">Contraseña:</label>
                        <input type="password" name="contrasenia" class="form-control" id="contrasenia">
                    </div>
                </div>
                <!-- Button -->
                <div class="row justify-content-center mt-2">
                    <div class="col-xl-4">
                        <button type="submit" name="accion" value="agregarOrganizacion" class="btn btn-primary btn-login mb-4 mt-4"> Registrarse</button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</div>




</body>
</html>
