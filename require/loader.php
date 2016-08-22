<?php


/**
 * Contains all the necessary info for loading directories in bootstrap index.php file
 */
$loader = new \Phalcon\Loader();

/**
* Get the array of directories from the given base path
*/
$result = $this->commonfunction->common_getDirectoryList(__CONTROLLER__);



 /**
 * Handling the error
 */
if($result[0]==-1){
    die($result[1]);
}
 else {
    try{
        /*
         * register the base controller directory first
         * then register the controller subdirectories
         * then register the base model directory because all models are present at the same place
         * 
         * IMP : registerDir function should be called only once
         */
        
        /*
         * Call the coomon getfolder function to get all controller paths
         */
       
       
       $loader->registerDirs($this->commonfunction->common_getFolderInArray(array(__CONTROLLER__,__MODEL__), __CONTROLLER__));
       $loader->register();
        
         

    }
     catch(Exception $e)
     {
       echo "Loader: ".$e->getMessage()."<br>";
       //print_r($result);
     }
    
}


