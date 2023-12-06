<script setup>
import { ref, defineProps } from 'vue'
import ApiChamada from '../ApiChamada';
import CarrinhoService from '../Carrinho';
import ExibirProduto from '../components/ExibirProduto.vue';

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
        <h3 class=" fw-bolder text-center">{{ produto.titulo }}</h3>
        <h4 class=" text-center mt-2 ">Valor do produto: R$ {{ produto.preco.toFixed(2) }}</h4>
        <h5 class="container  ">Descrição: {{ produto.descricao }}</h5>
      </div>

    </div>
    <div class="d-flex justify-content-end">
      <router-link to="/">
        <button class="btn btn-danger btn-lg m-3">Voltar</button>
      </router-link>

    </div>

  </div>
</template>

<style></style>