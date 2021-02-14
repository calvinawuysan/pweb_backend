<?php
use Restserver\libraries\REST_Controller;

/**
 *
 */
class Paintings extends REST_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('painting_model');
  }

  public function paintingdetail_get()
  {
    $where = '';
    if (null !== $this->get('paintingid')) {
      $painting = $this->get('paintingid');
      $where = "pa.Painting_ID LIKE '" . $painting . "'" ;
    }
    $data = $this->painting_model->paintingdetail($where);
    $this->response( [ 'paintings' => $data ], 200 );
  }

}

 ?>
