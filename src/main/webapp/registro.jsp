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
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/styles.css" rel="stylesheet">
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
          <img src="img/Logo%20SIGEV.JPG" alt="Logo" class="logo">
        </div>
        <div class="col-xl-8">
          <h3>Seleccionar tipo de Cuenta</h3>

          <div class="d-flex align-items-center align-items-center">
            <div class="form-check m-3">
              <input class="form-check-input" type="radio" name="formType" value="form1" onchange="changeForm(this)">
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

  <div id="formContainer">
    <!-- Aquí se mostrarán los formularios -->
  </div>

  <script>
    function changeForm(radio) {
      var formType = radio.value;
      var formContainer = document.getElementById("formContainer");

      fetch("formSwitcher?formType=" + formType)
              .then(response => response.text())
              .then(html => {
                formContainer.innerHTML = html;
              });
    }
  </script>



</div>

</body>
</html>
