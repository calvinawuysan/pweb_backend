<?php

class Painter_model extends CI_Model {

  function __construct() {
    parent::__construct();
  }

  public function painterdetail($where='')
  {
    $this->db->select('pt.painter_ID, pt.Img, pt.Name, pt.Province, pt.City_District, pt.Phone_WA, pt.Email, pa.Tittle, pa.Image,pa.Painting_ID');
    $this->db->from('Painters pt');
    $this->db->join('paintings pa', 'ON(pt.Painter_ID=pa.Painter_ID)');
    if ( $where != '' ) $this->db->where($where);
    $query = $this->db->get();
    return $query->result();
  }

}









 ?>
