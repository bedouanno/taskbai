<?php

Class Login extends CI_Controller {


// Check for user login process
public function index() {
    $this->load->helper("ipblocker_helper");
    block_ip();
    $data['sitename'] = 'TaskBai 1.0';

    $this->form_validation->set_rules('email_address', 'Email Address', 'trim|required');
    $this->form_validation->set_rules('password', 'Password', 'trim|required');

    if ($this->form_validation->run() == FALSE) {

        if(isset($this->session->userdata['logged_in'])){
                redirect('home');
            }else{
                $this->load->view('templates/head', $data);
                $this->load->view('login');
                $this->load->view('templates/footer');
            }
        } else {
        $data = array(
        'email_address' => $this->input->post('email_address'),
        'password' => $this->input->post('password')
        );
        $result = $this->login_model->login($data);
        if ($result == TRUE) {
            $email_address = $this->input->post('email_address');
            $result = $this->login_model->read_user_information($email_address);
            if ($result != false) {
                $session_data = array(
                    'email_address' => $result[0]->email_address,
                    );

                // Add user data in session
                $this->session->set_userdata('logged_in', $session_data);
                redirect('home');
            }
        } else {
            $data['sitename'] = 'TaskBai 1.0';
            $data["errors"] = array('error_message' => 'Invalid Username or Password');
            $this->load->view('templates/head', $data );
            $this->load->view('login');
            $this->load->view('templates/footer');
        }
    }
}

// Logout from admin page
public function logout($page = 'logout') {
    $this->load->helper("ipblocker_helper");
    block_ip();
    $data['sitename'] = 'TaskBai 0.1';
    // Removing session data
    $sess_array = array('email_address' => '');
    $this->session->unset_userdata('logged_in', $sess_array);
        $data['message_display'] = 'Successfully Logout';
        $this->load->view('templates/head', $data);
        $this->load->view('login',$data);
        $this->load->view('templates/footer');
}

}