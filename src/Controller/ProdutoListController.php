<?php

declare(strict_types=1);

namespace Meta\Mvc\Controller;


use Meta\Mvc\Repository\ProdutoRepository;
use Meta\Mvc\Repository\ClienteRepository;

 
//$logAcessoRepository,$usuarioRepository 
 
 
class ProdutoListController implements Controller
{
    public function __construct(private ProdutoRepository $producaoRepository ,private ClienteRepository $clienteRepository)
    {
    }

    public function processaRequisicao(): void
    {
        
        //remover produto
        if(isset($_GET['cdProduto'])){
           $cdProduto=$_GET['cdProduto'];
           //apagar o produto selecionado
           $this->producaoRepository->remove(intval($cdProduto));
           
        }
        
 
        $listaProduto = $this->producaoRepository->all();
         
        
        require_once __DIR__ . '/../../views/produto.php';
    }
}
