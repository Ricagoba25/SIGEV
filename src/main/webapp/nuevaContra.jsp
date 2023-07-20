<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nueva Contraseña</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xl-12">
            <h1 class="titulo text-center">SISTEMA DE GESTIÓN DE EVENTOS Y VOLUNTARIOS</h1>
        </div>
        <div class="text-center d-flex justify-content-center align-items-center">
            <div class="login">
                <form action="index.jsp" method="post">
                    <div class="row d-flex justify-content-center align-items-center">
                        <div class="col-xl-12 mb-4">
                            <img src="img/Logo%20SIGEV.JPG" alt="LOGO" class="logo">
                        </div>
                        <div class="col-10 col-sm-10 col-xl-10">
                            <div class="mb-3 text-center">
                                <label>Ingresa tu nueva contraseña</label>
                            </div>
                        </div>
                        <div class="col-10 col-sm-10 col-xl-10">
                            <div class="text-start">
                                <div class="col-12">
                                    <label for="pass" class="form-label">Contraseña:</label>
                                </div>
                                <input type="password" class="form-control" id="pass" placeholder="Nueva Contraseña">
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-xl-12 ">
                            <button class="btn btn-login btn-primary mt-4" type="submit">Actualizar Contraseña</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="js/bootstrap.min.js"></script>
</body>
</html>