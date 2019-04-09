<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}


class Customer extends Admin_Controller
{
public function index(){

        $data = array();

        $this->load->list_tb_customer("model_satkai");
        $data['list_tb_customer'] = $this->model_satkai->get_users();

        $this->load->view("kelola_satkai",$data);
    }

    public function add(){
    $this->load->list_tb_customer("model_satkai");  

        $data = array();
        $data['tipe'] = "Add";

        if(isset($_POST['tombol_submit'])){
            //proses simpan dilakukan
            $this->model_satkai->simpan($_POST);
            redirect("satkai");
        }
        
        $this->load->view("tambah_satkai",$data);

        //die("ini tampilan dari fungsi add sebelum di lempar ke view add");
    }
}
