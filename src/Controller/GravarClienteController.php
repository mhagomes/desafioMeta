<?php

declare(strict_types=1);

namespace Meta\Mvc\Controller;

use Meta\Mvc\Repository\UsuarioRepository;
use Meta\Mvc\Repository\ProdutoRepository;
use Meta\Mvc\Repository\ClienteRepository;
use Meta\Mvc\Repository\LogAcessoRepository;


use Meta\Mvc\Utils\Utils;

use Meta\Mvc\Entity\Cliente;

class GravarClienteController implements Controller
{
    public function __construct(private ProdutoRepository $produtoRepository,private ClienteRepository $clienteRepository,private LogAcessoRepository $logAcessoRepository,private UsuarioRepository $usuarioRepository)
    {
    }

    public function processaRequisicao(): void
    {
        
         
         
        if(isset($_POST['cliente'])){
           $formCliente=$_POST['cliente']; 
           $cliente= new Cliente();
           $cpf =  Utils::formatarDocumentoBanco($formCliente['cpfcnpj']); 
           $cliente->setRazaoSocial($formCliente['razaoSocial']);
           $cliente->setCpfCnpj($cpf);
           $cliente->setNomeFantasia($formCliente['nomeFantasia']);
           $cliente->setContatoComercial($formCliente['contatoComercial']);
           $cliente->setTelefoneComercial($formCliente['telefoneComercial']);
           $cliente->setCelularComercial($formCliente['celularComercial']);
           $cliente->setObservacao($formCliente['observacao']);
           $cliente->setEmailComercial($formCliente['emailComercial']);
 
          var_dump($cliente);


           //gravar o clietnte
           $this->clienteRepository->add($cliente);
           
        }

        $listaCliente = $this->clienteRepository->all();

        //direcionando para tela onde lista os cliente
        require_once __DIR__ . '/../../views/cliente.php';
    }
}
