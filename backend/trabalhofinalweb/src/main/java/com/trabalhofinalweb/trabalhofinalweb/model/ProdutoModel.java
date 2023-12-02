package com.trabalhofinalweb.trabalhofinalweb.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "produtos")
public class ProdutoModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(length = 250)
    private String titulo;
    @Column(length = 800)
    private String descricao;
    private Double preco;
    @OneToOne
    @JoinColumn(name = "ID_IMAGEM")
    private ImagemModel imagem;

    public ProdutoModel(Integer id, String titulo, String descricao, Double preco, ImagemModel imagem) {
        this.id = id;
        this.titulo = titulo;
        this.descricao = descricao;
        this.preco = preco;
        this.imagem = imagem;
    }

    public ProdutoModel() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public ImagemModel getImagem() {
        return imagem;
    }

    public void setImagem(ImagemModel imagem) {
        this.imagem = imagem;
    }

}
