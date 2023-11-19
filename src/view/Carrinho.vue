<script setup>
import TituloPrincipal from '../components/TituloPrincipal.vue';

</script>

<template>
    <titulo-principal title=" Seu Carrinho" />
    <div class="container">
        <table class="table table-hover table-striped table-dark table-sm">
            <thead>
                <tr>
                    <th scope="col">Item</th>
                    <th scope="col">Preço</th>
                    <th scope="col">Quantidade</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <div class="d-flex">
                            <img class="img-fluid" src="https://sm.ign.com/ign_br/tv/r/rick-morty/rick-morty_cs71.jpg"
                                style="width: 5rem;" alt="">
                            <h3 class="px-3 fw-bold fs-3">Rick And Morty</h3>
                        </div>
                    </td>
                    <td>R$ 45</td>
                    <td>
                        <div class="d-flex">
                            <button class="btn btn-light mx-2 fw-bolder fs-5">+</button>
                            <input style="width: 5em;" class="form-control quantity" type="number" value="1" name="" id=""
                                disabled>
                            <button class="btn btn-light mx-2 fw-bolder fs-5">-</button>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<style></style>