<script>
import Titulo from '../components/Titulo.vue';
import {ref} from 'vue'

const titulo = ref('Geek')

</script>

<template>
    <div>
      <Titulo title="titulo"/>
      <Titulo :title="titulo"/>
    </div>

</template>

<style>

</style>