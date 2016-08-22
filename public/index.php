<?php //
/*
 * Include all necessary files required globally below
 * 
 * Including Global common functions required by the application
 */
error_reporting(E_ALL);
require __DIR__.'/../require/config/Common.ini.php';
require __REQUIRE_PATH__."CommonFunctions.php";
    
    class Application extends \Phalcon\Mvc\Application
    {
        public $commonfunction;
        public $oauth;
        public $querylogger;
        /**
	 * This methods registers the directories in which controllers and model classes are present
	 */
	protected function _registerAutoloaders()
	{
            require __REQUIRE_PATH__."loader.php";   
    }

	/**
	 * This methods registers the services to be used by the application
	 */
	protected function _registerServices()
	{
                
                /**
                 * Register services that are common for all the modules . Register services that are module-specific in the respective modules
                 */
                                  
		$di = new \Phalcon\DI\FactoryDefault();
               
                $config = new \Phalcon\Config(array(

                            'application' => array(

                                'development'    => array(
                                    'staticBaseUri' => __DIR_CT__,
                                    'baseUri'       => __DIR_BASE__
                                ),
                                'production'     => array(
                                    'staticBaseUri' => __DIR_CT__,
                                    'baseUri'       => __DIR_BASE__
                                )
                            ),
                         ));
                
                  
                
                require __REQUIRE_PATH__."services.php";
                
                $this->setDI($di);       
                
	}

	public function main()
	{
                /*
                 * First make object for external php files 
                 */
                $this->commonfunction = new CommonFunctions();
                $this->_registerAutoloaders();
				$this->_registerServices();
                /*
                 * Initiate for error handling via php inbuilt function
                 * general syntax as below
                 * handler(class name, function of that class);
                 */
				
               
		echo $this->handle()->getContent();
	}
         

}
 try
    {        
    	$application = new Application();
        $application->main();
    }
    catch(Exception $e)
    {
        echo $e->getMessage();
    }   