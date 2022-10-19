<?php
class Users_model extends CI_Model {
    public function __construct(){
        $this->load->database();
    }
    public function get_users($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('users');
            return $query->result_array();
        }

        $query = $this->db->get_where('users', array('id' => id));
        return $query->row_array();
    }
    
    

    public function get_user($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('users');
            return $query->result_array();
        }

        $query = $this->db->get_where('users', array('id' => $id));
        return $query->row_array();
    }
    
    public function get_user_session($email_address = FALSE){
        if($email_address === FALSE){
            $query = $this->db->get('users');
            return $query->result_array();
        }

        $query = $this->db->get_where('users', array('email_address' => $email_address));
        return $query->row_array();
    }
    
    public function create_user(){
        $data = array(
            'first_name' => $this->input->post('first_name'),
            'last_name' => $this->input->post('last_name'),
            'position' => $this->input->post('position'),
            'email_address' => $this->input->post('email_address'),
            'password' => md5($this->input->post('password'))
        );
//        $data['input_val'];
        
        return $this->db->insert('users',$data);
    }
    
    public function update_user($id = FALSE){
        $data = array(
            'first_name' => $this->input->post('first_name'),
            'last_name' => $this->input->post('last_name'),
            'position' => $this->input->post('position'),
            'email_address' => $this->input->post('email_address'),
            'username' => $this->input->post('username'),
            'password' => $this->input->post('password'),
        );
//        $data['input_val'];
        
        return $this->db->update('users',$data);
    }
    
    public function input_value(){

        $data = array(
            'first_name' => $this->input->post('first_name'),
            'last_name' => $this->input->post('last_name'),
            'position' => $this->input->post('position'),
            'email_address' => $this->input->post('email_address'),
            'username' => $this->input->post('username'),
            'password' => $this->input->post('password'),
        );
        
        return $data;
    }
    
    public function user_count() {
       return $this->db->count_all("users");
    }
}