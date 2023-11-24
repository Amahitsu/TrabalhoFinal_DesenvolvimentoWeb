export default class Produto{
    constructor (id, title, imageUrl, imageAlt, produtoDescricao, precoProduto){
        this.id = id,
        this.title = title,
        this.imageUrl = imageUrl,
        this.imageAlt = imageAlt,
        this.produtoDescricao = produtoDescricao,
        this.precoProduto = precoProduto,
        this.quantidade = 1
    }


}