<script setup>
import { ref, computed } from "vue";
import ExibirProduto from "../components/ExibirProduto.vue";
import ApiChamada from "../ApiChamada";

const titulo = ref("Mercado online para mangás");
const produtos = ref([]);

function buscarTodos() {
  ApiChamada.request("http://localhost:8090/produto").then((data) => {
    produtos.value = data;
  })
}

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

buscarTodos();
</script>

<template>
  <!--Título da pagina -->
  <div class="container">
    <div class="d-flex justify-content-start ">
      <span class="d-flex text-white ">
        <h3 class="fw-bolder">Mercado online de mangás, ache o seu aqui!</h3>
      </span>
    </div>

    <!--campo para buscar o produto-->
    <div class="container mb-3 just">
      <div class="d-flex">
        <input v-model="filtro" class="form-control " type="text" placeholder="Pesquisar produto..." name="" id="">

      </div>
    </div>


    <div class="row align-items-end">
      <div class="col-lg-4 col-md-8 col-sm-12" v-for="produto in ProdutosFiltrados">
        <ExibirProduto :id="produto.id" :imageTitle="produto.titulo" :imageUrl="produto.imagem.url"
          :produtoPreco="produto.preco" />
      </div>
    </div>

  </div>
</template>

<style scoped>
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
