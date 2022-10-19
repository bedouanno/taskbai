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

    public function index(){
            $data = $this->user_info;
            


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
    
    public function view($id =  NULL){

    
        $data = $this->user_info;
        $data['task'] = $this->tasks_model->get_task($id);
        $data['assigned_name'] = $this->tasks_model->get_user_assigned_task($data['task']['assigned_id']);
                
        $data['created_task_name'] = $this->tasks_model->get_user_created_task($data['task']['created_id']);

        $data['users_to_assigned'] = $this->users_model->get_users();  

  
        $data['list_instructions'] = $this->tasks_model->get_task_instruction($data['task']['id']);

        // print_r($data['list_instructions']);

        $task_id = $data['task']['id'];

        // Create Instructions
        $this->form_validation->set_rules('instruction','Instruction','required');
        $this->form_validation->set_rules('task_id','Task ID','required');

        // Update Instructions
        $this->form_validation->set_rules('task_url','task_url');
        $this->form_validation->set_rules('next_steps','next_steps');
        $this->form_validation->set_rules('additional_notes','additional_notes');

        // Update Assigned to
        $this->form_validation->set_rules('assigned_id','assigned_id');
        $this->form_validation->set_rules('assigned_date','assigned_date');
        $this->form_validation->set_rules('assigned_datetime','assigned_datetime');

        // Update Task Status
        $this->form_validation->set_rules('status','status');

        $post_status = $this->tasks_model->status_post();
        
//        print_r($post_status);

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
            
            $this->session->set_flashdata('msg_created', 'Created instruction successfuly!');           
             $this->tasks_model->create_task_instruction();
             redirect('task/'.$task_id);

        }

        if(!empty($post_update['task_url'] or $post_update['next_steps'] or $post_update['next_steps'])){
            $this->session->set_flashdata('msg_created', 'Updated successfuly!');           
            $this->tasks_model->update_task($task_id);
            redirect('task/'.$task_id);
         }

         if(!empty($post_update_assigned['assigned_id'] or $post_update_assigned['assigned_date'])){
            $this->session->set_flashdata('msg_created', 'Updated successfuly!');      
            
            $this->tasks_model->update_task_assigned($task_id, $assinged_usr);

            $_POST['status'] = 0;
            $statusPost = array(
                'status' => $this->input->post('status')
            );


            $this->tasks_model->update_task_status($task_id, $statusPost);
            redirect('task/'.$task_id);
         }

         if(!empty($post_status['status'])){
           // <!-- 'task_status' => array("Pending","Break","Inprogress","For QA", "Completed"), -->
            // $this->session->set_flashdata('msg_created', 'Updated successfuly!');     
             $currenttime = time();

            if($post_status['status'] == 0):
            endif;
            if($post_status['status'] == 4):
            endif;
            if($post_status['status'] == 5):
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
                $time_end = date("h:i a", $currenttime); 
               
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
        $data['users'] = $this->users_model->get_users();
        $data['client'] = $this->client_model->get_client($id);

        $this->form_validation->set_rules('task_name','Task Name','required');
        $this->form_validation->set_rules('assigned_id','Assigned To');
        $this->form_validation->set_rules('created_id','Created By');


        $this->form_validation->set_rules('instruction','instruction');

                
        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('tasks/create', $data);
            $this->load->view('templates/footer');
        }else{
            
            $this->session->set_flashdata('msg_created', 'Created task successfuly!');
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
        
            $data['gettask_id'] = $this->tasks_model->get_task($id);
            
//            $task_id = $data['gettask_id']['task_id'];
            
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

}
