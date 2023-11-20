export default class CarrinhoService {
    static produtos = this.getProdutos();
   
    static getProdutos() {
      const produtos = JSON.parse(localStorage.getItem("produtos"));
      return produtos ? produtos : [];
    }
   
    static saveProdutos(produtos) {
      localStorage.setItem("produtos", JSON.stringify(produtos));
    }
   
    static addProdutosCarrinho(product) {
      this.produtos.push(product);
      this.saveProdutos(this.produtos);
    }
   
    static deletarProdutoCarrinho(produtoId) {
      const index = this.produtos.findIndex(
        (produto) => produto.id === produtoId
      );
      this.produtos.splice(index, 1);
      this.saveProdutos(this.produtos);
    }
   
    static updateProduto(produto) {
      this.deletarProdutoCarrinho(produto.id);
      this.addProdutosCarrinho(produto);
    }
   
  }
   