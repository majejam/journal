<?php

$container = $app->getContainer();

// View with Twig
$container['view'] = function($container)
{
    $view = new \Slim\Views\Twig('./views');

    $router = $container->get('router');
    $uri = \Slim\Http\Uri::createFromEnvironment(new \Slim\Http\Environment($_SERVER));
    $view->addExtension(new \Slim\Views\TwigExtension($router, $uri));

    return $view;
};

// Database with PDO
$container['db'] = function($container)
{
    $db = $container['settings']['db'];
    
    $pdo = new PDO('mysql:host='.$db['host'].';dbname='.$db['name'].';port='.$db['port'], $db['user'], $db['pass']);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    return $pdo;
};

// 404
$container['notFoundHandler'] = function($container)
{
    return function($request, $response) use ($container)
    {
        $viewData = [
            'code' => 404,
            'phonetic' => 'fɔː.rəʊˈfɔ',
            'definition' => 'The HTTP 404 error message is a Hypertext Transfer Protocol (HTTP) standard response code, in computer network communications, to indicate that the browser was able to communicate with a given server, but the server could not find what was requested.',
        ];

        return $container['view']->render($response->withStatus(404), 'pages/error.twig', $viewData);
    };
};

// 500
$container['errorHandler'] = function($container)
{
    return function($request, $response) use ($container)
    {
        $viewData = [
            'code' => 500,
            'phonetic' => "faɪv ˈhʌn.dɹɪd",
            'definition' => 'The HyperText Transfer Protocol (HTTP) 500 Internal Server Error server error response code indicates that the server encountered an unexpected condition that prevented it from fulfilling the request.',
        ];

        return $container['view']->render($response->withStatus(500), 'pages/error.twig', $viewData);
    };
};