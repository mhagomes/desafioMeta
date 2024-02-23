<?php

declare(strict_types=1);

namespace Meta\Mvc\Entity;

class Cliente {
    public  int $CdCliente;
    public string $razaoSocial;
    public string $cpfcnpj;
    public string $nomeFantasia;
    public String $contatoComercial;
    public String $telefoneComercial;
    public String $celularComercial;
    public String $emailComercial;
    public string $observacao;
    public ?string $dtCadastro = null;
    public ?string $dtAlteracao = null;
    public ?string $loginCadastro = null;
    
  // Constructor
   public function __construct() {
    $this->CdCliente = 0; // Initialize CdCliente to some default value
 }

    // Getter para $CdCliente
    public function getCdCliente(): int {
        return $this->CdCliente;
    }

    // Getter para $razaoSocial
    public function getRazaoSocial(): string {
        return $this->razaoSocial;
    }

   

    // Getter para $cpfcnpj
    public function getCpfCnpj(): string {
        return $this->cpfcnpj;
    }

    // Getter para $nomeFantasia
    public function getNomeFantasia(): string {
        return $this->nomeFantasia;
    }

     // Getter para $contatoComercial
     public function getContatoComercial() {
       return $this->contatoComercial;
    }

      // Getter para $telefoneComercial
      public function getTelefoneComercial() {
        return $this->telefoneComercial;
     }

      // Getter para $celularComercial
      public function getCelularComercial() {
        return $this->celularComercial;
     }


       // Getter para $observacao
       public function getObservacao() {
        return $this->observacao;
     }

  
    // Getter para $emailComercial
    public function getEmailComercial() {
        return $this->emailComercial;
     }

  

    // Getter para $dtCadastro
    public function getDtCadastro(): ?string {
        return $this->dtCadastro;
    }

  

    // Getter para $dtAlteracao
    public function getDtAlteracao(): ?string {
        return $this->dtAlteracao;
    }

    // Getter para $$loginCadastro
    public function getLoginCadastro() {
        return $this->loginCadastro;
     }

    
  

    // Setter para $CdCliente
    public function setCdCliente(int $CdCliente) {
        $this->CdCliente = $CdCliente;
    }
     
       
    // Setter para $razaoSocial
    public function setRazaoSocial(string $razaoSocial) {
        $this->razaoSocial = $razaoSocial;
    }

     
    // Setter para $cpfcnpj
    public function setCpfCnpj(string $cpfcnpj) {
        $this->cpfcnpj = $cpfcnpj;
    }

     // Setter para $nomeFatasia
     public function setNomeFantasia(string $nomeFantasia) {
        $this->nomeFantasia = $nomeFantasia;
    }
    
     // Setter para $contatoComercial
     public function setContatoComercial(string $contatoComercial) {
        $this->contatoComercial = $contatoComercial;
    }

    // Setter para $telefoneComercial
     public function setTelefoneComercial(string $telefoneComercial) {
        $this->telefoneComercial = $telefoneComercial;
    }

    // Setter para $celularComercial
    public function setCelularComercial(string $celularComercial) {
        $this->celularComercial = $celularComercial;
    }

    // Setter para $observacao
     public function setObservacao(string $observacao) {
          $this->observacao = $observacao;
     }

     // Setter para $emailComercial
       public function setEmailComercial(string $emailComercial) {
        $this->emailComercial = $emailComercial;
   }
    


    // Setter para $dt_cadastro
    public function setDtCadastro(?string $dtCadastro) {
        $this->dtCadastro = $dtCadastro;
    }

    // Setter para $dt_alteracao
    public function setDtAlteracao(?string $dtAlteracao) {
        $this->dtAlteracao = $dtAlteracao;
    }

    // Getter para $login_cadastro
    public function setLoginCadastro(): ?string {
        return $this->loginCadastro;
    }

     
}
