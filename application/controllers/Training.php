<?php
class Training extends CI_Controller {

    var $user_info;

    function __construct(){
        parent::__construct(); // needed when adding a constructor to a controller
        new DateTime();

     
        $this->user_info = array(
            'sitename' => 'TaskBai 1.0',
            'robots' => 'noindex,nofollow',
            'user_info' => $this->users_model->get_user_session($this->session->userdata('logged_in')['email_address']),
            'task_status' => array("Pending","Break","Inprogress","For QA", "Completed", "Checking"),
            'current_datetime' => date('y-m-d H:i:s')
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

        $data['activities'] = $this->activity_model->get_day_activity();      
        

        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar',$data);
        $this->load->view('templates/header',$data);
        $this->load->view('training_activity/index', $data);
        $this->load->view('templates/footer');
    }

    public function create_activity(){
        $data = $this->user_info;
        $this->session_users();
        $data['title'] = "Users"; 
        $data['users'] = $this->users_model->get_users();  

        $post_data = array(
            'activity_title' => $this->input->post('activity_title'), 
            'activity_desc' => $this->input->post('activity_desc')
        );
        $data['post_data'] = $post_data;
        // print_r($post_data);
        // exit;
        $this->form_validation->set_rules('activity_title','Activity Title','required');
        $this->form_validation->set_rules('activity_desc','Activity Description','required');

        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('training_activity/create_activity', $data);
            $this->load->view('templates/footer');
        }else{
            $this->session->set_flashdata('msg_created', 'Created activity successfuly!');
            $this->activity_model->create_activity($post_data);

            $last_id = $this->db->insert_id();
            // print_r($last_id);
            // exit;
            redirect('/training-activity/day/'.$last_id);

        }
    }

    public function view_day($id =  NULL){
        $data = $this->user_info;
        $this->session_users();

        $data['day_activity'] = $this->activity_model->get_day_activity($id);
        if(empty($data['day_activity'])){
            show_404();
        }
        $data['day_activity'];

        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('training_activity/view_activity', $data);
        $this->load->view('templates/footer');

    }


public function create_subject($id = NULL){
    
        $data = $this->user_info;
        $this->session_users();
        $data['title'] = "Users"; 
        $data['users'] = $this->users_model->get_users(); 
        $data['day_activity'] = $this->activity_model->get_day_activity($id);      

        $this->form_validation->set_rules('subject_title','Subject Title','required|is_unique[activity_subject.subject_title]');
        $this->form_validation->set_rules('activity_id','Activity ID');
        $this->form_validation->set_rules('subject_slug','Subject Slug');

        // if(!$this->form_validation->run() === FALSE){

        //     $config['upload_path']          = './upload/videos';
        //     $config['allowed_types']        = 'pdf|mp4';
    
        //     $this->load->library('upload', $config);
        //     $this->upload->initialize($config);
    
        //     if ( ! $this->upload->do_upload('subject_video'))
        //     {
        //             $error = array('error' => $this->upload->display_errors());
        //             // print_r($error);
        //             // $this->load->view('upload_form', $error);
        //              $file_name_video = NULL;
    
            
        //     }
        //     else
        //     {
        //             $data = $this->upload->data();
        //             $file_name_video = $data['file_name'];
    
        //             // print_r($data);
    
    
        //     }
    
            
        //     $config2['upload_path']          = './upload/files';
        //     $config2['allowed_types']        = 'pdf|mp4';
    
    
        //     $this->load->library('upload', $config2);
        //     $this->upload->initialize($config2);

        //     if ( ! $this->upload->do_upload('subject_file'))
        //     {
        //             $error = array('error' => $this->upload->display_errors());
        //             // print_r($error);
        //             // $this->load->view('upload_form', $error);
        //              $file_name_file = NULL;
        //     }
        //     else
        //     {
        //             $data = $this->upload->data();
        //             $file_name_file = $data['file_name'];
    
        //     }

        //     $config3['upload_path']          = './upload/images';
        //     $config3['allowed_types']        = 'pdf|mp4|jpg|png|jpeg';
    
    
        //     $this->load->library('upload', $config3);
        //     $this->upload->initialize($config3);
        //     if ( ! $this->upload->do_upload('subject_image'))
        //     {
        //             $error = array('error' => $this->upload->display_errors());
        //             // print_r($error);
        //             // $this->load->view('upload_form', $error);
        //              $file_name_image = NULL;
        //     }
        //     else
        //     {
        //             $data = $this->upload->data();
        //             $file_name_image = $data['file_name'];
    
        //     }
        // }

        $post_data = array(
            'subject_title' => $this->input->post('subject_title'),
            'activity_id' => $this->input->post('activity_id'),
            'subject_slug' => $this->input->post('subject_slug'),
        );

        $data['post_data'] = $post_data;

        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('training_activity/create_subject', $data);
            $this->load->view('templates/footer');
        }else{
            $this->session->set_flashdata('msg_created', 'Created subject successfuly!');
            $this->activity_model->create_subject($post_data);

            $last_id = $this->db->insert_id();
            $data['get_subject'] = $this->activity_model->get_subject($last_id);

            $last_id = $data['get_subject']['activity_id'];


            redirect('/training-activity/day/'.$last_id);

        }
    }


    public function view_subject($slug =  NULL){
        $data = $this->user_info;
        $this->session_users();

        $data['subject'] = $this->activity_model->get_subjects_slug($slug);
        if(empty($data['subject'])){
            show_404();
        }
        $data['subject'];

        $data['topics'] = $this->activity_model->get_topic_subject($data['subject']['id']);

        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('training_activity/view_subject', $data);
        $this->load->view('templates/footer');

    }

    public function delete_activity($id =  NULL){
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){redirect('/');}
        $this->session_users();

        $data['day_activity'] = $this->activity_model->get_day_activity($id);

        if(empty($data['day_activity'])){

            redirect('training-activity');
        }
        $this->session->set_flashdata('msg', 'Deleted Success');
        $this->db->delete('activity_training', array('id' => $id)); 
        redirect('training-activity');
    }

    public function update_activity($id = NULL){
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){redirect('/');}
        $this->session_users();
        $data['activity'] = $this->activity_model->get_day_activity($id);

        $post_data = array(
            'activity_title' => $this->input->post('activity_title'), 
            'activity_desc' => $this->input->post('activity_desc')
        );
        $data['post_data'] = $post_data;
        // print_r($post_data);
        // exit;
        $this->form_validation->set_rules('activity_title','Activity Title','required');
        $this->form_validation->set_rules('activity_desc','Activity Description','required');


        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('training_activity/update_activity', $data);
            $this->load->view('templates/footer');
        }else{

            $this->activity_model->update_activity($id,$post_data);
            $this->session->set_flashdata('msg', 'Updated Successfully');

            redirect('training-activity/day/'.$id);

        }


    }


    public function update_subject($id = NULL){
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){redirect('/');}
        $this->session_users();

        $data['day_activity'] = $this->activity_model->get_subject($id);
        $slug_update = $data['day_activity']['subject_slug'];

        $this->form_validation->set_rules('subject_title','Subject Title','required');
        $this->form_validation->set_rules('activity_id','Activity ID');
        $this->form_validation->set_rules('subject_slug','Subject Slug');


        $post_data = array(
            'subject_title' => $this->input->post('subject_title'),
            'activity_id' => $this->input->post('activity_id'),
            'subject_slug' => $this->input->post('subject_slug'),
        );
 
  
        // print_r($post_data);
        // exit;
        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('training_activity/update_subject', $data);
            $this->load->view('templates/footer');
        }else{

            $this->activity_model->update_subject($id,$post_data);
            $this->session->set_flashdata('msg', 'Updated Successfully');
            $data['activity_subject'] = $this->activity_model->get_subject($id);
            $updated_slug = $data['activity_subject']['subject_slug'];

            redirect('training-activity/subject/'.$updated_slug);

        }
    }


    public function delete_subject($id =  NULL){
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){redirect('/');}
        $this->session_users();

        $data['activity_subject'] = $this->activity_model->get_subject($id);

        // print_r($id);

        // exit;
        if(empty($data['activity_subject'])){

            redirect('training-activity/subject-list');
        }
        $this->session->set_flashdata('msg', 'Deleted Successfully');
        $this->db->delete('activity_subject', array('id' => $id)); 
        redirect('training-activity');
    }

    public function create_topic($id = NULL){
        $data = $this->user_info;
        $this->session_users();
        $data['title'] = "Create Topics"; 
        $data['day_activity'] = $this->activity_model->get_subject_topic($id);   

        $this->form_validation->set_rules('topic_name','Topic Name','required|is_unique[activity_topics.topic_name]');
        $this->form_validation->set_rules('topic_desc','Topic Description','required');


        $post_data = array(
            'topic_name' => $this->input->post('topic_name'),
            'topic_desc' => $this->input->post('topic_desc'),
            'topic_subject' => $id
        );

        $data['post_data'] = $post_data;

        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('training_activity/topics/create', $data);
            $this->load->view('templates/footer');
        }else{
        
            $this->session->set_flashdata('msg_created', 'Created topic successfuly!');
            $this->activity_model->create_topic($post_data);

            $last_id = $this->db->insert_id();
            $data['get_subject'] = $this->activity_model->get_subject($id);

            $subject_slug = $data['get_subject']['subject_slug'];

            redirect('/training-activity/subject/'.$subject_slug);

        }

    }

    public function update_topic($id = NULL){
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){redirect('/');}
        $this->session_users();

        $data['topic'] = $this->activity_model->get_topic($id);
        // $slug_update = $data['day_activity']['subject_slug'];

        $this->form_validation->set_rules('topic_name','Topic Name','required');
        $this->form_validation->set_rules('topic_desc','Topic Description','required');
        $this->form_validation->set_rules('topic_link','Topic Link');


        $post_data = array(
            'topic_name' => $this->input->post('topic_name'),
            'topic_desc' => $this->input->post('topic_desc'),
            'topic_link' => $this->input->post('topic_link')
        );

 

        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('training_activity/topics/update', $data);
            $this->load->view('templates/footer');
        }else{

            $this->activity_model->update_topic($id,$post_data);
            $this->session->set_flashdata('msg', 'Updated Successfully');
            $data['activity_subject'] = $this->activity_model->get_topic_subject_slugs($id);
            $idts = $data['activity_subject']['topic_subject'];
            $updated_slug = $this->activity_model->get_subject($idts)['subject_slug'];

            redirect('training-activity/subject/'.$updated_slug);

        }
    }



}
