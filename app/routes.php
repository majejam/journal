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
            $query = $this->db->query('SELECT * FROM article');
            $articles = $query->fetchAll();

            // View data
            $viewData = [];
            $viewData['articles'] = $articles;

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


// articles 

$app
    ->get(
        '/article/{slug:[a-z0-9-_]+}',
        function($request, $response, $arguments)
        {
            // Fetch article
            $prepare = $this->db->prepare(
                'SELECT * FROM article WHERE slug = :slug LIMIT 1'
            );
            $prepare->bindValue('slug', $arguments['slug']);
            $prepare->execute();
            $article = $prepare->fetch();
            if(!$article){
                throw new \Slim\Exception\NotFoundException($request, $response);
            }
        
            $viewData = [];
            $viewData['article'] = $article;
            return $this->view->render($response, 'pages/article.twig', $viewData);
        }
    )
    ->setName('article')
;
