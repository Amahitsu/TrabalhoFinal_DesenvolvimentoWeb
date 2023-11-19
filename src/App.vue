<script setup>

</script>

<template>
 <!--Navbar-->
 <nav class="navbar navbar-expand-lg navbar-light bg-light mb-5">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <div class="d-flex nav-item mx-3">
          <router-link to="/">
            <img src="../public/Feeling.png" alt="Logo" width="130"/>
            <h3 class="ms-3 d-inline-flex fw-bold">GeekStore</h3>
          </router-link>
        </div>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto">
          <li class="nav-item">
            <router-link to="/">
              <h4 class="fw-bold">FAQ</h4>
            </router-link>
          </li>
        </ul>

        <router-link to="/Carrinho">
          <img width="50" class="img-fluid m-5" src="../public/Carrinho.png" alt="Carrinho" />
        </router-link>
      </div>
    </div>
  </nav>
  <router-view></router-view>



</template>

<style scoped>

</style>
