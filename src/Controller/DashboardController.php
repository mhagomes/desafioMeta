<?php

declare(strict_types=1);

namespace Meta\Mvc\Controller;

use Meta\Mvc\Repository\ProdutoRepository;

class DashboardController implements Controller
{
    public function __construct(private ProdutoRepository $produtoRepository  )
    {
    }

    public function processaRequisicao(): void
    {
        $produtoList = $this->produtoRepository->all();
        
         
        require_once __DIR__ . '/../../views/home.php';
    }
}
