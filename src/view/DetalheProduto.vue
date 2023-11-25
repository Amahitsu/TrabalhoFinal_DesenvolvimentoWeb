<script setup>
import { ref } from 'vue'

const produto = ref(
  {
    title: "Rick and morty",
    url: "https://sm.ign.com/ign_br/tv/r/rick-morty/rick-morty_cs71.jpg",
    preco: 34.40,
    produtoDescricao: "Descrição: Slaqaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
  },
);
</script>

<template>
  <div class="container rounded-3 bg-dark text-white">
    <div class="row">
      <div class="col p-3">
        <img width="500" class="img-fluid" :src="produto.url" alt="">
      </div>
      <div class="border border-danger me-3 mt-3 col p-3">
        <h3>{{ produto.title }}</h3>
        <h3>R$ {{ produto.preco.toFixed(2) }}</h3>
        <h3>{{ produto.produtoDescricao }}</h3>
      </div>

    </div>

    <router-link to="/Carrinho">
      <button class="btn btn-danger btn-lg m-2">Comprar</button>
    </router-link>


    <router-link to="/">
      <button class="btn btn-danger btn-lg m-2">Voltar</button>
    </router-link>

  </div>
</template>

<style></style>