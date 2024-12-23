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

    public function session_users(){
        if(!isset($this->session->userdata['logged_in']) && !isset($_SESSION["logged_in"])){ 
            redirect('/logout');
        }
    }
    

    public function index(){
        $data = $this->user_info;
        $this->session_users();

        $data['title'] = "Users"; 
        $data['users'] = $this->users_model->get_users();  

  
        $json = json_encode($this->users_model->get_users());
        
 
        
        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('users/index', $data);
        $this->load->view('templates/footer');
    }

    public function view($id =  NULL){
        $data = $this->user_info;
        $this->session_users();
        $data['object'] = $this->load->helper("datetime_helper");

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
        $role = $data['user_info']['role'];
        if($role == 2){ redirect('/');}
        $this->session_users();
    
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
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){redirect('/');}
        $this->session_users();

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
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){redirect('/');}
        $this->session_users();

        $data['user'] = $this->users_model->get_user($id);
        if(empty($data['user'])){

            redirect('users');
        }
        $this->session->set_flashdata('msg', 'Deleted Success');
        $this->db->delete('users', array('id' => $id)); 
        redirect('users');
    }


    public function do_ajax_post() {
        // Handle the AJAX POST request
        if ($this->input->is_ajax_request()) {
            $data = $this->input->post(); // Retrieve POST data
            // Process the data and send response back
            $result = $this->users_model->create_position($data);
            
            // Send response back
            if ($result) {
                $response = array(
                    'status' => 'success',
                    'message' => 'Data processed successfully!',
                    'data' => $result
                );
            } else {
                $response = array(
                    'status' => 'error',
                    'message' => 'Data processing failed!',
                    'data' => null
                );
            }
            echo json_encode($response);
        } else {
            show_404(); // Return a 404 error if it's not an AJAX request
        }
    }


    public function get_ajax_position() {
        $data = $this->positions_model->get_positions();
            echo json_encode($data, TRUE);
    }



}
