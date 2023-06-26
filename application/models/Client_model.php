<?php
class Client_model extends CI_Model {
    public function __construct(){
        $this->load->database();
    }
    public function get_clients($slug = FALSE){
        if($slug === FALSE){
            $query = $this->db->get('clients');
            return $query->result_array();
        }

        $query = $this->db->get_where('clients', array('slug' => $slug));
        return $query->row_array();
    }

    public function get_client($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('clients');
            return $query->result_array();
        }

        $query = $this->db->get_where('clients', array('id' => $id));
        return $query->row_array();
    }
    
    public function get_client_task($id = FALSE){
                $this->db->select('*');
                $this->db->from('users');
                $this->db->join('clients','users.id = clients.added_by');
                $this->db->where('clients.added_by', $id);
                $query = $this->db->get();
                return $query->row_array();
    }


    public function create_client(){
        $data = array(
            'company_name' => $this->input->post('company_name'),
            'contact_person' => $this->input->post('contact_person'),
            'email_address' => $this->input->post('email_address'),
            'nature_of_business' => $this->input->post('nature_of_business'),
            'website_access' => $this->input->post('website_access'),
            'other_access' => $this->input->post('other_access'),
            'added_by' => $this->input->post('added_by'),
            'handling_agent' => $this->input->post('handling_agent')
        );
        
        return $this->db->insert('clients',$data);
    }

    public function input_value(){

        $data = array(
            'company_name' => $this->input->post('company_name'),
            'contact_person' => $this->input->post('contact_person'),
            'email_address' => $this->input->post('email_address'),
            'nature_of_business' => $this->input->post('nature_of_business'),
            'website_access' => $this->input->post('website_access'),
            'other_access' => $this->input->post('other_access'),
            'added_by' => $this->input->post('added_by'),
            'handling_agent' => $this->input->post('handling_agent')
        );
        
        return $data;
    }

    public function update_client($id = FALSE, $postValue = FALSE){

        $data = $postValue;
		
        $this->db->set($data);
        $this->db->where('clients.id', $id);
        $this->db->update('clients');


        return 1;
    }

    public function update_client_oa($id = FALSE, $postValue = FALSE){

        $data = $postValue;
		
        $this->db->set($data);
        $this->db->where('clients.id', $id);
        $this->db->update('clients');


        return 1;
    }



    public function get_task_bycomp_user($id = FALSE, $user_id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('tasks');
            return $query->result_array();
        }

        $query = $this->db->get_where('tasks', array('account_id' => $id, 'assigned_id' => $user_id));
        return $query->result_array();
    }
    

}