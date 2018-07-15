<?php

namespace App\controller;

use App\view\View;
use App\Db\Connect;
use App\entidades\OrdemServico;

class DashboardController {
    
    public function index() {
        
        $pdo = Connect::getInstance();
        
        $view = new View('site/dashboard.phtml');
        
        $view->os = (new OrdemServico($pdo))->buscaProdutos();
        return $view->render();
        
    }
        
}
