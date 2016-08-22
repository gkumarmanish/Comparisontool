<?php



class HomeBaseController extends IndexController {
    /*
     * Initialize functionalities required in this module
     * Here set the views directory to module specific
     */
    public function initialize() {
        $this->view->setViewsDir(__VIEW_HOME__);
    }

    /*
     * All module specific common functions should be done here
     */
}
