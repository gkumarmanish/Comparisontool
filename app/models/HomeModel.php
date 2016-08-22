<?php

class HomeModel extends \Phalcon\Mvc\Model {

   
    
    
     public function getPropertyList()
    {
            $servername = "localhost";
            $username = "root";
            $password = "root";
            $dbname = "Comparisontool";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

              $sql = "SELECT cp_property_name as name FROM ct_property";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    $data[] = $row;
                }
            } else {
                echo "0 results";
            }
            $conn->close();
            return $data;
    }
    
    public function getPropertyBySearch($name)
    {
            $servername = "localhost";
            $username = "root";
            $password = "root";
            $dbname = "Comparisontool";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT * FROM ct_property WHERE cp_property_name LIKE '%".$name."%'";
            $data = array();  
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                    $data[] = $row;
                }
            } 
            $conn->close();
            if(!empty($data[0])){
            return $data[0];
            }
            else{
                return;
            }
            
    }
}