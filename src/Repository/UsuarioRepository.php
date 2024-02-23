<?php

declare(strict_types=1);

namespace Meta\Mvc\Repository;

use Meta\Mvc\Entity\Usuario;
use PDO;
use DateTimeZone;

class UsuarioRepository
{
    public function __construct(private PDO $pdo)
    {
    }

    public function add(Usuario $usuario): bool
    {

        $today = date_create('now', new DateTimeZone('America/Sao_Paulo')); 

        $sql = 'INSERT INTO tb_usuario (login, nome, email,tp_usuario,dt_cadastro,login_cadastro,status,cd_origem) VALUES (?, ?, ?,?,?,?,?,?)';
        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $usuario->getLogin());
        $statement->bindValue(2, $usuario->getNome());
        $statement->bindValue(3, $usuario->getEmail());
        $statement->bindValue(4, $usuario->getTipoUsuario());
        $statement->bindValue(5, $today->format("Y-m-d H:i:s") );
        $statement->bindValue(6, $_SESSION['nome'] );
        $statement->bindValue(7,'A' );
        $statement->bindValue(8,$usuario->getCdOrigem());
        $result = $statement->execute();
        $id = $this->pdo->lastInsertId();

        $usuario->setCdUsuario(intval($id));

        return $result;
    }

    public function remove(int $id): bool
    {
        $sql = 'update tb_usuario set status="I"   WHERE id = ?';
        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $id);
        return $statement->execute();
    }

  

    /**
     * @return Usuario[]
     */
    public function all(): array
    {
        $usuarioList = $this->pdo
            ->query('SELECT * FROM tb_usuario ;')
            ->fetchAll(PDO::FETCH_ASSOC);
        return array_map(
            $this->hydrateUsuario(...),
            $usuarioList
        );
    }

    public function find(int $id)
    {
        $statement = $this->pdo->prepare('SELECT * FROM usuario WHERE id = ?;');
        $statement->bindValue(1, $id, PDO::PARAM_INT);
        $statement->execute();

        return $this->hydrateUsuario($statement->fetch(PDO::FETCH_ASSOC));
    }

    private function hydrateUsuario(array $usuarioData): Usuario
    {
        $usuario = new Usuario( );
        $usuario->setCdUsuario($usuarioData['cd_usuario']);
        $usuario->setLogin($usuarioData['login']);
        $usuario->setNome($usuarioData['nome']);
        $usuario->setTipoUsuario($usuarioData['tipo']);
        $usuario->setEmail($usuarioData['email']);
 

      

        return $usuario;
    }
}
