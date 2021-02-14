<?php

class Painting_model extends CI_Model {

  function __construct() {
    parent::__construct();
  }

  public function paintingdetail( $where='' )
  {
    $this->db->select('pa.Painting_ID, pa.Image, pa.Tittle, pa.Media, pa.Size, pt.Name, pt.Painter_ID');
    $this->db->from('paintings pa');
    $this->db->join('Painters pt', 'ON(pt.Painter_ID=pa.Painter_ID)');
    if ( $where != '' ) $this->db->where($where);
    $query = $this->db->get();
    return $query->result();
  }

}
