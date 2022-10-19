<?php
class Positions_model extends CI_Model {
    public function __construct(){
        $this->load->database();
    }
    public function get_positions(){

        $query = $this->db->get('positions');

        return $query->result_array();
    }

}