<?php

require __DIR__ . '/../config.php';


$url = substr($_SERVER['REQUEST_URI'], 1);
$url = explode('/', $url);


//Nome Controller ou Controller Default Page
$controller = isset($url[0]) && $url[0] ? $url[0] : 'home';

//Nome Metodo do Controller ou Metodo Default Index
$action = isset($url[1]) && $url[1] ? $url[1] : 'index';

// Pega parametro passado na casa 3 do array ou caso o metodo não existir utiliza como paramentro a casa 2 do array $url.
$param = isset($url[2]) && $url[2] ? $url[2] : null;


// Verificando se class e metodo existe passado na URI
if(!class_exists($controller = "App\controller\\" . ucfirst($controller).'Controller')){
    print (new App\view\View('site/erro404.phtml'))->render();
    die();
}

if(!method_exists($controller, $action)){
    $action = 'index';
    $param = $url[1];
}

// Iniciando Obj e executando metodo passado
$response = call_user_func_array([new $controller,$action], [$param]);

print $response;


