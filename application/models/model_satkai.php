<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class model_satkai extends MY_Model
{
    public function index(){

        $data = array();

        $this->load->model("model_satkai");
        $data['list_tb_customer'] = $this->model_satkai->get_users();

        $this->load->view("kelola_satkai",$data);
    }
   
}
