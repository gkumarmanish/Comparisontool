<?php

/*
 * In Debug Mode Log all the errors. TODO when we move to phalcon errors rather then php errors
 */
ini_set('display_errors', 1);
ini_set('log_errors', 1);
/*
 * Default Time Zone Setting
 */
define("DEFAULTTIMEZONE", 'Asia/Kolkata');
date_default_timezone_set(DEFAULTTIMEZONE);
/*
 * Default Charcter Set
 */
define("__CHARACTER_SET__", "utf8");
/*
 * Default Debug modes
 */
define("__DEBUG_MODE__", TRUE);
define("__TRACKING__", true);
define("__DEFAULT_VOLT_COMPILE__", true);
define("__MYSQL_LOG_ERROR__", false); //false-log in file, true-show on screen
define("__MYSQL_LOG_QUERY__", true);
/*
 * Default Configuration (Default Paths)
 */
define("__ROOT__", "http://localhost/");
define("__DIR_BASE__", "/Comparisontool/");
define("__DIR_CT__", __ROOT__ . "Comparisontool/");
define("__PUBLIC__", __DIR_CT__ . "public/");



/*
 * Require folder related paths
 * Please do not use absolute path here because phalcon does not support absolute path for base files.
 */
define("__REQUIRE_PATH__", "../require/");
/*
 * App Related Paths
 */
define("__APP_PATH__", "../app/");
define("__CONTROLLER__", __APP_PATH__ . "controllers/");
define("__MODEL__", __APP_PATH__ . "models/");
define("__VIEW__", __APP_PATH__ . "views/");
define("__CACHE__", __APP_PATH__ . "cache/");


/*
 * Volt related paths
 */
define("__VOLT__", __CACHE__ . "volt/");


/*
 * Now Include all other config files
 */
require 'ViewConfig.inc.php';
