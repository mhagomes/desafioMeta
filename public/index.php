<?php

declare(strict_types=1);

use  Meta\Mvc\Controller\Controller;
use Meta\Mvc\Controller\Error404Controller;
use Meta\Mvc\Repository\UsuarioRepository;
use Meta\Mvc\Repository\LogAcessoRepository;
use Meta\Mvc\Repository\ClienteRepository;
use Meta\Mvc\Repository\ProdutoRepository;

 

require_once __DIR__ . '/../vendor/autoload.php';
require_once __DIR__ . '/../config/config.php';

  error_reporting(E_ALL);
  ini_set('error_reporting', E_ALL);
  ini_set('display_errors',1);
 


//$pdo =  new PDO( 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASSWORD );
$pdo = new PDO('pgsql:host=' . DB_HOST .';port='  . DB_PORT . ';dbname=' . DB_NAME, DB_USER,  DB_PASSWORD);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 
 
 
$usuarioRepository = new UsuarioRepository($pdo);
$produtoRepository =new ProdutoRepository($pdo);
$clienteRepository = new ClienteRepository($pdo);
$logAcessoRepository = new LogAcessoRepository($pdo);

$routes = require_once __DIR__ . '/../config/routes.php';
 

$pathInfo = $_SERVER['PATH_INFO'] ?? '/';
$httpMethod = $_SERVER['REQUEST_METHOD'];

session_start();
session_regenerate_id();



$isLoginRoute = $pathInfo === '/login';
if (!array_key_exists('logado', $_SESSION) && !$isLoginRoute) {
    header('Location: /login');
    return;
}

$key = "$httpMethod|$pathInfo";
 // var_dump($key);
if (array_key_exists($key, $routes)) {

    $controllerClass = $routes["$httpMethod|$pathInfo"];
    //  var_dump($controllerClass);
    $controller = new $controllerClass( $produtoRepository, $clienteRepository, $logAcessoRepository, $usuarioRepository);
} else {
    $controller = new Error404Controller();
}
/** @var Controller $controller */
$controller->processaRequisicao();
