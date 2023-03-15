<?php

class Main extends CI_Controller {

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

    public function view($page = 'home'){
        $data = $this->user_info;
        $this->session_users();
		
            $data['number_users'] = $this->users_model->user_count();
            $data['number_tasks'] = $this->tasks_model->task_count();
			
            if ( ! file_exists(APPPATH.'views/pages/'.$page.'.php')){
                    // Whoops, we don't have a page for that!
                    show_404();
            }
            
        
            if($page == 'home'){

                
                $data['title'] = ucfirst($page); // Capitalize the first letter
                $this->load->view('templates/head', $data);
                $this->load->view('templates/sidebar');
                $this->load->view('templates/header',$data);
                $this->load->view('pages/'.$page, $data);
                $this->load->view('templates/footer');
            }
	}
}
