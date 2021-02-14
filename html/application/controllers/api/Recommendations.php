<?php
use Restserver\libraries\REST_Controller;

/**
 *
 */
class Recommendations extends REST_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('recommendation_model');
  }

  public function recommendationdetail_get()
  {
    $where = '';
    if (null !== $this->get('code')) {
      $recom = $this->get('code');
      $where = "re.R_code LIKE '" . $recom . "'" ;
    }
    $data = $this->recommendation_model->recommendationdetail($where);
    $this->response( [ 'recommendations' => $data ], 200 );
  }

}



 ?>
