<?php

declare(strict_types=1);

namespace Meta\Mvc\Entity;

class Usuario
{
    public readonly int $cd_usuario;
    public readonly string $login;

    public readonly string $nome;
    public readonly string $email;
    public readonly string $tipoUsuario;

    public readonly string $status;

    public readonly string $cd_origem;

    public function __construct(){       
    }

    public function setLogin(string $login)
    {
        $this->login = $login;
    }

    public function setNome(string $nome)
    {
        $this->nome = $nome;
    }

    public function setEmail(string $email)
    {
        $this->email = $email;
    }

    public function setTipoUsuario(string $tipoUsuario)
    {
        $this->tipoUsuario =$tipoUsuario;
    }

    public function setCdUsuario(int $cd_usuario): void
    {
        $this->cd_usuario = $cd_usuario;
    }

    
    public function setCdOrigem(string $cd_origem): void
    {
        $this->cd_origem = $cd_origem;
    }


    public function setStatus(string $status)
    {
        $this->status = $status;
    }

    public function getStatus(): ?string
    {
        return $this->status;
    }


    public function getCdUsuario(): ?int
    {
        return $this->cd_usuario;
    }

    public function getCdOrigem(): ?string
    {
        return $this->cd_origem;
    }

    public function getNome(): ?string
    {
        return $this->nome;
    }
 
    public function getLogin(): ?string
    {
        return $this->login;
    }
 
    
    public function getEmail(): ?string
    {
        return $this->email;
    }
 
    public function getTipoUsuario(): ?string
    {
        return $this->tipoUsuario;
    }
}
