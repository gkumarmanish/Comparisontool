<?php

/*****************************************************************
 *  Project: Comparisontool
 *  File Name: CommonFunctions.php
 *  Created By: Manish Kumar Gupta
 ******************************************************************/

class CommonFunctions
{
    /**
     * 
     *This function will return an array of subdirectories(names only) for a given base directory.
     * 
     * Using PHP glob function inside to return directory names only 
     *<p>
     * <b>Proper usage:</b>
     * 
     * $result = common_getDirectoryList($base_directory_path)
     * if($result[0] == -1){
     *   //Handle error
     * } else{
     *   //use $result array
     * }
     * </p>
     * @param string $base_directory_path <p>
     * This tells the base directory path
     * </p>
     * 
     * @return mixed -1 if exception is thrown or the array if function completed with no errors
     * 
     *  
     */
    
    public static function common_getDirectoryList($base_directory_path) 
    {
              
       try
       {
           return glob($base_directory_path . '/*' , GLOB_ONLYDIR);      
       }
       catch(Exception $e)
       {
           return array(-1,$e->getMessage());
       }       
        
    }
    /*
     * If we want to get all folder in directory excluding hidden folder we can use this.
     * 
     * Where default directory take array as input
     * 
     * path take directory full path as parameter.
     * 
     * Please Avoid relative paths. RElative path may be create a problem.
     * 
     * If no folder found in the directory then it will return default dir array
     */
    public static function common_getFolderInArray($default_dir, $path) {
        
        /*
         * First check for array. If array Not found then assign an empty array.
         */
        if(!is_array($default_dir))
        {
            $default_dir = array();
        }
        $appRegisterArray = $default_dir;

         // remove all hidden folder
        foreach (new DirectoryIterator($path) as $file)
        {
            if($file->isDot()){ continue; }

            if($file->isDir())
            {
                $str = $file->getFilename();
                if(isset($str[0]) && $str[0]!='.')
                {
                    $appRegisterArray[] = $path.$str.'/';
                }
            }
        }

        return $appRegisterArray;
    }
    /*
     * This function return the client ip
     */
    public static function getclientip() {
            $ipaddress = '';
            if (getenv('HTTP_CLIENT_IP'))
                $ipaddress = getenv('HTTP_CLIENT_IP');
            else if(getenv('HTTP_X_FORWARDED_FOR'))
                $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
            else if(getenv('HTTP_X_FORWARDED'))
                $ipaddress = getenv('HTTP_X_FORWARDED');
            else if(getenv('HTTP_FORWARDED_FOR'))
                $ipaddress = getenv('HTTP_FORWARDED_FOR');
            else if(getenv('HTTP_FORWARDED'))
               $ipaddress = getenv('HTTP_FORWARDED');
            else if(getenv('REMOTE_ADDR'))
                $ipaddress = getenv('REMOTE_ADDR');
            else
                $ipaddress = 'UNKNOWN';
            return $ipaddress;
    }
    /*
     * date function
     * @Inputs:
     * operation => which type of operation you want like add time or subtract time. For add time use + and for subtract time use -
     * duration => duration of time
     * type => type means days, hours, minutes, seconds, months etc 
     * 
     * @Ouput: return new time according to the parameter 
     */
    public static function getNewTime($operation, $duration, $type)
    {
       $Date = date('Y-m-d H:i:s');
       return date('Y-m-d H:i:s', strtotime($Date. ' '.$operation.' '.$duration.' '.$type));
    }
    public static function getDateTime()
    {
       return date('Y-m-d H:i:s');
    }
    public static function getDate()
    {
       return date('Y-m-d');
    }
    public static function getTime()
    {
       return date('H:i:s');
    }
    public static function getRandomNumber($prefix){
        $Date = date('Y-m-d H:i:s');
        $ran_num = strtotime($Date);
        return $prefix.$ran_num;
    }
    /*
     * Theme error functions
     */
    public static function getErrorMessage($data){
        return '<div class="note note-danger" style="color:#000;">
								<button type="button" class="close" data-dismiss="alert"></button>
								<h4 class="block" style="color:#000;">Error!</h4>
								<p style="color:#000;">
							         '.$data.'
								</p>
							</div>';
        
    }
    public static function getSuccessMessage($data){
        return '<div class="note note-success text-black" style="color:#000;">
								<button type="button" class="close" data-dismiss="alert"></button>
								<h4 class="block" style="color:#000;">Success!</h4>
								<p style="color:#000;">
								'.$data.'
								</p>
							</div>';
    }
    public static function getInfoMessage($data){
       return '<div class="note note-info" style="color:#000;">
								<button type="button" class="close" data-dismiss="alert"></button>
								<h4 class="block" style="color:#000;">Info!</h4>
								<p style="color:#000;">
								'.$data.'
								</p>
							</div>'; 
    }
    public static function getWarningMessage($data){
       return '<div class="note note-warning" style="color:#000;">
								<button type="button" class="close" data-dismiss="alert"></button>
								<h4 class="block" style="color:#000;">Warning!</h4>
								<p style="color:#000;">
								'.$data.'
								</p>
							</div>'; 
    }
    public static function getCustomMessage($class, $header, $data){
       return '<div class="note note-'.$class.'" style="color:#000;">
								<button type="button" class="close" data-dismiss="alert"></button>
								<h4 class="block" style="color:#000;">'.$header.'</h4>
								<p style="color:#000;">
								'.$data.'
								</p>
							</div>';
    }

    
}

/**************************************
 * Modifications history:
 * Modification By Amit Kumar on 30/08/14
 * Add  common_getFolderInArray function
 * Modification by Amit Kumar on 03/09/14
 * Add client Ip function
 * Add time function
 * Add theme error functions
 **************************************/