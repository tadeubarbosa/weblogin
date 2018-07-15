<?php

namespace App\controller;

use App\view\View;

class HomeController {
    
    public function index() {
        $view = new View('site/index.phtml');
        return $view->render();  
    }
        
}
