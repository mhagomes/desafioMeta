<?php

declare(strict_types=1);

namespace Meta\Mvc\Controller;

class LoginController implements Controller
{
    private \PDO $pdo;

    public function __construct()
    {
         
       /// $this->pdo =   new \PDO( 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASSWORD );
        $this->pdo = new \PDO('pgsql:host=' . DB_HOST .';port='  . DB_PORT . ';dbname=' . DB_NAME, DB_USER,  DB_PASSWORD);
       // $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    public function processaRequisicao(): void
    {
        $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
        $password = filter_input(INPUT_POST, 'password');

        $sql = 'SELECT * FROM public.tb_usuario WHERE   email = ?';
        
        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $email);
        $statement->execute();

        $userData = $statement->fetch(\PDO::FETCH_ASSOC);
        var_dump($userData);
      

        $correctPassword = password_verify($password, $userData['senha'] ?? '');

        if (password_needs_rehash($userData['senha'], PASSWORD_ARGON2ID)) {
            $statement = $this->pdo->prepare('UPDATE tb_usuario SET senha = ? WHERE cd_usuario = ?');
            $statement->bindValue(1, password_hash($password, PASSWORD_ARGON2ID));
            $statement->bindValue(2, $userData['cd_usuario']);
            $statement->execute();
        }

        if ($correctPassword) {
            //gravando as variaveis de seção
            $_SESSION['logado'] = true;
            $_SESSION['tipoUsuario'] == 'A';
            $_SESSION['nome'] = $userData['nome'];
            $_SESSION['email'] = $userData['email'];
            header('Location: /');
        } else {
            header('Location: /login?sucesso=0');
        }
    }
}
