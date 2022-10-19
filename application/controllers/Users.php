<?php
class Users extends CI_Controller {
    
    var $user_info;
    function __construct(){
        parent::__construct(); // needed when adding a constructor to a controller
        
        $this->user_info = array(
            'sitename' => 'TaskBai 1.0',
            'robots' => 'noindex,nofollow',
            'user_info' => $this->users_model->get_user_session($this->session->userdata('logged_in')['email_address'])
        );
        
        

    } 

    public function index(){
        $data = $this->user_info;
        
        $data['title'] = "Users"; 
        $data['users'] = $this->users_model->get_users();  
        
        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('users/index', $data);
        $this->load->view('templates/footer');
    }

    public function view($id =  NULL){
        $data = $this->user_info;
        $data['user'] = $this->users_model->get_user($id);
        if(empty($data['user'])){
            show_404();
        }
        $data['user'];

        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('users/view', $data);
        $this->load->view('templates/footer');
    }

    public function create(){
        $data = $this->user_info;
        $data['positions'] = $this->positions_model->get_positions();


          
        $this->form_validation->set_rules('first_name','First Name','required|is_unique[users.first_name]');
        $this->form_validation->set_rules('last_name','Last Name','required');
        $this->form_validation->set_rules('position','Position','required');
        $this->form_validation->set_rules('email_address','Email Address','trim|required|valid_email|is_unique[users.email_address]');
        $this->form_validation->set_rules('password','Password','required','md5');
                
        
        if($this->form_validation->run() === FALSE){
            
            $data['input_val'] = $this->users_model->input_value();
            
        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('users/create', $data);
        $this->load->view('templates/footer');
        }else{
            $this->users_model->create_user();
            $this->session->set_flashdata('msg_created', 'Created user successfuly!');
            redirect('users');
        }
    }

    public function update($id =  NULL){
        $data['positions'] = $this->positions_model->get_positions();
        $data['user'] = $this->users_model->update_user($id);
        
        $this->form_validation->set_rules('first_name','First Name','required|is_unique[users.first_name]');
        $this->form_validation->set_rules('last_name','Last Name','required');
        $this->form_validation->set_rules('position','Position','required');
        $this->form_validation->set_rules('email_address','Email Address','trim|required|valid_email|is_unique[users.email_address]');
        $this->form_validation->set_rules('username','Username','required');
        $this->form_validation->set_rules('password','Password','required');
                
        if($this->form_validation->run() === FALSE){
            
            $data['input_val'] = $this->users_model->input_value();
            
            $this->load->view('templates/header',$data);
            $this->load->view('users/update', $data);
            $this->load->view('templates/footer');
        }else{
            $this->users_model->update_user($id);
            redirect('user/update/$1');
        }
    }
    public function delete($id =  NULL){
        $data['user'] = $this->users_model->get_user($id);
        if(empty($data['user'])){

            redirect('users');
        }
        $this->session->set_flashdata('msg', 'Deleted Success');
        $this->db->delete('users', array('id' => $id)); 
        redirect('users');
    }

}
