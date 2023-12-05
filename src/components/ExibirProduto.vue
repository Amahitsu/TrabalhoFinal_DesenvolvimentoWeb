<script setup>
import CarrinhoService from '../Carrinho';
import Produto from '../Produto'

import { defineProps } from 'vue'
const props = defineProps({
  id: Number,
  imageUrl: String,
  imageAlt: String,
  imageTitle: String,
  produtoPreco: Number
})

const produto = new Produto(props.id, props.imageTitle, props.imageUrl, props.imageAlt, null, props.produtoPreco);
function AdicionarCarrinho(){
  CarrinhoService.addProdutosCarrinho(produto);
  alert("Item adicionado com sucesso!")
}

</script>

<template>
  <div class="m-2 bg-dark rounded-3 text-white">
    <img class="img-fluid p-3" :src="imageUrl" :alt="imageAlt">
    <span class="d-flex justify-content-center">
      <h3 class="d-flex justify-content-center fs-5 fw-bolder"> {{ imageTitle }}</h3>
    </span>
    <h3 class="d-flex justify-content-center fs-5 fw-bolder"> R$ {{ produtoPreco.toFixed(2) }}</h3>

    <button class="btn btn-danger btn-lg m-2" @click="() => AdicionarCarrinho()">  Comprar</button>



    <router-link :to="'/DetalheProduto/' + props.id">
      <button class="btn btn-danger btn-lg m-2">Detalhes</button>
    </router-link>

  </div>
</template>