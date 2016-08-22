<?php

/* * ***************************************************************
 *  Project: ComparisonTool
 *  File Name: Service.php
 *  Created By: Manish Kumar Gupta
 * **************************************************************** */


/*
 * Adding all required services here
 * 
 * Commented out classes may be required depending on requirements
 */

use Phalcon\Mvc\View as PhalconView;
use Phalcon\Mvc\View\Engine\Volt as PhalconVolt;
use Phalcon\Session\Adapter\Files as SessionAdapter;
use Phalcon\Mvc\Dispatcher as MvcDispatcher;


/**
 * The URL component is used to generate all kind of urls in the application
 */
$di->set(
        'url', function () use ($config) {
    $url = new \Phalcon\Mvc\Url();

        $url->setBaseUri($config->application->development->baseUri);
        $url->setStaticBaseUri($config->application->development->staticBaseUri);
    return $url;
}, true
);




$di->set('view', function() {

    $view = new PhalconView();

    /**
     * Get the array of directories from the given base path
     */
    $result = CommonFunctions::common_getDirectoryList(__VIEW__);

    /**
     * Handling the error
     */
    if ($result[0] == -1) {
        die($result[1]);
    } else {
        $resultHas = 1;
    }

    if ($resultHas == 1) {
        try {

            /*
             * Register base VIEW PATH first
             * Register the subdirectories of the view
             * IMP : setViewsDir should be called only once
             */
            $view->setViewsDir(__VIEW__);
	    
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    } else {
        die("Error in getting view directories<br>");
    }

    $view->registerEngines(array(
        ".volt" => 'volt'
    ));

    return $view;
});

/**
 * Setting up volt
 */
$di->set(
        'volt', function ($view, $di) use ($config) {

    $volt = new PhalconVolt($view, $di);

    $volt->setOptions(
            array(
                "compiledPath" => __VOLT__,
                "compiledSeparator" => "_",
                "compileAlways" => __DEFAULT_VOLT_COMPILE__
            )
    );
    
    $compiler = $volt->getCompiler();
    //add new function volt_rand
    $compiler->addFunction('volt_rand', 'array_rand');
    //add new function volt_in_array
    $compiler->addFunction('volt_in_array', 'in_array'); //volt_in_array(search value, array);
    //add new function volt_is_array
    $compiler->addFunction('volt_is_array', 'is_array'); //volt_is_array(string);
    
    $compiler->addFunction('volt_array_merge', 'array_merge'); //volt_array_merge(array1, array2);
    
    $compiler->addFunction('volt_array_push', 'array_push'); //volt_array_push(array, value);
    
    $compiler->addFunction('volt_get_content', 'file_get_contents'); //volt_get_content(url);
    
    $compiler->addFunction('volt_base64_encode', 'base64_encode'); //base64_encode(normal_str);
    
    $compiler->addFunction('volt_base64_decode', 'base64_decode'); //base64_decode(encrypted_str);
    
    $compiler->addFunction('volt_implode', 'implode'); //implode(array, delimeter);
    return $volt;
}, true
);


/**
 * Start the session the first time some component request the session service
 */
$di->setShared('session', function() {
    $session = new SessionAdapter();
    $session->start();
    $session->set('session_started',TRUE);
    return $session;
});



/**
 * Router
 */
$di->set(
        'router', function () {

    $router = new Phalcon\Mvc\Router();

    include __REQUIRE_PATH__ . "routes.php";
    return $router;
}, true
);
/*
 * Registering a dispatcher
 */
$di->set('dispatcher',
    function() use ($di) {

        $evManager = $di->getShared('eventsManager');

        $evManager->attach(
            "dispatch:beforeException",
            function($event, $dispatcher, $exception)
            {
                switch ($exception->getCode()) {
                    case MvcDispatcher::EXCEPTION_HANDLER_NOT_FOUND:
                    case MvcDispatcher::EXCEPTION_ACTION_NOT_FOUND:
                        $dispatcher->forward(
                            array(
                                'controller' => 'index',
                                'action'     => 'show404'
                            )
                        );
                        return false;
                }
            }
        );
        $dispatcher = new MvcDispatcher();
        $dispatcher->setEventsManager($evManager);
        return $dispatcher;
    },
    true);
    
/*
 * Registering a EventsManager
 */
$di->setShared('event', function() {
    return new EventsManager();
});    
    
/*
 * Registering a Custom Logger
 */
$di->setShared('cLogger', function() {
    return new Logger();
});    

/*
 * Registering a Http\Response
 */
$di->set('response', function() {
    return new \Phalcon\Http\Response();
});

/*
 * Registering a Http\Request
 */
$di->set('request', function() {
    return new \Phalcon\Http\Request();
});


/**
 * Register the configuration itself as a service
 */
$di->set('config', $config);

/*
 * Register Common Function as a service
 */
$di->set('commonfunction', $this->commonfunction);


