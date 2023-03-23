<?php
class Tasks extends CI_Controller {

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

        // $val = $this->tasks_model->get_task_qa();

        // print_r($val);

        // exit;

        if(!isset($this->session->userdata['logged_in']) && !isset($_SESSION["logged_in"])){ 
            redirect('/logout');
        }

            

            if($data['user_info']['role'] == 2){
                $querys = $data['user_info']['id'];
                $cdate = new DateTime($data['current_datetime']);
                $cdf = date_format($cdate, 'Y-m-d');
                $data['tasks'] = $this->tasks_model->get_tasks_today($querys, $cdf);
            }else{
                $cdate = new DateTime($data['current_datetime']);
                $cdf = date_format($cdate, 'Y-m-d');
                $data['tasks'] = $this->tasks_model->get_tasks_today_admin($cdf);
            }
            
            $data['title'] = "Task Today"; 
            $data['user'] = $this->users_model->get_user();
          
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('tasks/index', $data);
            $this->load->view('templates/footer');
    }

    public function task_history(){
        $data = $this->user_info;
        $this->session_users();
      
        if($data['user_info']['role'] == 2){
            $querys = $data['user_info']['id'];
            $data['tasks'] = $this->tasks_model->get_tasks($querys);

        }else{
            $data['tasks'] = $this->tasks_model->get_task();
        }
    
        $data['title'] = "Task History"; 
        $data['user'] = $this->users_model->get_user();
        
        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('tasks/task_history', $data);
        $this->load->view('templates/footer');
}

public function unassigned(){
    $data = $this->user_info;
    $this->session_users();
  
    if($data['user_info']['role'] == 2){
        $querys = $data['user_info']['id'];
        $data['tasks'] = $this->tasks_model->get_tasks($querys);

    }else{
        $data['tasks'] = $this->tasks_model->get_unassigned_tasks();
    }

    $data['title'] = "Unassigned Tasks"; 
    $data['user'] = $this->users_model->get_user();
    
    $this->load->view('templates/head', $data);
    $this->load->view('templates/sidebar');
    $this->load->view('templates/header',$data);
    $this->load->view('tasks/unassigned', $data);
    $this->load->view('templates/footer');
}
    
    public function view($id =  NULL){
        $data = $this->user_info;
        $this->session_users();
    
        $data = $this->user_info;
        $data['task'] = $this->tasks_model->get_task($id);
        $data['assigned_name'] = $this->tasks_model->get_user_assigned_task($data['task']['assigned_id']);
                
        $data['created_task_name'] = $this->tasks_model->get_user_created_task($data['task']['created_id']);

        $data['users_to_assigned'] = $this->users_model->get_users();  

  
        $data['list_instructions'] = $this->tasks_model->get_task_instruction($data['task']['id']);


        // UPLOAD ATTACHMENT

        $this->form_validation->set_rules('attachment_file','Attachment File');

        $attbtn = $this->input->post('submit_attachment');


        // exit;
        // print_r($data['list_instructions']);

        $task_id = $data['task']['id'];

        // Create Instructions
        $this->form_validation->set_rules('instruction','Instruction','required');
        $this->form_validation->set_rules('task_id','Task ID','required');

        // Update Instructions
        $this->form_validation->set_rules('task_url','task_url');
        $this->form_validation->set_rules('task_backup','task_backup');
        $this->form_validation->set_rules('next_steps','next_steps');
        $this->form_validation->set_rules('additional_notes','additional_notes');

        // Update Assigned to
        $this->form_validation->set_rules('assigned_id','assigned_id');
        $this->form_validation->set_rules('assigned_date','assigned_date');
        $this->form_validation->set_rules('assigned_datetime','assigned_datetime');

        // Update Task Status
        $this->form_validation->set_rules('status','status');
        $post_status = $this->tasks_model->status_post();

        // ERROR LIST
        $data['minor_errors'] = $this->tasks_model->get_errors('minor');
        $data['major_errors'] = $this->tasks_model->get_errors('major');

        $errors = $this->input->post('checkbox');
        // print_r($errors);

        $data['errorlist'] = $this->tasks_model->get_task_errors($task_id);

        // echo "<pre>".print_r($data['errorlist'],true)."</pre>";
        // exit;
    if($this->input->post('submtbtn')){
        foreach($errors as $error):
            // $ider = $error['id'];
            $list_error = $this->tasks_model->get_errors_with_id($error)[0];
            // echo $list_error['id'].' - '.$list_error['error_category'].' - '.$list_error['error_name'].'-'.$task_id.'<br>';
            $post_val = array(
                'qas_id' => $list_error['id'],
                'task_id' => $task_id
            );
            $this->tasks_model->add_task_error($post_val);
        endforeach;
            redirect('task/'.$task_id);

    }

    $data['get_errors'] = $this->tasks_model->get_errors_task($task_id);
    // print_r($data['get_errors']);

    if($this->input->post('submtbtnupdate')):

        if(empty($errors)){
            // print_r('empty');
            $this->tasks_model->delete_task_qav2($task_id, $rs_id);
        }else{
            foreach($errors as $error):
                $list_error = $this->tasks_model->get_errors_task($error)[0];
                // echo "<pre>".print_r($list_error[0],true)."</pre>";
                
                // exit;

                // echo "<pre>".print_r($post_val,true)."</pre>";
                // exit;
                $rs = $this->tasks_model->get_errors_task_qa($error, $task_id);
                // echo "<pre>".print_r($rs,true)."</pre>";
                if($rs == NULL){
                    $post_val = array(
                        // 'id' =>  $list_error['id'],
                        'qas_id' => $error,
                        'task_id' => $task_id
                    );
                    // echo "<pre>".print_r($post_val,true)."</pre>";
                    $this->tasks_model->add_task_error($post_val);
                    // exit;
                    redirect('task/'.$task_id);
                }else{
                    // echo "<pre>".print_r($rs,true)."</pre>";
                    // exit;
                    $rs_id = $rs;
                    $this->tasks_model->delete_task_qa($task_id, $rs_id);
                    redirect('task/'.$task_id);
                }
        endforeach;
        }
        // exit;


        redirect('task/'.$task_id);
    endif;


        if(!empty($post_status['status'])){
            $statusPost = array(
                'status' => $this->input->post('status')
            );
        }

        
        $post_update = $this->tasks_model->post_update_task();
        $post_update_assigned = $this->tasks_model->post_update_assigned();


        if(!empty($post_status['status'])){
            $statusPost = array(
                'status' => $this->input->post('status')
            );
        }

        if($post_update_assigned['assigned_id'] == 0){
        $_POST['assigned_date'] = 0;
        $_POST['assigned_datetime'] = 0;
        $assinged_usr = array(
            'assigned_id' => $this->input->post('assigned_id'),
            'assigned_date' => $this->input->post('assigned_date'),
            'assigned_date' => $this->input->post('assigned_datetime')
        );
        }else{
        $assinged_usr = array(
            'assigned_id' => $this->input->post('assigned_id'),
            'assigned_date' => $this->input->post('assigned_date'),
            'assigned_datetime' => $this->input->post('assigned_datetime')
        );
        }

        $data['time_start_task'] = $this->tasks_model->get_time_start($task_id);
        $data['time_end_task'] = $this->tasks_model->get_time_end($task_id);

        // print_r($data['time_start_task']);
        


        if(empty($data['task'])){
            show_404();
        }

        // print_r($this->tasks_model->create_task_instruction());
    
        if($this->form_validation->run() === FALSE){
            
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('tasks/view', $data);
            $this->load->view('templates/footer');
    
        }else{
            
            $this->session->set_flashdata('msg_created', 'Created instruction successfully!');           
             $this->tasks_model->create_task_instruction();
             redirect('task/'.$task_id);

        }

        if(!empty($post_update['task_url'] or $post_update['next_steps'] or $post_update['next_steps'])){
            $this->session->set_flashdata('msg_created', 'Updated successfully!');           
            $this->tasks_model->update_task($task_id);
            redirect('task/'.$task_id);
         }

         if(!empty($post_update_assigned['assigned_id'] or $post_update_assigned['assigned_date'])){
            $this->session->set_flashdata('msg_created', 'Updated successfully!');      
            
            $this->tasks_model->update_task_assigned($task_id, $assinged_usr);

            $_POST['status'] = 0;
            $statusPost = array(
                'status' => $this->input->post('status')
            );


            $this->tasks_model->update_task_status($task_id, $statusPost);
            redirect('task/'.$task_id);
         }


         if(!empty($attbtn)):


            $file_name_attachment = "";
    
                // print_r($attbtn);
    
    
    
                $config['upload_path']          = './upload/attachment';
                $config['allowed_types']        = '*';
                $config['max_size']             = 204800;
        
                $this->load->library('upload', $config);
                $this->upload->initialize($config);
    
                
        
                if ( ! $this->upload->do_upload('attachment_file'))
                {
                        $error = array('error' => $this->upload->display_errors());
                        // print_r($error);
                        // $this->load->view('upload_form', $error);
                         $file_name_attachment = NULL;

                        //  print_r($error);
        
                
                }
                else
                {
                        $data = $this->upload->data();
                        $file_name_attachment = $data['file_name'];
        
                        // print_r($file_name_attachment);
        
        
                }

                // exit;
        
                $post_data_file = array(
                    'attachment_file' => $file_name_attachment
                );

                $this->tasks_model->update_task_qa($task_id, $post_data_file);
                redirect('task/'.$task_id);

    
        endif;

        // exit;
         if(!empty($post_status['status'])){
           // <!-- 'task_status' => array("Pending","Break","Inprogress","For QA", "Completed"), -->
            // $this->session->set_flashdata('msg_created', 'Updated successfully!');     
             $currenttime = time();

            if($post_status['status'] == 0):
            endif;

            // completed status
            if($post_status['status'] == 4):
                $data = $this->user_info;

                $data = array(
                    'qa_id' => $this->input->post('buddy_id')

                );

                $this->tasks_model->update_task_qa($task_id, $data);

            endif;

            // checking status
            if($post_status['status'] == 5):
                $data = $this->user_info;

                $data = array(
                    'qa_id' => $this->input->post('buddy_id')

                );

                $this->tasks_model->update_task_qa($task_id, $data);



            endif;

            //  BREAK STATUS
            if($post_status['status'] == 1):
                $time_end = date("H:i:s", $currenttime);
                $ps_progress =  0;
                $_POST['time_end'] = $time_end;
                $_POST['task_id'] = $task_id;
             

                 $data = array(
                    'time_end' => $this->input->post('time_end'),
                    'task_id' => $this->input->post('task_id')
                );

                $this->tasks_model->update_task_progress_status($task_id, $ps_progress);
                $this->tasks_model->create_time_end($task_id, $data);
             endif;
                
            //  IN PROGRESS STATUS
            if($post_status['status'] == 2):
                $time_start = date("H:i:s", $currenttime);
                $ps_progress =  1;

                $_POST['time_start'] = $time_start;
                $_POST['task_id'] = $task_id;
            
                // GET ASSIGNED TASK 
                $gt = $this->tasks_model->get_task_assigned($data['task']['assigned_id']);

                 $data = array(
                    'time_start' => $this->input->post('time_start'),
                    'task_id' => $this->input->post('task_id')
                );

                $this->tasks_model->update_task_progress_status($task_id, $ps_progress);
                $this->tasks_model->create_time_start($task_id, $data);
            endif;
                
            //  FOR QA STATUS
            if($post_status['status'] == 3):
                $time_end = date("H:i a", $currenttime); 
               
                $_POST['time_end'] = $time_end;
                $_POST['task_id'] = $task_id;
             

                 $data = array(
                    'time_end' => $this->input->post('time_end'),
                    'task_id' => $this->input->post('task_id')
                );
                $ps_progress =  0;
                $this->tasks_model->update_task_progress_status($task_id, $ps_progress);

  
             
              $this->tasks_model->create_time_end($task_id, $data);
            endif;
            

            
    
            $this->tasks_model->update_task_status($task_id, $statusPost);
            redirect('task/'.$task_id);
         
         }



    }

    public function create($id =  NULL){
        $data = $this->user_info;
        $role = $data['user_info']['role'];
        if($role == 2){ redirect('/');}
        $this->session_users();

        $data['users'] = $this->users_model->get_users();
        $data['client'] = $this->client_model->get_client($id);

        // for task creation
        $this->form_validation->set_rules('task_name','Task Name','required');
        $this->form_validation->set_rules('assigned_id','Assigned To');
        $this->form_validation->set_rules('created_id','Created By');

        // for instruction 
        $this->form_validation->set_rules('instruction','instruction');

                
        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('tasks/create', $data);
            $this->load->view('templates/footer');
        }else{
            
            $this->session->set_flashdata('msg_created', 'Created task successfully!');
            $id_clients = $data['client']['id'];

            $this->tasks_model->create_task();
            $lastid = $this->db->insert_id();


            // $que = $this->tasks_model->get_task($lastid);

            // print_r($que['assigned_date']);

            if($_POST['assigned_id'] == 0){
                $_POST['assigned_date'] = 0;
                $_POST['assigned_datetime'] = 0;
                $assinged_usr = array(
                    'assigned_date' => $this->input->post('assigned_date'),
                    'assigned_datetime' => $this->input->post('assigned_datetime')
                );
                $this->tasks_model->update_task_assigned($lastid, $assinged_usr);
                
            }else{

                $cdate = new DateTime($data['current_datetime']);
                $cdf = date_format($cdate, 'Y-m-d');

                $_POST['assigned_date'] =  $cdf;
                $_POST['assigned_datetime'] = $data['current_datetime'];

                // print_r($_POST['assigned_datetime']);

                $assinged_usr = array(
                    'assigned_date' => $this->input->post('assigned_date'),
                    'assigned_datetime' => $this->input->post('assigned_datetime')
                );
                $this->tasks_model->update_task_assigned($lastid, $assinged_usr);
            }


            
            $_POST['task_id'] = $lastid;



            $insert_instruct = array( 
                'instruction' => $this->input->post('instruction'),
                'task_id' => $this->input->post('task_id')
            );

            $this->tasks_model->create_task_instruction_value($insert_instruct);

            redirect('task/'.$lastid);
        }
    }
    
        public function delete_task_instruction($id =  NULL){
            $data = $this->user_info;
            $role = $data['user_info']['role'];
            if($role == 2){ redirect('/');}
            $this->session_users();
        
            $data['gettask_id'] = $this->tasks_model->get_id_instruction($id);
            
            $task_id = $data['gettask_id']['task_id'];
            
            if(empty($data['gettask_id'])){

                redirect('task/'.$task_id);

            }
            

            $this->session->set_flashdata('msg', 'Deleted Success');
            $this->db->delete('instruction_list', array('id' => $id)); 
            
            redirect('task/'.$task_id);
        }

        public function delete_task($id =  NULL){
            $data = $this->user_info;
            $role = $data['user_info']['role'];
            if($role == 2){ redirect('/');}
            $this->session_users();
            $data = $this->user_info;

            $data['gettask_id'] = $this->tasks_model->get_task($id);
            
            if(empty($data['gettask_id'])){

                redirect('tasks');

            }
            

            $this->session->set_flashdata('msg', 'Deleted Success');
            $this->db->delete('tasks', array('id' => $id)); 
            $this->db->delete('instruction_list', array('task_id ' => $id)); 
            $this->db->delete('time_progress_start', array('task_id ' => $id)); 
            $this->db->delete('time_progress_end', array('task_id ' => $id)); 
            
            redirect('tasks');
        }


        public function error_index(){
            $data = $this->user_info;
            $this->session_users();
    
            $this->form_validation->set_rules('error_name','Error Name','required');
            $this->form_validation->set_rules('error_category','Error Category','required');


            $post_data = array(
                'error_name' => $this->input->post('error_name'),
                'error_category' => $this->input->post('error_category')
            );

            // print_r($post_data);
            // $error_minor = 'minor';
            $data['minor_errors'] = $this->tasks_model->get_errors('minor');
            $data['major_errors'] = $this->tasks_model->get_errors('major');

                
            if($this->form_validation->run() === FALSE){
                $this->load->view('templates/head', $data);
                $this->load->view('templates/sidebar');
                $this->load->view('templates/header',$data);
                $this->load->view('tasks/error_index', $data);
                $this->load->view('templates/footer');
            }else{
                $this->tasks_model->create_error($post_data);
                $this->session->set_flashdata('msg_created', 'Created successfully!');
                redirect('task/errors');
            }



        }

// COMMENTS SECTION
        public function comment_index($id = NULL){
            $data = $this->user_info;
            $this->session_users();
            $user_id = $data['user_info']['id'];
            $data['get_task'] = $this->tasks_model->get_task($id);

            $error = $this->form_validation->set_rules('qa_comment','QA Comment');
            $error = $this->form_validation->set_rules('qa_comment_child','QA Comment Sub');
            $error = $this->form_validation->set_rules('text_comment_update');


            $data['qa_comments'] = $this->tasks_model->get_task_comments($id);

            if($data['qa_comments'] != NULL):

            $id_comment_parent = $data['qa_comments']['id'];

            // exit;
            $data['get_reply'] = $this->tasks_model->get_task_comments_child($id_comment_parent);
            endif;

            if($this->input->post('qa_comment')):
                $this->form_validation->set_rules('comment_text','Comment Text','required');
                $post_data = array(
                    'task_id' => $id,
                    'comment_qa_id' => $user_id,
                    'comment_text' => $this->input->post('comment_text')
                );
                if($this->form_validation->run() === TRUE){
                    
                    $this->tasks_model->add_comments($post_data);
                    $this->session->set_flashdata('msg_created', 'Added comment successfully!');
                    redirect('task/'.$id.'/comment');
                }

            endif; 


            if($this->input->post('qa_comment_child')):
                $comment_parent_id = $data['qa_comments']['id'];

                $this->form_validation->set_rules('comment_text_child','Comment Text Child','required');


                $post_data = array(
                    'comment_parent_id' => $comment_parent_id,
                    'comment_text_child' => $this->input->post('comment_text_child'),
                    'comment_user_id' =>  $user_id
                );

        
                if($this->form_validation->run() === TRUE){
                    
                    $this->tasks_model->add_comments_child($post_data);
                    $this->session->set_flashdata('msg_created', 'Added replied successfully!');
                    redirect('task/'.$id.'/comment');
                }

            endif; 


            if($this->input->post('comment_update')):
                $comment_parent_id = $data['qa_comments']['id'];
                $this->form_validation->set_rules('text_comment_update','Comment Text','required');

                $post_data = $this->input->post('text_comment_update');
    
                if($this->form_validation->run() === TRUE){
   
                    $this->tasks_model->update_comment_qa($id_comment_parent, $post_data);
                    $this->session->set_flashdata('msg_created', 'Updated comment successfully!');
                    redirect('task/'.$id.'/comment');
                }

            endif; 

            if($this->form_validation->run() === FALSE){
                $this->load->view('templates/head', $data);
                $this->load->view('templates/sidebar');
                $this->load->view('templates/header',$data);
                $this->load->view('tasks/comments/index', $data);
                $this->load->view('templates/footer');
            }else{

        
                

                redirect('task/'.$id.'/comment');
           
                
            }


        }
    


}
