<script setup>
import TituloPrincipal from "../components/TituloPrincipal.vue";
import { ref } from "vue";
import ExibirProduto from "../components/ExibirProduto.vue";

const titulo = ref("Mercado online para mangás");


const produtos = ref([
  {
  title: "rick and morty",
  url: "https://sm.ign.com/ign_br/tv/r/rick-morty/rick-morty_cs71.jpg"
},
{
  title: "rick and morty",
  url: "https://sm.ign.com/ign_br/tv/r/rick-morty/rick-morty_cs71.jpg"
}
]);
</script>

<template>
  <!--campo para buscar o produto-->
  <div class="container">
    <div class="d-flex">
      <input class="form-control" type="text" placeholder="produto a ser comprado" name="" id="">
      <button class="btn btn-outline-dark mx-2">Efetuar</button>
    </div>
  </div>
  
  <div class="container">
    <div class="my-5">
      <span class="d-flex justify-content-center">
        <titulo-principal title="MangaTown" />
      </span>
      <span class="d-flex justify-content-center">
        <h3>Venha comprar baabababababa</h3>
      </span>
    </div>

    <div class="row">
      <div class="col-lg-3 col-md-6 col-sm-12" v-for="produto in produtos">
        <ExibirProduto
          :imageTitle="produto.title"
          :imageUrl="produto.url"
        />

        <div>
          <a href="/Carrinho" target="Adicionar">Adicionar no Carrinho</a>
        </div>
      </div>



    </div>

  </div>
</template>

<style>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
