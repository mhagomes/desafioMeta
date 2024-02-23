<?php

declare(strict_types=1);

namespace Meta\Mvc\Controller;
 
use Meta\Mvc\Repository\UsuarioRepository;
use Meta\Mvc\Repository\ProdutoRepository;
use Meta\Mvc\Repository\ClienteRepository;
use Meta\Mvc\Repository\LogAcessoRepository;

 
class NovoProdutoController implements Controller
{
    public function __construct(private ProdutoRepository $produtoRepository,private ClienteRepository $clienteRepository,private LogAcessoRepository $logAcessoRepository,private UsuarioRepository $usuarioRepository)
    {
    }

    public function processaRequisicao(): void
    {
        
         
        if(isset($_GET['cd_produto'])){
           $cd_tipo_publicacao=$_GET['cd_produto'];
           //apagar produto
           $this->produtoRepository->remove($cd_produto);
           
           
        }

        $listaProduto = $this->produtoRepository->all();

        
        require_once __DIR__ . '/../../views/novoProduto.php';
    }
}
