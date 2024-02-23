<?php

declare(strict_types=1);

namespace Meta\Mvc\Controller;

use Meta\Mvc\Repository\UsuarioRepository;
use Meta\Mvc\Repository\ProdutoRepository;
use Meta\Mvc\Repository\ClienteRepository;
use Meta\Mvc\Repository\LogAcessoRepository;

use Meta\Mvc\Entity\Produto;

class GravarProdutoController implements Controller
{
    public function __construct(private ProdutoRepository $produtoRepository,private ClienteRepository $clienteRepository,private LogAcessoRepository $logAcessoRepository,private UsuarioRepository $usuarioRepository)
    {
    }

    public function processaRequisicao(): void
    {
        
         
         
        if(isset($_POST['Produto'])){
           $produto= new Produto();
           $formProduto=$_POST['Produto'];
           $produto->setNome($formProduto['nome']);
           $produto->setQuantidade(intval($formProduto['quantidade']));

           //gravar o produto
           $this->produtoRepository->add($produto);
           
        }

        $listaProduto = $this->produtoRepository->all();

        //direcionando para tela onde lista os produtos
        require_once __DIR__ . '/../../views/produto.php';
    }
}
