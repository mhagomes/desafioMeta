<?php

declare(strict_types=1);

namespace Meta\Mvc\Entity;

class Produto
{

 


    public readonly int $cdProduto;
    public readonly string $nome;
    public readonly string $loginCadastro;
    public readonly int $quantidade;
    public readonly string $dtCadastro;
 

    public function __construct(){       
    }

    public function setCdProduto(int $cdProduto)
    {
        $this->cdProduto = $cdProduto;
    }

    public function setNome(string $nome)
    {
        $this->nome = $nome;
    }

    public function setLoginCadastro(string $loginCadastro)
    {
        $this->loginCadastro = $loginCadastro;
    }

    
    public function setDtCadastro(string $dtCadastro)
    {
        $this->dtCadastro = $dtCadastro;
    }


    public function setQuantidade(int $quantidade): void
    {
        $this->quantidade = $quantidade;
    }

    
 


    public function getCdProduto(): ?int
    {
        return $this->cdProduto;
    }

    public function getNome(): ?string
    {
        return $this->nome;
    }
  
    public function getLoginCadastro(): ?string
    {
        return $this->loginCadastro;
    }

    public function getDtCadastro(): ?string
    {
        return $this->dtCadastro;
    }

    public function getQuantidade(): ?int
    {
        return $this->quantidade;
    }
    
}
