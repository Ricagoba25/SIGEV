<%--
  Created by IntelliJ IDEA.
  User: richa
  Date: 18/07/2023
  Time: 02:32 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro</title>
  <link href="../../css/bootstrap.min.css" rel="stylesheet">
  <link href="../../css/styles.css" rel="stylesheet">
</head>
<body>

<div class="container">
  <div class="container__titulo">
    <h1 class="titulo text-center">SELECCIONE CON QUE CUENTA SE DESEA REGISTRAR</h1>
  </div>
  <div class="container__organizacion">
    <form>
    <div class="container__organizacion_contenido">
      <div class="row">
        <div class="col-xl-4">
          <img src="../../img/Logo%20SIGEV.JPG" alt="Logo" class="logo">
        </div>
        <div class="col-xl-8">
          <h3>Seleccionar tipo de Cuenta</h3>

          <div class="d-flex align-items-center align-items-center">
            <div class="form-check m-3">
              <input class="form-check-input" checked="checked" type="radio" name="formType" value="form1" onchange="changeForm(this)">
              <label class="form-check-label"> Organización</label>
            </div>
            <div class="form-check m-3">
              <input class="form-check-input" type="radio" name="formType" value="form2" onchange="changeForm(this)">
              <label class="form-check-label"> Voluntario</label>
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
  </div>

  <div id="formContainerOrganizacion">
    <div class="container">
      <div class="container__titulo">
        <h2 class="titulo text-center">REGISTRO DE ORGANIZACIÓN</h2>
      </div>
      <div class="container__formulario">
        <div class="container__formulario_contenido">
          <form class="form-signin" action="../../ServletOrganizacion" method="post">
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
                <input type="text" name="telefonoOrganizacion" class="form-control" id="telefonoOrganizacion" required>
              </div>
            </div>
            <!-- Tercera linea-->
            <div class="row mt-2">
              <div class="col-xl-4">
                <label for="correo" class="form-label">Email:</label>
                <input type="email" name="correoOrganizacion" class="form-control" id="correoOrganizacion" required>
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
  </div>

  <div id="formContainerVoluntario" style="display: none">
    <div class="container">
      <div class="container__titulo">
        <h2 class="titulo text-center">REGISTRO DE VOLUNTARIO</h2>
      </div>
      <div class="container__formulario">
        <div class="container__formulario_contenido">
          <form action="../../ServletVoluntario" method="post">
            <!-- Primera fila-->
            <div class="row mt-2">
              <div class="col-xl-4">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" name="nombreVoluntario" class="form-control" id="nombreVoluntario">
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
  </div>

  <script>
    function changeForm(radio) {
      var formType = radio.value;
      var formContainerOrganizacion = document.getElementById("formContainerOrganizacion");
      var formContainerVoluntario = document.getElementById("formContainerVoluntario");

      console.log("formtype " + formType);
      if(formType == "form1"){
        console.log("Entro a form1");

        formContainerOrganizacion.style.display = 'block';
        formContainerVoluntario.style.display = 'none';

      } else{
        console.log("Entro a form2");
        formContainerVoluntario.style.display = 'block';
        formContainerOrganizacion.style.display = 'none';
      }
    }
  </script>



</div>

</body>
</html>
