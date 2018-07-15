<?php

namespace App\Db;


class Connect{
    
    private static $instance = null;
    
    private function __construct(){
        
    }
    
    public static function getInstance(){
        
        if(is_null(self::$instance)){
            self::$instance = new \PDO('mysql:host=localhost;dbname=Bd_site','suporte','senha');
            self::$instance->exec('SET NAMES UTF8');
        }
        
        return self::$instance;
    }
}