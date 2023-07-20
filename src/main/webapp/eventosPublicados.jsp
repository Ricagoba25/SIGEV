<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Eventos Publicados</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/dashboard.css">
  <link rel="stylesheet" href="css/styles.css">
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
      <p class="px-3">Mi perfil</p>
    </div>
  </div>


</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-2 col-lg-2 d-md-block sidebar collapse">
      <div class="position-sticky pt-3">
        <div class="d-flex justify-content-center mt-4">
          <img class=" mt-4 mb-4 logo" src="img/Logo%20SIGEV.JPG" alt="profile">
        </div>
        <p class="titulo__nav"> Solicitudes Aprobadas</p>
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#">
              <i class="fa-solid fa-check"></i>
              Aprobados
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa-regular fa-clock"></i>
              Pendientes
            </a>
          </li>
        </ul>
        <p class="titulo__nav"> Eventos</p>
        <ul class="nav flex-column">
          <li class="nav-item d-none d-sm-block"></li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#">
              <i class="fa-regular fa-calendar-check"></i>
              Publicados
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa-regular fa-pen-to-square"></i>
              Crear Evento
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa-regular fa-calendar-xmark"></i>
              Pendientes Aprobación
            </a>
          </li>
        </ul>
        <p class="titulo__nav"> Test</p>
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#">
              <i class="fa-regular fa-file-lines"></i>
              Crear Test
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa-regular fa-1x fa-rectangle-list"></i>
              Test Disponibles
            </a>
          </li>
        </ul>


      </div>
    </nav>
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class=" pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2 mt-4 text-center">EVENTOS PUBLICADOS</h1>
      </div>
      <!--Contenido-->


    </main>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>