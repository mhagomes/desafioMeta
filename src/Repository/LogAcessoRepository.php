<?php

declare(strict_types=1);

namespace Meta\Mvc\Repository;

use DateTimeZone;
use Meta\Mvc\Entity\LogAcesso;
use PDO;

class LogAcessoRepository
{
    public function __construct(private PDO $pdo)
    {
    }

    public function add(LogAcesso $logAcesso): bool
    {
        $today = date_create('now', new DateTimeZone('America/Sao_Paulo')); 

        if ($_SERVER['REMOTE_ADDR'] == "") $ip = "no ip";
        else $ip = getHostByAddr($_SERVER['REMOTE_ADDR']);
      
        $host = $_SERVER['REMOTE_ADDR'];
        $logado ='proec'; 
        
        if (isset($_SESSION['logado'])){
           $logado = $_SESSION['logado'];
        }else{
          $logado ='proec'; 
        }

        $sql = 'INSERT INTO tb_log_acesso(login_usuario,descricao,hostname,ip,dt_acesso,hr_acesso) VALUES (?,?,?,?, CURRENT_DATE,CURRENT_TIME)';
        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $logado);
        $statement->bindValue(2, $logAcesso->getDescricaoLog());
        $statement->bindValue(3, $host);
        $statement->bindValue(4, $ip );
        
      

        //echo 'Sql Insert log acesso => ' . $sql;
        try {
               $result = $statement->execute();
               $id = $this->pdo->lastInsertId();

                $logAcesso->setCDLog(intval($id));

                $_SESSION['message'] = 'Log de Acesso adicionado com sucesso.';
                $_SESSION['type'] = "success";
                
        }catch (Exception $e) { 
  
                $_SESSION['message'] =  'Não foi possivel realizar a operação .  Contactar o administrador do sistema. ' ;
                $_SESSION['type'] = 'danger';
         
               
                $result=null;
        
          }

        return $result;
    }

    public function remove(String $cd_log): bool
    {
        $sql = 'DELETE FROM  tb_log_acesso WHERE  cd_log = ?';
        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $cd_log);
        $_SESSION['type']="Sucess";
        $_SESSION['Message'] = "Log de Acesso excluído com sucesso.";
        return $statement->execute();
    }


    /**
     * @return logAcesso[]
     */
    public function all(): array
    {
        $listaLogAcesso = $this->pdo
            ->query('SELECT * FROM tb_log_acesso;')
            ->fetchAll(PDO::FETCH_ASSOC);
        return array_map(
            $this->hydrateLogAcesso(...),
            $listaLogAcesso
        );
    }

    public function find(int $cd_log)
    {
        $statement = $this->pdo->prepare('SELECT * FROM tb_log_acesso WHERE cd_log = ?;');
        $statement->bindValue(1, $cd_log, PDO::PARAM_INT);
        $statement->execute();

        return $this->hydrateLogAcesso($statement->fetch(PDO::FETCH_ASSOC));
    }

    private function hydrateLogAcesso(array $logAcessoData): LogAcesso
    {
        $logAcesso = new LogAcesso();
         
        $logAcesso->setCDLog($logAcessoData['cd_log']);
        $logAcesso->setDataAcesso($logAcessoData['dt_acesso']);
        $logAcesso->setDescricaoLog($logAcessoData['descricao']);
        $logAcesso->setHostName($logAcessoData['hostname']);
        $logAcesso->setHoraAcesso($logAcessoData['hr_acesso']);
        $logAcesso->setLoginUsuario($logAcessoData['login_usuario']);
        $logAcesso->setIP($logAcessoData['ip']);
        
       

        return $logAcesso;
    }
}
