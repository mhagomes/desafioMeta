<?php

declare(strict_types=1);

namespace Meta\Mvc\Repository;

use Meta\Mvc\Entity\Cliente;
use PDO;
use DateTimeZone;

class ClienteRepository
{
    public function __construct(private PDO $pdo)
    {
    }

    public function add(Cliente $cliente): bool
    {

        $today = date_create('now', new DateTimeZone('America/Sao_Paulo')); 

   
 
        $sql  = ' INSERT INTO tb_cliente (cpf_cnpj ,	razao_social,	 nm_fantasia  ,	 nm_comercial  ,	 telefone_comercial  ,	 celular_comercial ,';
        $sql .= ' email_comercial  ,	 	 tx_observacao  , ';
        $sql .= ' dt_cadastro  ,	 dt_alteracao ,	 login_cadastro  )	  ';
      
        $sql .= ' VALUES (?,?,?,?,?,?,?,?,?,?,?)';
        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $cliente->getCpfCnpj());
        $statement->bindValue(2, $cliente->getRazaoSocial());
        $statement->bindValue(3, $cliente->getNomeFantasia());
        $statement->bindValue(4, $cliente->getContatoComercial());
        $statement->bindValue(5, $cliente->getTelefoneComercial());
        $statement->bindValue(6, $cliente->getCelularComercial());
        $statement->bindValue(7, $cliente->getEmailComercial());
        $statement->bindValue(8, $cliente->getObservacao());
        $statement->bindValue(9, $today->format("Y-m-d H:i:s") );
        $statement->bindValue(10, $today->format("Y-m-d H:i:s") );
        $statement->bindValue(11, $_SESSION['nome'] );


         
        $result = $statement->execute();
        $id = $this->pdo->lastInsertId();

        $cliente->setCdCliente(intval($id));

        return $result;
    }


    public function update(Cliente $cliente): bool
    {

        $today = date_create('now', new DateTimeZone('America/Sao_Paulo')); 

   
 
        $sql  = ' update tb_cliente set 	razao_social=?,	 nm_fantasia=?  ,	 nm_comercial=?  ,	 telefone_comercial =? ,	 celular_comercial=? ,';
        $sql .= ' email_comercial=?  ,	 	 tx_observacao=?  , ';
        $sql .= '  	 dt_alteracao =?,	 login_cadastro =? 	  ';
      
        $sql .= ' Where cd_cliente=?';

        var_dump($sql);

        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $cliente->getRazaoSocial());
        $statement->bindValue(2, $cliente->getNomeFantasia());
        $statement->bindValue(3, $cliente->getContatoComercial());
        $statement->bindValue(4, $cliente->getTelefoneComercial());
        $statement->bindValue(5, $cliente->getCelularComercial());
        $statement->bindValue(6, $cliente->getEmailComercial());
        $statement->bindValue(7, $cliente->getObservacao());
        $statement->bindValue(8, $today->format("Y-m-d H:i:s") );
        $statement->bindValue(9, $_SESSION['nome'] );
        $statement->bindValue(10, $cliente->getCdCliente());

         
        $result = $statement->execute();
           

        return $result;
    }



    public function remove(int $cdCliente) : bool
    {
        $sql = 'delete from  tb_cliente   WHERE cd_cliente = ?';
        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $cdCliente);
        return $statement->execute();
    }

  

    /**
     * @return Cliente[]
     */
    public function all(): array
    {
        $listaCliente = $this->pdo
            ->query('SELECT * FROM tb_cliente;')
            ->fetchAll(PDO::FETCH_ASSOC);
        return array_map(
            $this->hydrateCliente(...),
            $listaCliente
        );
    }

    public function find(int $cdCliente)
    {
        $statement = $this->pdo->prepare('SELECT * FROM tb_cliente WHERE cd_cliente = ?;');
        $statement->bindValue(1, $cdCliente, PDO::PARAM_INT);
        $statement->execute();

        return $this->hydrateCliente($statement->fetch(PDO::FETCH_ASSOC));
    }


    public function findDocumento(int $cpfCnpj):bool
    {
        $statement = $this->pdo->prepare('SELECT * FROM tb_cliente WHERE cpf_cnpj = ?;');
        $statement->bindValue(1, $cdCliente, PDO::PARAM_INT);
        return $statement->execute();
    }   

    private function hydrateCliente(array $clienteData) :Cliente
    {
        $cliente = new Cliente();
        $cliente->setCdCliente($clienteData['cd_cliente']);
        $cliente->setRazaoSocial($clienteData['razao_social']);
        $cliente->setCpfCnpj($clienteData['cpf_cnpj']);
        $cliente->setNomeFantasia($clienteData['nm_fantasia']);
        $cliente->setContatoComercial($clienteData['nm_comercial']);
        $cliente->setTelefoneComercial($clienteData['telefone_comercial']);
        $cliente->setCelularComercial($clienteData['celular_comercial']);
        $cliente->setEmailComercial($clienteData['email_comercial']);
        $cliente->setObservacao($clienteData['tx_observacao']);
        $cliente->setDtCadastro($clienteData['dt_cadastro']);
        $cliente->setDtAlteracao($clienteData['dt_alteracao']);
        $cliente->setLoginCadastro($clienteData['login_cadastro']);
        return $cliente;
 
    }
}
