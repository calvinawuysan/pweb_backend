<?php
use Restserver\libraries\REST_Controller;

/**
 *
 */
class Painters extends REST_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('painter_model');
  }

  public function painterdetail_get()
  {
    $where = '';
    if (null !== $this->get('painterid')) {
      $painter = $this->get('painterid');
      $where = "pt.Painter_ID LIKE '" . $painter . "'" ;
    }
    $data = $this->painter_model->painterdetail($where);
    $this->response( [ 'painters' => $data ], 200 );
  }


}

 ?>
