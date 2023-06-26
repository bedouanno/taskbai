<?php
class Activity_model extends CI_Model {
    public function __construct(){
        $this->load->database();
    }

    // Create activity
    public function create_activity($postValue = FALSE){ 
        $data = $postValue;
        return $this->db->insert('activity_training', $data);
    }

    public function get_day_activity($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('activity_training');
            return $query->result_array();
        }

        $query = $this->db->get_where('activity_training', array('id' => $id));
        return $query->row_array();
    }


    // Create Subject
    public function create_subject($postValue = FALSE){ 
        $data = $postValue;
        return $this->db->insert('activity_subject', $data);
    }

    public function get_subject($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('activity_subject');
            return $query->result_array();
        }
        $query = $this->db->get_where('activity_subject', array('id' => $id));
        return $query->row_array();
    }

    public function get_activity_subjects($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('activity_subject');
            return $query->result_array();
        }
        $query = $this->db->get_where('activity_subject', array('activity_id' => $id));
        return $query->result_array();
    }

    public function get_subjects_slug($slug = FALSE){
        if($slug === FALSE){
            $query = $this->db->get('activity_subject');
            return $query->result_array();
        }
        $query = $this->db->get_where('activity_subject', array('subject_slug' => $slug));
        return $query->row_array();
    }


    public function update_activity($id = FALSE, $postValue = FALSE){
        $data = $postValue;
        $this->db->set($data);
        $this->db->where('activity_training.id', $id);
        $this->db->update('activity_training');
        $result = $this->db->affected_rows(); 
        return $result;
    }

    
    public function update_subject($id = FALSE, $postValue = FALSE){
        $data = $postValue;
        $this->db->set($data);
        $this->db->where('activity_subject.id', $id);
        $this->db->update('activity_subject');
        $result = $this->db->affected_rows(); 
        return $result;
    }


    // FOR TOPIC
    public function get_subject_topic($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('activity_subject');
            return $query->result_array();
        }

        $query = $this->db->get_where('activity_subject', array('id' => $id));
        return $query->row_array();
    }

    public function get_topic_subject($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('activity_topics');
            return $query->result_array();
        }

        $query = $this->db->get_where('activity_topics', array('topic_subject' => $id));
        return $query->result_array();
    }

    public function get_topic_subject_slugs($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('activity_topics');
            return $query->result_array();
        }

        $query = $this->db->get_where('activity_topics', array('id' => $id));
        return $query->row_array();
    }

    public function get_topic($id = FALSE){
        if($id === FALSE){
            $query = $this->db->get('activity_topics');
            return $query->result_array();
        }

        $query = $this->db->get_where('activity_topics', array('id' => $id));
        return $query->row_array();
    }



    public function create_topic($postValue = FALSE){ 
        $data = $postValue;
        return $this->db->insert('activity_topics', $data);
    }

    public function update_topic($id = FALSE, $postValue = FALSE){
        $data = $postValue;
        $this->db->set($data);
        $this->db->where('activity_topics.id', $id);
        $this->db->update('activity_topics');
        $result = $this->db->affected_rows(); 
        return $result;
    }


}