<?php

Class Login_model extends CI_Model {
    public function __construct(){
        $this->load->database();
    }

// Read data using username and password
        public function login($data) {
        $condition = "email_address =" . "'" . $data['email_address'] . "' AND " . "password =" . "'" . md5($data['password']) . "'";

            $this->db->select('*');
            $this->db->from('users');
            $this->db->where($condition);
            $this->db->limit(1);

        $query = $this->db->get();

    if ($query->num_rows() == 1) {
        return true;
    } else {
        return false;
    }
}

// Read data from database to show data in admin page
public function read_user_information($email_address) {

$condition = "email_address =" . "'" . $email_address . "'";
$this->db->select('*');
$this->db->from('users');
$this->db->where($condition);
$this->db->limit(1);
$query = $this->db->get();

    if ($query->num_rows() == 1) {
    return $query->result();
        } else {
    return false;
    }
    }

}

?>