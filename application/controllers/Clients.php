<?php
class Clients extends CI_Controller {

    var $user_info;
    function __construct(){
        parent::__construct(); // needed when adding a constructor to a controller
        
        $this->user_info = array(
            'sitename' => 'TaskBai 1.0',
            'robots' => 'noindex,nofollow',
            'user_info' => $this->users_model->get_user_session($this->session->userdata('logged_in')['email_address']),
            'task_status' => array("Pending","Break","Inprogress","For QA", "Completed", "Checking"),
            'ip_blocker' => $this->load->helper("ipblocker_helper")
        );
    } 

    public function session_users(){
        if(!isset($this->session->userdata['logged_in']) && !isset($_SESSION["logged_in"])){ 
            redirect('/logout');
        }
    }
    
    public function index(){
        block_ip();
        $data = $this->user_info;
        $this->session_users();

        $data['stat'] = array("Pages","Launched","Layout");
        $data['title'] = "Clients List"; 
        $data['clients'] = $this->client_model->get_clients(); 

        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('clients/index', $data);
        $this->load->view('templates/footer');
    }

    public function view($id =  NULL){
        $data = $this->user_info;
        $this->session_users();

        $data['websitefiles_stat'] = array("Reset","Used");
 
        $data['client'] = $this->client_model->get_client($id);
        $data['tasks'] = $this->tasks_model->get_task_bycomp($id);
        $data['added_name'] = $this->client_model->get_client_task($data['client']['added_by']);

        if(empty($data['client'])){
            show_404();
        }
        $status['stat'] = array("Pages","Launched","Layout");
        $data['client'];
        $user_id = $data['client']['added_by'];
        $data['user'] = $this->users_model->get_user($user_id);
        
        $data['stat'] = $status['stat'];

        $this->form_validation->set_rules('other_access','Other Access','required');

        

        if($this->form_validation->run() === FALSE){
            
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/header',$data);
            $this->load->view('clients/view', $data);
            $this->load->view('templates/footer');

        }else{
            
            $id_client = $data['client']['id'];

            $postValue = array(
                'other_access' => $this->input->post('other_access')
    
            );
        
            $this->session->set_flashdata('msg_created', 'Updated other access successfuly!');
            $this->client_model->update_client_oa($id_client, $postValue);
            redirect('clients/'.$id_client);
    }

    }

    public function create(){
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){ redirect('/');}
        $this->session_users();
          
        $this->form_validation->set_rules('company_name','Company Name','required|is_unique[users.first_name]');
        $this->form_validation->set_rules('contact_person','Contact Information','required');
        $this->form_validation->set_rules('email_address','Email Address','trim|required|valid_email|is_unique[users.email_address]');
        $this->form_validation->set_rules('nature_of_business','Nature of Business','required');
        $this->form_validation->set_rules('website_access','Website Accsess','required');
        $this->form_validation->set_rules('other_access','Other Access','required');
        $this->form_validation->set_rules('added_by','Added By','required');
        $this->form_validation->set_rules('handling_agent','Handling Agent','required');
                
    
        if($this->form_validation->run() === FALSE){
            
            $data['input_val'] = $this->client_model->input_value();
            
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('clients/create', $data);
            $this->load->view('templates/footer');
        }else{
            $this->session->set_flashdata('msg_created', 'Created client successfuly!');
            $this->client_model->create_client();
            redirect('clients');
        }
    }


    public function update($id =  NULL){
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){ redirect('/');}
        $this->session_users();
          
        $this->form_validation->set_rules('company_name','Company Name','required|is_unique[users.first_name]');
        $this->form_validation->set_rules('contact_person','Contact Information','required');
        $this->form_validation->set_rules('email_address','Email Address','trim|required|valid_email|is_unique[users.email_address]');
        $this->form_validation->set_rules('nature_of_business','Nature of Business','required');
        $this->form_validation->set_rules('website_access','Website Accsess','required');
        $this->form_validation->set_rules('other_access','Other Access','required');
        $this->form_validation->set_rules('added_by','Added By','required');
        $this->form_validation->set_rules('handling_agent','Handling Agent','required');

        $data['post_value'] = $this->client_model->input_value();

        $postValue = $data['post_value'];

        $data['input_val'] = $this->client_model->get_client($id);
                
    
        if($this->form_validation->run() === FALSE){
            
            // $data['input_val'] = $this->client_model->input_value();
            
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('clients/update', $data);
            $this->load->view('templates/footer');
        }else{
            $this->session->set_flashdata('msg_created', 'Updated client successfuly!');
            $this->client_model->update_client($id, $postValue);
            redirect('clients/'.$id);
        }
    }
    
        public function delete($id =  NULL){
            $data = $this->user_info;
            $role = $data['user_info']['role'];
            if($role == 2){ redirect('/');}
            $this->session_users();
            
            $data['clients'] = $this->client_model->get_client($id);
            if(empty($data['clients'])){

                redirect('clients');
            }
            $this->session->set_flashdata('msg', 'Deleted Success');
            $this->db->delete('clients', array('id' => $id)); 
            $this->db->delete('tasks', array('account_id' => $id)); 
            
            redirect('clients');
        }


}
