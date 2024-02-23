<?php

declare(strict_types=1);

return [
    'GET|/' => \Meta\Mvc\Controller\DashboardController::class,
    
    //cliente
    'GET|/cliente' => \Meta\Mvc\Controller\ClienteListController::class,
    'GET|/adicionarCliente' => \Meta\Mvc\Controller\NovoClienteController::class,
    'POST|/adicionarCliente' => \Meta\Mvc\Controller\GravarClienteController::class,
    'GET|/removerCliente' => \Meta\Mvc\Controller\ClienteListController::class,
    'GET|/editarCliente' => \Meta\Mvc\Controller\EditarClienteController::class,
    'POST|/atualizarCliente' =>\Meta\Mvc\Controller\AtualizarClienteController::class,
 
    //acesso
    'GET|/login' => \Meta\Mvc\Controller\LoginFormController::class,
    'POST|/login' => \Meta\Mvc\Controller\LoginController::class,
    'GET|/logout' => \Meta\Mvc\Controller\LogoutController::class,

    //usuario
    'GET|/usuario' => \Meta\Mvc\Controller\UsuarioListController::class,
    'GET|/adicionarUsuario' => \Meta\Mvc\Controller\NovoUsuarioController::class,
    'POST|/adicionarUsuario' => \Meta\Mvc\Controller\GravarUsuarioController::class,

    //produto
    'GET|/produto' => \Meta\Mvc\Controller\ProdutoListController::class,
    'GET|/adicionarProduto' => \Meta\Mvc\Controller\NovoProdutoController::class,
    'POST|/adicionarProduto' => \Meta\Mvc\Controller\GravarProdutoController::class,
    'GET|/removerProduto'  => \Meta\Mvc\Controller\ProdutoListController::class,
     
  
];

