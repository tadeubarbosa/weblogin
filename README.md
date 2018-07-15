## Projeto - Modelo de Área de Login com Dashboard PHP POO com MVC - Mobile First ##

#O Projeto:

O projeto final será toda área de login finalizada, com os dados passados via ajax para a página 'dashboard.phtml'.
Dados extraidos do banco de dados MySql. (Subirei o projeto finalizado!).

#Informações:

Área de login construida com Html5, CSS3, Jquery, Javascript, PHP POO sobre o padrão MVC.
E com acesso a banco de dados Mysql.

- Estrutura dos diretorios:

-- Public/ 
    **Contem os arquivos disponiveis para acesso no navegador, diretório disponivel para web.**
 |
 --- index.php
    ** Arquivo utiliza o controller 'HomeController.php' verifica a URI passada. Separando por / verificando 
       se existe o controller e metodo passado no controller solicitado, caso não exista controle e metodo mostra pagina de erro 404.
       Caso não seja passado valor na URI executa Controler 'HomeControler.php' com o metodo default.

--- src/
 |
 ---Db/ - Contem as classes de conexão e gerenciamento do banco de dados.
 | 
 ---controller/ - Contem os controllers do sistema.
 |
 ---entidades/ - Contem a entidade do negócio.
 |
 ---view/ - Contem a classe do Objeto View.
 
--- vendor/ - Arquivos Autoload feito com composer.

--- views/ - Includes e paginas '.phtml' para acesso do controller.

-composer.json - Arquivo composer.
-config.php - Arquivo com as constantes do sistema.


#Banco de Dados:

Como teste foi feita uma tabela no banco de dados MySql versão 5.7.22 para exemplo da busca de dados na página de Dashboard.


// SQL - Criação da tabela de teste (Tabela `s_os` - Página DashBoard):

CREATE TABLE `s_os` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
    
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

//Fim
