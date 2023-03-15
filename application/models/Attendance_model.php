<?php
class Attendance_model extends CI_Model {
    public function __construct(){
        $this->load->database();
    }

    public function get_attendance($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('attendance');
            return $query->result_array();
        }

        $query = $this->db->get_where('attendance', array('user_id' => $id));
        return $query->result_array();

    }

    public function get_attendance_today($id = FALSE, $current_date = FALSE){

        if($id === FALSE){
            $query = $this->db->get('attendance');
            return $query->result_array();
        }

        $query = $this->db->get_where('attendance', array('user_id' => $id, 'date_attendance' => $current_date));

        if(empty($query)){

            return 0;
        }else{

        return $query->row_array();
        }
   
    }

    public function create_attendance_today($id = FALSE, $postValue = FALSE){
        
        if($id === FALSE){

        }
        $data = $postValue;
        return $this->db->insert('attendance',$data);
    }

    public function update_attendance_clockin($id = FALSE, $postValue = FALSE, $curr_date = FALSE){

        $data = $postValue;

        $this->db->set($data);
        $this->db->where('attendance.user_id', $id);
        $this->db->where('attendance.date_attendance', $curr_date);
        $this->db->update('attendance');

        $result = $this->db->affected_rows(); 
        return $result;
    }

    public function update_attendance_clockout($id = FALSE, $postValue = FALSE, $curr_date = FALSE){

        $data = $postValue;


        $this->db->set($data);
        $this->db->where('attendance.user_id', $id);
        $this->db->where('attendance.date_attendance', $curr_date);
        $this->db->update('attendance');

        $result = $this->db->affected_rows(); 
        return $result;
    }

    public function update_attendance_late($id = FALSE, $postValue = FALSE, $curr_date = FALSE){

        $data = $postValue;
        $this->db->set($data);
        $this->db->where('attendance.user_id', $id);
        $this->db->where('attendance.date_attendance', $curr_date);
        $this->db->update('attendance');

        $result = $this->db->affected_rows(); 
        return $result;
    }

}