<?php

namespace App\view;

class View {

    private $view;
    private $data = [];

    function __construct($view) {
        $this->view = $view;
    }

    function __set($name, $value) {
        $this->data[$name] = $value;
    }
    
    function __get($name) {
        return $this->data[$name];
    }
    
    function render(){
        ob_start();
        require VIEWS_PATH . $this->view;
        return ob_get_clean();
    }
    
}
