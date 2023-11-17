<script setup>

</script>

<template>
  <nav class="navbar bg-dark navbar-expand-lg" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="../public/vite.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      MangaTown
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item mt-2 mx-3">
            <router-link to="/">
              <h4>Página inicial</h4>
            </router-link>
          </li>

          <li class="nav-item mt-2 mx-3">
            <router-link to="/carrinho">
              <h4>Meu Carrinho</h4>
            </router-link>
          </li>
      </ul>
    </div>
  </div>

</nav>


  <router-view></router-view>


</template>

<style scoped>

</style>
