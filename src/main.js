import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import Carrinho from './view/Carrinho.vue'
import DetalheProduto from './view/DetalheProduto.vue'
import TelaPrincipal from './view/TelaPrincipal.vue'

import { createRouter, createWebHistory} from 'vue-router'

const routes = [
    {path: '/', component: TelaPrincipal},
    {path: '/Carrinho', component: Carrinho},
    {path: '/DetalheProduto', component: DetalheProduto},
]
const router = createRouter({
    history: createWebHistory(),
    routes, 
})

createApp(App).use(router).mount('#app')
