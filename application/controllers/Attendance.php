<?php
class Attendance extends CI_Controller {

    var $user_info;

    function __construct(){
        parent::__construct(); // needed when adding a constructor to a controller
        new DateTime();

      
        $this->user_info = array(
            'sitename' => 'TaskBai 1.0',
            'robots' => 'noindex,nofollow',
            'user_info' => $this->users_model->get_user_session($this->session->userdata('logged_in')['email_address']),
            'task_status' => array("Pending","Break","Inprogress","For QA", "Completed", "Checking"),
            'current_datetime' => date('y-m-d H:i:s'),
            'ip_blocker' => $this->load->helper("ipblocker_helper")
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
        $user_id = $data['user_info']['id'];

   

        $data['user_id'] = $user_id;
        $data['attendance_list'] = $this->attendance_model->get_attendance($user_id);
        $data['object'] = $this->load->helper("datetime_helper");

        $curr_date = date('Y-m-d');
 
        $user_attendance = $this->attendance_model->get_attendance_today($user_id, $curr_date);
        $data['timein'] = $user_attendance['time_in'];
        $data['timeout'] = $user_attendance['time_out'];

        // print_r($user_attendance);

        $today_attendance = array(
            'user_id' => $user_id,
            'time_in' => NULL,
            'time_out' => NULL,
            'date_attendance' => $data['current_datetime']
        );

        if(empty($user_attendance)):
            $this->attendance_model->create_attendance_today($user_id,$today_attendance);
            redirect('attendance');
        endif;

        if($user_attendance < $curr_date):
        $this->attendance_model->create_attendance_today($user_id,$today_attendance);
        endif;
  


        $curr_time = date('H:i');
        $clockin_action = $this->input->post('clockin');
        $clockout_action = $this->input->post('clockout');

        // print_r($clockin_action);

        if(isset($clockin_action)):
            $clockin = array(
                'time_in' => $curr_time
            );

            $dt1 = date_create('09:00:00');
            $dt2 = date_create($curr_time);
            $diff = date_diff($dt1,$dt2);

            $late_value = NULL;
    
            if($dt1 >= $dt2){
                $late_value = NULL;
            }else{
                $late_value = $diff->format("%H:%I:%S");
            }

            $late_arr = array(
                'late' => $late_value
            );

            // print_r($late_arr);

            // exit;
            $this->attendance_model->update_attendance_late($user_id, $late_arr, $curr_date);

            // exit;

            $this->session->set_flashdata('msg_created', 'Updated successfuly!');           
            $this->attendance_model->update_attendance_clockin($user_id, $clockin, $curr_date);

            redirect('attendance');

        endif;

        if(isset($clockout_action)):
            $clockout = array(
                'time_out' => $curr_time
            );
            $this->session->set_flashdata('msg_created', 'Updated successfuly!');           
            $this->attendance_model->update_attendance_clockout($user_id, $clockout, $curr_date);
            redirect('attendance');

        endif;
        
        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/head', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/header',$data);
            $this->load->view('attendance/index',$data);
            $this->load->view('templates/footer');
        }else{
             redirect('attendance');
        }
    }

    public function attendance_list(){      
        $data = $this->user_info;
        $this->session_users();
        $user_id = $data['user_info']['id'];



        //$new_array = '';
        
        $users = $data['users'] = $this->users_model->get_users_developer();
        // $size_number = sizeof($users);
        // for($i=0;$i<=$size_number-1; $i++ ){
        //     print_r($users[$i]);           
        // }
        // print_r($size_number);
        // exit;
        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('attendance/attendance_list',$data);
        $this->load->view('templates/footer');

    }

    public function attendance_user($id =  NULL){ 
        $data = $this->user_info;
        $this->session_users();
        $user_id = $data['user_info']['id'];

        $data['attendance_list'] = $this->attendance_model->get_attendance($id);
        $data['object'] = $this->load->helper("datetime_helper");

        $data['user'] = $this->users_model->get_user($id);
        if(empty($data['user'])){
            show_404();
        }
        $data['user'];

        // print_r($data['attendance_list']);

        // exit;
        $this->load->view('templates/head', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/header',$data);
        $this->load->view('attendance/attendance_user',$data);
        $this->load->view('templates/footer');
    }
        
}