package com.trabalhofinalweb.trabalhofinalweb.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.trabalhofinalweb.trabalhofinalweb.model.PedidoModel;
import com.trabalhofinalweb.trabalhofinalweb.model.ProdutoModel;
import com.trabalhofinalweb.trabalhofinalweb.repository.PedidoRepository;
import com.trabalhofinalweb.trabalhofinalweb.repository.ProdutoRepository;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/produto")
public class ProdutoController {
    @Autowired
    private ProdutoRepository produtoRepository;
    @Autowired
    private PedidoRepository pedidoRepository;

    @GetMapping
    public List<ProdutoModel> buscarTodos() {
        return produtoRepository.findAll();
    }

    @GetMapping("/{id}")
    public Optional<ProdutoModel> buscarPorId(@RequestParam Integer id) {
        return produtoRepository.findById(id);
    }

    @PostMapping
    public void efetuarCompra(@RequestParam int idProduto, @RequestParam int quantidade) {
        var produto = produtoRepository.findById(idProduto);
        var valorTotal = produto.get().getPreco() * quantidade;
        var pedido = new PedidoModel(quantidade, valorTotal, produto.get());
        pedidoRepository.save(pedido);
    }
}
