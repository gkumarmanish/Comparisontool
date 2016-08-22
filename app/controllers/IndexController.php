<?php


class IndexController extends \Phalcon\Mvc\Controller {

    private $dashboardStyle;

    public function initialize() {

        $this->view->setViewsDir(__VIEW_INDEX__);
        
    }

    public function indexAction() {
        return $this->response->redirect('home');   
    }

}

/**************************************
 * Modifications history: 
 **************************************/
