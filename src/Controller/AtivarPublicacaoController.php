<?php

declare(strict_types=1);

namespace Upe\Mvc\Controller;

use Upe\Mvc\Repository\PublicacaoRepository;

class AtivarPublicacaoController implements Controller
{
    public function __construct(private PublicacaoRepository $publicacaoRepository)
    {
    }

    public function processaRequisicao(): void
    {
        $cd_publicacao = filter_input(INPUT_GET, 'cd_publicacao', FILTER_VALIDATE_INT);
        if ($cd_publicacao === null || $cd_publicacao === false) {
            header('Location: /publicacao');
            return;
        }

        $success = $this->publicacaoRepository->ativar($cd_publicacao);
        if ($success === false) {
            header('Location: /publicacao');
        } else {
            header('Location: /publicacao');
        }

    }
}
