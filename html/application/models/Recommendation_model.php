<?php

class Recommendation_model extends CI_Model {

  function __construct() {
    parent::__construct();
  }

  public function recommendationdetail( $where='')
  {
    $this->db->select('re.Image, re.R_code, re.name, re.Price, pt.Name, pt.Painter_ID');
    $this->db->from('recommendation re');
    $this->db->join('Painters pt', 'ON(pt.Painter_ID=re.Painter_ID)');
    if ( $where != '' ) $this->db->where($where);
    $query = $this->db->get();
    return $query->result();
  }

}
