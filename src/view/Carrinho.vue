<script setup>
import TituloPrincipal from '../components/TituloPrincipal.vue';
import CarrinhoService from '../Carrinho';
import { ref } from 'vue';

const produtos = ref([])

function BuscarProdutos() {
    produtos.value = CarrinhoService.getProdutos();
    console.log(produtos.value);
}


function DeletarProduto(id) {
    CarrinhoService.deletarProdutoCarrinho(id)
    window.location.reload()
}

BuscarProdutos();

</script>

<template>
    <titulo-principal title=" Seu Carrinho" class=" container " />
    <div class="container">
        <table class="table table-hover table-striped table-dark">
            <thead>
                <tr>
                    <th scope="col">Item</th>
                    <th scope="col">Preço</th>
                    <th scope="col">Quantidade</th>
                    <th scope="col"> </th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="produto in produtos">
                    <td>
                        <div class="d-flex ">
                            <img class="img-fluid" :src="produto.imageUrl" style="width: 5rem;" :alt="produto.imageAlt">
                            <h3 class="px-3 fw-bold fs-3">{{ produto.title }}</h3>
                        </div>
                    </td>
                    <td>R$ {{ produto.precoProduto.toFixed(2) }}</td>
                    <td>
                        <div class="d-flex">
                            <button class="btn btn-light mx-2 fw-bolder fs-5" @click="() => {
                                produto.quantidade++;
                            }">+</button>
                            <input style="width: 5em;" class="form-control quantity" type="number"
                                :value="produto.quantidade" disabled>
                            <button class="btn btn-light mx-2 fw-bolder fs-5" @click="() => {
                                if (produto.quantidade > 1) {
                                    produto.quantidade--;
                                }
                            }">-</button>
                        </div>
                    </td>
                    <td>
                        <div class="d-flex">
                            <button class="btn btn-light mr-5" @click="() => DeletarProduto(produto.id)">Remover do
                                carrinho</button>

                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<style></style>