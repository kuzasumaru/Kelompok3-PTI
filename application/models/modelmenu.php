<?php
defined('BASEPATH') or exit('No direct script access allowed');


class modelmenu extends CI_Model
{

    protected $table = 'menu';
    protected $allowFields = ['kopi', 'harga'];



    public function simpanmenubaru($data, $table)
    {
        $this->db->insert($table, $data);
    }

    public function getAllMenu()
    {
        return $this->db->get('menu')->result_array();
    }

    public function getMenu($limit, $start)
    {
        return $this->db->get('menu', $limit, $start)->result_array();
    }

    function jumlahdata()
    {
        return $this->db->get('menu')->num_rows();
    }
}
