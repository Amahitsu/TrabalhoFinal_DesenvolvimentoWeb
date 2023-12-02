<script setup>
import TituloPrincipal from '../components/TituloPrincipal.vue';
import CarrinhoService from '../Carrinho';
import { ref } from 'vue';
import ApiChamada from '../ApiChamada';

const produtos = ref([])
const precoTotal = ref(0)

function BuscarProdutos() {
    produtos.value = CarrinhoService.getProdutos();
}

function DeletarProduto(id) {
    CarrinhoService.deletarProdutoCarrinho(id)
    window.location.reload()
}

function calculateTotalPrice() {
    precoTotal.value = 0;
    produtos.value.forEach(p => {
        console.log(precoTotal.value);
        console.log(p);
        precoTotal.value += p.precoProduto * p.quantidade;
    });
}

function decrementar(product) {
    if (product.quantidade > 1) {
        product.quantidade--;
        atualizarTotal(product);
    }
}

function incrementar(product) {
    product.quantidade++;
    atualizarTotal(product);
}

function atualizarTotal(product) {
    calculateTotalPrice();
    CarrinhoService.updateProduto(product);
}

function terminarCompra() {
    produtos.value.forEach(p => {
        ApiChamada.request("http://localhost:8090/produto?idProduto=" + p.id + "&quantidade=" + p.quantidade,
            "POST");
            CarrinhoService.deletarProdutoCarrinho(p)
    });

    alert("otario")
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
                    <th scope="col">Total</th>
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
                            <button class="btn btn-light mx-2 fw-bolder fs-5" @click="incrementar(produto)">+</button>
                            <input style="width: 5em;" class="form-control quantity" type="number"
                                :value="produto.quantidade" disabled>
                            <button class="btn btn-light mx-2 fw-bolder fs-5" @click="decrementar(produto)">-</button>
                        </div>
                    </td>
                    <td>
                        <div class="d-flex card" style="width: 10rem;">
                            <div class=" card-body">
                                <p class="card-text">R$ {{
                                    totalPreco = (produto.precoProduto * produto.quantidade).toFixed(2)
                                }} </p>
                            </div>

                        </div>
                    </td>
                    <td>
                        <div class="d-flex">
                            <button class="btn btn-light mr-3" @click="() => DeletarProduto(produto.id)">Remover do
                                carrinho</button>

                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope></th>
                    <th scope></th>
                    <th scope></th>
                    <th scope>
                        <router-link to="/">
                            <button class="btn btn-outline-light m-2"> Continuar comprando </button>
                        </router-link>
                    </th>
                    <th scope>
                        <button class="btn btn-outline-light m-2" @click="terminarCompra"> Terminar Compra </button>
                    </th>
                </tr>
            </tbody>
        </table>
    </div>
</template>