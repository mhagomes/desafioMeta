<?php

declare(strict_types=1);

namespace Meta\Mvc\Repository;

use Meta\Mvc\Entity\Produto;
use PDO;
use DateTimeZone;



class ProdutoRepository
{
    public function __construct(private PDO $pdo)
    {
    }

    public function add(Produto $produto): bool
    {

        $today = date_create('now', new DateTimeZone('America/Sao_Paulo')); 


 
        $sql  = ' INSERT INTO tb_produto (nome ,	login_cadastro,	 quantidade  ,	 dt_cadastro )';
        $sql .= ' VALUES (?,?,?,?)';
        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $produto->getNome());
        $statement->bindValue(2, $_SESSION['nome'] );
        $statement->bindValue(3, $produto->getQuantidade());
        $statement->bindValue(4, $today->format("Y-m-d H:i:s") );
         
        $result = $statement->execute();
        $id = $this->pdo->lastInsertId();

        $produto->setCdProduto(intval($id));

        return $result;
    }

    public function remove(int $cdProduto) : bool
    {
        $sql = 'delete from tb_produto   WHERE cd_produto = ?';
        $statement = $this->pdo->prepare($sql);
        $statement->bindValue(1, $cdProduto);
        return $statement->execute();
    }

  

    /**
     * @return Produto[]
     */
    public function all(): array
    {
        $produtoList = $this->pdo
            ->query('SELECT * FROM tb_produto ')
            ->fetchAll(PDO::FETCH_ASSOC);
        return array_map(
            $this->hydrateProduto(...),
            $produtoList
        );
    }

    public function find(int $cdProduto)
    {
        $statement = $this->pdo->prepare('SELECT * FROM tb_produto WHERE cd_produto = ?;');
        $statement->bindValue(1, $cdProduto, PDO::PARAM_INT);
        $statement->execute();

        return $this->hydrateProduto($statement->fetch(PDO::FETCH_ASSOC));
    }

    private function hydrateProduto(array $produtoData) :Produto
    {

        
        $produto = new Produto();
        $produto->setCdProduto(intval($produtoData['cd_produto']));
        $produto->setLoginCadastro($produtoData['login_cadastro']);
        $produto->setNome($produtoData['nome']);
        $produto->setQuantidade($produtoData['quantidade']);
        $produto->setDtCadastro($produtoData['dt_cadastro']);
     
        return $produto;
 
    }
}
