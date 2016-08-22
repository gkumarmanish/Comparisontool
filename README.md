Steps to Run the Application

1. Require installation and setup for the application
   
  Phpmyadmin

  Apache
  
  phalcon

2. Open PHPMyAdmin and create new Database name as comparisontool and then import the SQL file provided in Source code for creating datatable.

3. Change the mysql database credential in app/models/HomeModel.php.
 
4. Run the Project in the Browser Type 
   
   Url: http://localhost/Comparisontool

5. If showing error in Linux System

"failed to open stream: Permission denied in /var/www/html/Comparisontool/public/index.php on line 74
 Volt directory can't be written"

  Kindly give the write permission to  /var/www/html/Comparisontool/app/cache/volt.
