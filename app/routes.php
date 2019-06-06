<?php

// Home
$app
    ->get(
        '/',
        function($request, $response)
        {
            // View data
            $viewData = [];


            return $this->view->render($response, 'pages/intro.twig', $viewData);
        }
    )
    ->setName('intro')
;

// Home
$app
    ->get(
        '/home',
        function($request, $response)
        {
            // Fetch promotions
            $query = $this->db->query('SELECT * FROM articles ORDER BY `articles`.`date` DESC');
            $article = $query->fetchAll();
            
            // View data
            $viewData = [];
            $viewData['articles'] = $article;
            
            return $this->view->render($response, 'pages/home.twig', $viewData);
        }
    )
    ->setName('home')
;

// about
$app
    ->get(
        '/about',
        function($request, $response)
        {
            $viewData = [];

            return $this->view->render($response, 'pages/about.twig', $viewData);
        }
    )
    ->setName('about')
;

//Random article

$app
    ->get(
        '/article/random',
        function($request, $response)
        {
            // Fetch random article
            $query = $this->db->query('SELECT * FROM articles ORDER BY RAND() LIMIT 1');
            $article = $query->fetch();
        
            // Generate url
            $url = $this->router->pathFor('article', [ 'slug' =>  $article->slug]);

            // Return response with redirection
            return $response->withRedirect($url);
        }
    )
    ->setName('random_article')
    ;

// article 

$app
    ->get(
        '/article/{slug:[a-z0-9-_]+}',
        function($request, $response, $arguments)
        {
            // Fetch article
            $prepare = $this->db->prepare(
                'SELECT * FROM articles WHERE slug = :slug LIMIT 1'
            );
            $prepare->bindValue('slug', $arguments['slug']);
            $prepare->execute();
            $article = $prepare->fetch();
            if(!$article){
                throw new \Slim\Exception\NotFoundException($request, $response);
            }

            // Fetch random article
            $prepare = $this->db->prepare('SELECT * FROM articles WHERE slug != :slug ORDER BY RAND() LIMIT 1');
            $prepare->bindValue('slug', $arguments['slug']);
            $prepare->execute();
            $article_new = $prepare->fetch();
        
            // Generate url
            $url = $article_new->slug;
        
            $viewData = [];
            $viewData['article'] = $article;
            $viewData['article_url'] = $url;
            $viewData['article_new'] = $article_new;
            return $this->view->render($response, 'pages/article.twig', $viewData);
        }
    )
    ->setName('article')
;


