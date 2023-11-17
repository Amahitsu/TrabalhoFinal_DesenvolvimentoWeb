<script setup>
import { ref, defineProps } from 'vue'
const props = defineProps({
  imageUrl: String,
  imageAlt: String,
  imageTitle: String
})
</script>

<template>
  <div class="m-2 bg-dark rounded-3 text-white">
    <img class="img-fluid p-3" :src="imageUrl" :alt="imageAlt">
    <span class="d-flex justify-content-center">
      <h3 class="py-2 fs-2 fw-bolder"> {{ imageTitle }}</h3>
    </span>

    <button class="btn btn-danger btn-lg m-3">Comprar</button>
        
    <router-link to="/DetalhedoProduto">
      <button class="btn btn-danger btn-lg m-2">Detalhes</button>
    </router-link> 
    
  </div>
</template>