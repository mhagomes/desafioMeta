<?php

declare(strict_types=1);

namespace Meta\Mvc\Entity;
class LogAcesso  {
    public readonly int $cdLog;
    public readonly string $loginUsuario;
    public  readonly string $descricaoLog;
    public readonly string $dataAcesso ;
    public  readonly string $horaAcesso ;
    public readonly string $hostname;
    public readonly string $ip;
      // Getter para $cdLog
      public function getCodigoLog(): int {
        return $this->cdLog;
    }
      
    // Setter para $cdLog
       public function setCDLog(int $cdLog) {
        $this->cdLog = $cdLog;
    } 


     // Getter para $loginUsuario
     public function getgetLoginUsuario(): String {
        return $this->loginUsuario;
    }
      
    // Setter para $loginUsuario
       public function setLoginUsuario(String $loginUsuario) {
        $this->loginUsuario = $loginUsuario;
    } 


         // Getter para $descricaoLog
         public function getDescricaoLog(): string {
            return $this->descricaoLog;
        }
    
        // Setter para $descricaoLog
        public function setDescricaoLog(string $descricaoLog) {
            $this->descricaoLog = $descricaoLog;
        }

        // Getter para $dataAcesso
        public function getDataAcesso(): string {
            return $this->dataAcesso;
        }
    
        // Setter para dataAcesso
        public function setDataAcesso(string $dataAcesso) {
            $this->dataAcesso = $dataAcesso;
        }

     // Getter para $$hostname
     public function getHostName(): string {
        return $this->hostname;
    }

    // Setter para $$hostname
    public function setHostName(string $hostname) {
        $this->hostname = $hostname;
    }


  
     // Getter para $horaAcesso
     public function getHoraAcesso(): string {
        return $this->horaAcesso;
    }

    // Setter para horaAcesso
    public function setHoraAcesso(string $horaAcesso) {
        $this->horaAcesso = $horaAcesso;
    }
   


    // Getter para $ip
    public function getIP(): string {
        return $this->ip;
    }

    // Setter para $ip
    public function setIP(string $ip) {
        $this->ip = $ip;
    }

  

}