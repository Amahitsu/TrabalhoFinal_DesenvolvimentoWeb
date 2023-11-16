<script setup>
import { ref, defineProps } from 'vue'
const props = defineProps({
  imageUrl: String,
  imageAlt: String,
  imageTitle: String
})
</script>

<template>
  <div class="m-2 bg-primary rounded-3 text-white">
    <img class="img-fluid p-3" :src="imageUrl" :alt="imageAlt">
    <h3 class="py-3 fs-2 fw-bolder"> {{ imageTitle }}</h3>
  </div>
</template>