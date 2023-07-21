<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Perfil Voluntario</title>
  <link href="../../SIGEV_war_exploded/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../../SIGEV_war_exploded/css/dashboard.css">
  <link rel="stylesheet" href="../../SIGEV_war_exploded/css/styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.css">
<body>
<header class="navbar mi-navbar sticky-top  flex-md-nowrap p-0">
  <div class="navbar-brand col-md-3 col-lg-2 me-0 px-3">
  </div>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
          data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Menu">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a href="index.jsp" class="px-3 btn btn-danger">Cerrar Sesión</a>
    </div>
  </div>


</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-2 col-lg-2 d-md-block sidebar collapse">
      <div class="position-sticky pt-3">
        <div class="d-flex justify-content-center mt-4">
          <img class=" mt-4 mb-4 logo" src="../../SIGEV_war_exploded/img/Logo%20SIGEV.JPG" alt="profile">
        </div>
        <p class="titulo__nav"> Eventos</p>
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#">
              <i class="fa-solid fa-check"></i>
              Disponibles
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa-regular fa-calendar-plus"></i>
              Postulados
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa-regular fa-calendar-xmark"></i>
              Pendientes Aprobación
            </a>
          </li>
        </ul>
      </div>
    </nav>
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class=" pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2 mt-4 text-center">PERFIL DE ${nombre}</h1>
      </div>
      <!--Contenido-->

      <!-- Logo Imagen-->
      <div class="col-xl-1 m-auto mt-5 mb-4 text-center">
        <img src="../../SIGEV_war_exploded/img/foto%20voluntario.jpg" alt="FotoPerfil" class="fotoPerfil rounded-circle">
        <a href="#" class="text-center" data-bs-toggle="modal" data-bs-target="#exampleModal">Cambiar Foto</a>
      </div>

      <!--Formulario-->
      <div class="container__formulario">
        <div class="container__formulario_contenido">
          <!-- Primera fila-->
          <form action="#" method="post">
            <div class="row mt-2">
              <div class="col-xl-4">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre">
              </div>
              <div class="col-xl-4">
                <label for="razonSocial" class="form-label">Apellido Paterno:</label>
                <input type="text" class="form-control" id="razonSocial">
              </div>
              <div class="col-xl-4">
                <label for="rfc" class="form-label">Apellido Materno:</label>
                <input type="text" class="form-control" id="rfc">
              </div>
            </div>
            <!-- Segunda Fila-->
            <div class="row mt-2">
              <div class="col-xl-4">
                <label for="direccion" class="form-label">Email*:</label>
                <input type="text" class="form-control" id="direccion">
              </div>
              <div class="col-xl-4">
                <label for="telefono" class="form-label">Teléfono:</label>
                <input type="text" class="form-control" id="telefono">
              </div>
              <div class="col-xl-4">
                <label for="curp" class="form-label">CURP*:</label>
                <input type="text" class="form-control" id="curp">
              </div>
            </div>
            <!-- Tercera linea-->

            <!-- Button -->
            <div class="row justify-content-center mt-2">
              <div class="col-xl-4">
                <button type="submit" class="btn btn-primary btn-login mb-4 mt-4"> Actualizar Información</button>
              </div>
              <h6 class="text-center aste__marcados">Los Elementos marcados con * no son actualizables</h6>
            </div>
          </form>
        </div>

      </div>


    </main>
  </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Selecciona tu Imagen</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">

        <div class="input-group mb-3 mt-3">
          <input type="file" class="form-control" id="inputGroupFile02">
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Guardar Imagen</button>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
