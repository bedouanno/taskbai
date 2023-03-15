<?php
class Tasks_model extends CI_Model {
    public function __construct(){
        $this->load->database();
    }
    public function get_tasks($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('tasks');
            return $query->result_array();
        }

        $query = $this->db->get_where('tasks', array('assigned_id' => $id));
        return $query->result_array();
    }

    public function get_tasks_today($id = FALSE, $date_today = FALSE){
        if($id === FALSE){
            $query = $this->db->get('tasks');
            return $query->result_array();
        }


        $query = $this->db->get_where('tasks', array('assigned_id' => $id, 'assigned_date' => $date_today));

        return $query->result_array();
    }

    // ADMIN VIEW TASK LIST
    public function get_tasks_today_admin($date_today = FALSE){
        if($date_today === FALSE){
            $query = $this->db->get('tasks');
            return $query->result_array();
        }

        $query = $this->db->get_where('tasks', array('assigned_date' => $date_today));

        return $query->result_array();
    }

    public function get_task($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('tasks');
            return $query->result_array();
        }

        $query = $this->db->get_where('tasks', array('id' => $id));
        return $query->row_array();
    }

    public function get_task_assigned($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('tasks');
            return $query->result_array();
        }

        $query = $this->db->get_where('tasks', array('assigned_id' => $id, 'progress_status' => 1));
        return $query->result_array();
    }
    
    public function get_task_bycomp($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('tasks');
            return $query->result_array();
        }

        $query = $this->db->get_where('tasks', array('account_id' => $id));
        return $query->result_array();
    }
    
    public function get_user_assigned_task($id = FALSE){
        $this->db->select('*');
        $this->db->from('users');
        $this->db->join('tasks','users.id = tasks.assigned_id');
        $this->db->where('tasks.assigned_id', $id);
        $query = $this->db->get();

        return $query->row_array();

    }

    public function get_user_created_task($id = FALSE){
        $this->db->select('*');
        $this->db->from('users');
        $this->db->join('tasks','users.id = tasks.created_id');
        $this->db->where('tasks.created_id', $id);
        $query = $this->db->get();

        return $query->row_array();
    }


    public function create_task(){
		
        $data = array(
            'task_name' => $this->input->post('task_name'),
            'assigned_id' => $this->input->post('assigned_id'),
            'account_id' => $this->input->post('account_id'),
            'assigned_date' => $this->input->post('assigned_date'),
            'assigned_datetime' => $this->input->post('assigned_datetime'),
            'created_id' => $this->input->post('created_id')
        );
        
        return $this->db->insert('tasks',$data);
    }

    public function create_task_instruction(){
		
        $data = array(
            'instruction' => $this->input->post('instruction'),
            'task_id' => $this->input->post('task_id')
        );

        return $this->db->insert('instruction_list', $data);
    }

    public function create_task_instruction_value($postValue = FALSE){
		
        $data = $postValue;

        return $this->db->insert('instruction_list', $data);
    }

    public function update_task($id = FALSE){
		
        $data = array(
            'task_url' => $this->input->post('task_url'),
            'task_backup' => $this->input->post('task_backup'),
            'next_steps' => $this->input->post('next_steps'),
            'additional_notes' => $this->input->post('additional_notes')
        );

        $this->db->set($data);
        $this->db->where('tasks.id', $id);
        $this->db->update('tasks');

        return 1;
    }

    public function update_task_qa($id = FALSE, $postValue = FALSE){
		
        $this->db->set($postValue);
        $this->db->where('tasks.id', $id);
        $this->db->update('tasks');

        return 1;
    }



    public function post_update_task(){
        $data = array(
            'task_url' => $this->input->post('task_url'),
            'task_backup' => $this->input->post('task_backup'),
            'next_steps' => $this->input->post('next_steps'),
            'additional_notes' => $this->input->post('additional_notes')
        );

        return $data;
    }

    public function update_task_assigned($id = FALSE, $postValue = FALSE){

        $data = $postValue;
		
        $this->db->set($data);
        $this->db->where('tasks.id', $id);
        $this->db->update('tasks');


        return 1;
    }
    
    public function post_update_assigned(){
        $data = array(
            'assigned_id' => $this->input->post('assigned_id'),
            'assigned_date' => $this->input->post('assigned_date'),
            'assigned_datetime' => $this->input->post('assigned_datetime')
        );

        return $data;
    }

    public function get_id_instruction($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('instruction_list');
            return $query->result_array();
        }

        $query = $this->db->get_where('instruction_list', array('id' => $id));
        return $query->row_array();

    }



    public function get_task_instruction($id = FALSE){
        $this->db->select('*');
        $this->db->from('instruction_list');
        $this->db->where('instruction_list.task_id', $id);
        $query = $this->db->get();

        return $query->result_array();
    }

    public function task_urlnsan(){
		
        $data = array(
            'task_url' => $this->input->post('task_url'),
            'task_backup' => $this->input->post('task_backup'),
            'next_steps' => $this->input->post('next_steps'),
            'additional_information' => $this->input->post('additional_information')
        );
        // print_r($data);
        // exit;
        return $this->db->insert('tasks', $data);
    }


    public function status_post(){
        $data = array(
            'status' => $this->input->post('status')
        );

        return $data;
    }

    public function update_task_status($id = FALSE, $postValue = FALSE){

        $data = $postValue;
		
        $this->db->set($data);
        $this->db->where('tasks.id', $id);
        $this->db->update('tasks');


        return 1;
    }
    

    public function update_task_attachment($id = FALSE, $postValue = FALSE){

        $data = $postValue;
		
        $this->db->set($data);
        $this->db->where('tasks.id', $id);
        $this->db->update('tasks');


        return 1;
    }


    public function get_task_attachment($id = FALSE){
        $query = $this->db->get_where('tasks', array('id' => $id));
        return $query->row_array();
    }

    public function create_time_start($id = FALSE, $postValue = FALSE){
        $data = $postValue;
        return $this->db->insert('time_progress_start', $data);
    }
    
    public function create_time_end($id = FALSE, $postValue = FALSE){
        $data = $postValue;
        return $this->db->insert('time_progress_end', $data);
    }

    
    
    public function get_time_start($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('time_progress_start');
            return $query->result_array();
        }
        $query = $this->db->get_where('time_progress_start', array('task_id' => $id));
        return $query->result_array();
    }

    public function get_time_end($id = FALSE){

        if($id === FALSE){
            $query = $this->db->get('time_progress_end');
            return $query->result_array();
        }

        $query = $this->db->get_where('time_progress_end', array('task_id' => $id));

        return $query->result_array();

    }

    public function task_count() {
        return $this->db->count_all("tasks");
     }

     public function update_task_progress_status($id = NULL, $task_prog = NULL) {
        $ps = $task_prog;
        $this->db->set('progress_status', $ps);
        $this->db->where('tasks.id', $id);
        $this->db->update('tasks');
        $result =  $this->db->affected_rows(); 
        return $result;

     }


    public function create_error($post_value){
    return $this->db->insert('tasks_errors', $post_value);
    }

    public function add_task_error($post_value){
        return $this->db->insert('task_qa', $post_value);
    }


    public function get_errors($categ){
        if($categ === FALSE){
            $query = $this->db->get('tasks_errors');
            return $query->result_array();
        }
        $query = $this->db->get_where('tasks_errors', array('error_category' => $categ));

        return $query->result_array();
    }


    public function get_errors_with_id($id){
        if($id === FALSE){
            $query = $this->db->get('tasks_errors');
            return $query->result_array();
        }
        $query = $this->db->get_where('tasks_errors', array('id' => $id));

        return $query->result_array();
    }


    public function get_errors_task($id){
        if($id === FALSE){
            $query = $this->db->get('task_qa');
            return $query->result_array();
        }
        $query = $this->db->get_where('task_qa', array('qas_id' => $id));
        return $query->result_array();
    }

    public function get_errors_task_qa($id,  $task_id){
        $query = $this->db->get_where('task_qa', array('qas_id' => $id, 'task_id' => $task_id));
        return $query->row_array();
    }


    public function get_qa_id($id, $task_id){
        $query = $this->db->get_where('task_qa', array('qas_id' => $id, 'task_id' => $task_id));
        return $query->row_array();
    }




    public function get_task_errors($id){
        if($id === FALSE){
            $query = $this->db->get('task_qa');
            return $query->result_array();
        }

        $this->db->select('*');
        $this->db->from('task_qa');
        $this->db->where('task_id', $id);
        $this->db->join('tasks', 'tasks.id = task_qa.task_id');
        $this->db->join('tasks_errors', 'tasks_errors.id = task_qa.qas_id');
        $query = $this->db->get();

        // $query = $this->db->get_where('task_qa', array('qas_id' => $id));
        return $query->result_array();
    }


    public function update_task_error($id = NULL, $task_prog = NULL) {
        $ps = $task_prog;
        $this->db->set('task_qa', $ps);
        $this->db->where('task_qa.id', $id);
        $this->db->update('task_qa');
        $result =  $this->db->affected_rows(); 
        return $result;
     }

     public function delete_task_qa($task_id, $rs_id){
        $this->db->where('task_qa.task_id', $task_id);
        $this->db->where_not_in('id', $rs_id);
        $this->db->delete('task_qa');
        $result = $this->db->affected_rows(); 
        return $result;
    }

    public function delete_task_qav2($task_id){
        $this->db->where('task_qa.task_id', $task_id);
        $this->db->delete('task_qa');
        $result = $this->db->affected_rows(); 
        return $result;
    }

}