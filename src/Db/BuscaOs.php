<?php

namespace App\Db;

use \PDO;

abstract class BuscaOs{
    
    private $conn;
    protected $tabela;


    public function __construct(\PDO $conn){
        $this->conn = $conn;
    }
    
    public function buscaProdutos($campos='*', $orderBy='ASC'){
        
        $sql = "SELECT " . $campos . " FROM " . $this->tabela . " ORDER BY id" . $orderBy;
        $get = $this->conn->query($sql);
        
        return $get->fetchAll(PDO::FETCH_ASSOC);
    }
    

    public function busca(int $id, $campos='*'){
        
        $sql = "SELECT " . $campos . " FROM " . $this->tabela . " WHERE id= :id ";

        $get = $this->conn->prepare($sql);
        $get->bindValue(':id', $id,\PDO::PARAM_INT);
      
        $get->execute();

        return $get->fetch(PDO::FETCH_ASSOC);
    }
    
}
