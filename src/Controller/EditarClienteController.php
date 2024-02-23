<?php

declare(strict_types=1);

namespace Meta\Mvc\Controller;
 
use Meta\Mvc\Repository\UsuarioRepository;
use Meta\Mvc\Repository\ProdutoRepository;
use Meta\Mvc\Repository\ClienteRepository;
use Meta\Mvc\Repository\LogAcessoRepository;
use Meta\Mvc\Entity\Cliente;

 
class EditarClienteController implements Controller
{
    public function __construct(private ProdutoRepository $produtoRepository,private ClienteRepository $clienteRepository,private LogAcessoRepository $logAcessoRepository,private UsuarioRepository $usuarioRepository)
    {
    }

    public function processaRequisicao(): void
    {
        $clienteEdita= new Cliente();
         
        if(isset($_GET['cdCliente'])){
           $cdCliente=$_GET['cdCliente'];
           //consultar cliente
            $clienteEdita=$this->clienteRepository->find(intval($cdCliente));
           
           
        }

       

        
        require_once __DIR__ . '/../../views/editarCliente.php';
    }
}
