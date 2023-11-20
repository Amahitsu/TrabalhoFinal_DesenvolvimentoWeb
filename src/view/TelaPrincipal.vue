<script setup>
import { ref, computed } from "vue";
import ExibirProduto from "../components/ExibirProduto.vue";

const titulo = ref("Mercado online para mangás");


const produtos = ref([
  {
  title: "Rick and morty",
  url: "https://sm.ign.com/ign_br/tv/r/rick-morty/rick-morty_cs71.jpg",
  preco: 34.40
},
{
  title: "One Piece 1",
  url: "https://m.media-amazon.com/images/I/51W1ij6OH3L.jpg",
  preco: 50.00
}
]);

const filtro = ref('');
const ProdutosFiltrados = computed(() => {
    if (filtro.value === '') {
        return produtos.value;
    } else {
        return produtos.value.filter((produto) => {
            return produto.title.toLowerCase().includes(filtro.value.toLowerCase());
        });
    }
});
</script>

<template>
  <!--Título da pagina -->
  <div class="container">
    <div class="my-5">
      <span class="d-flex text-white ">
        <h3 class = "fw-bolder" >Mercado online de mangás, ache o seu aqui!</h3>
      </span>
    </div>
    
      <!--campo para buscar o produto-->
  <div class="container mb-3">
    <div class="d-flex">
      <input v-model="filtro" class="form-control " type="text" placeholder="Pesquisar produto..." name="" id="">
      
    </div>
  </div>


    <div class="row">
      <div class="col-lg-3 col-md-6 col-sm-12" v-for="produto in ProdutosFiltrados">
        <ExibirProduto
          :imageTitle="produto.title"
          :imageUrl="produto.url"    
          :produtoPreco="produto.preco"      
        />
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
