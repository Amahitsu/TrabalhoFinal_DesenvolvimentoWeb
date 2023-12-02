<script setup>
import { ref, defineProps } from 'vue'
import ApiChamada from '../ApiChamada';

const props = defineProps({
  id: Number
})

const produto = ref({});

function buscarProduto() {
  ApiChamada.request("http://localhost:8090/produto/id?id=" + props.id).then((data) => {
    produto.value = data;
  })
}

buscarProduto();
</script>

<template>
  <div class="container rounded-3 bg-dark text-white">
    <div class="row">
      <div class="col p-3">
        <img width="500" class="img-fluid" :src="produto.imagem.url" :alt="produto.imagem.alt">
      </div>
      <div class="border border-danger me-3 mt-3 col p-3">
        <h3>{{ produto.titulo }}</h3>
        <h3>R$ {{ produto.preco.toFixed(2) }}</h3>
        <h3>{{ produto.descricao }}</h3>
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