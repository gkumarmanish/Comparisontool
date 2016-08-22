<?php

/*****************************************************************
 *  Project: Comparison Tool
 *  File Name: HomeController
 *  Created By: Manish Kumar Gupta
 ******************************************************************/


class HomeController extends HomeBaseController {

   
    public function initialize() {
        parent::initialize();
    }

    /**
     * Index Action for View Page Details
     */
    public function indexAction() {
        $this->view->public_path = __PUBLIC__;
        $this->view->base_path = __DIR_BASE__;
        $base = new HomeModel();
        $data = $base->getPropertyList();
        foreach ($data as $key => $value) {
            $res[] = $value['name'];
        }
        $this->view->property_list = $res;
}
    /**
     * Function For get the Search Data on his name  
     */
    public function searchAction() {
        //Get Data from post method on ajax call
        $dataArray = $this->request->getPost();
        if(!empty($dataArray['search'])){
        $base = new HomeModel();
       
        $data = $base->getPropertyBySearch($dataArray['search']);
       
        $response = '<div><img src="'.__PUBLIC__.'images/'.$data['cp_image'].'" alt="Mountain View" style="width: 100%; height:140px;">  
        </div><table class="table table-bordered">
                <tr style="margin-bottom: 10px;">
                    <th style="background-color: white; padding: 12px;">
                     '.$data['cp_property_name'].'
                    </th>
                <tr>';
        foreach ($data as $key => $value) {
            if($key != 'cp_id_pk' && $key != 'cp_property_name' && $key != 'cp_created_datetime' && $key != 'cp_image'){ 
                if($key == 'cp_per_month_sales' ){
                $response.='<tr><td>'.$value.'<br><br></td></tr>' ;}
                else{
                $response.='<tr><td>'.$value.'</td></tr>' ;}
                
            }
        }
        
        $response.='</table>';
        echo $response;
        }
        else{
            $response = '<div><img src="'.__PUBLIC__.'images/no_image.jpg" alt="Mountain View" style="width: 100%; height:140px;">  
        </div>
             <table class="table table-bordered">
                 <tr>
                     <th style="background-color: white; padding: 12px;">
                     <br>
                     </th>
                 <tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
          <tr>
            <td><br></td>
          </tr>
        </table>';
            echo $response;
        }
    }
    
   
}

/**************************************
 * Modifications history: 
 **************************************/
