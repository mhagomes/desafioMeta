<?php

declare(strict_types=1);

namespace Meta\Mvc\Controller;


use Meta\Mvc\Repository\UsuarioRepository;
use Meta\Mvc\Repository\ProdutoRepository;
use Meta\Mvc\Repository\ClienteRepository;
use Meta\Mvc\Repository\LogAcessoRepository;

class UsuarioListController implements Controller
{
    public function __construct(private ProdutoRepository $produtoRepository,private ClienteRepository $clienteRepository,private LogAcessoRepository $logAcessoRepository,private UsuarioRepository $usuarioRepository)
    {
    }
    
    public function processaRequisicao(): void
    {
        
 
        
 
        $listaUsuario = $this->usuarioRepository->all();
         
        
        require_once __DIR__ . '/../../views/usuario.php';
    }
}
