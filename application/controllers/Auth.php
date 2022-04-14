<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }

    public function index()
    {
        $this->form_validation->set_rules('username', 'Username', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        if ($this->form_validation->run() == false) {
            $this->load->view('auth/templates/auth_header');
            $this->load->view('auth/login');
            $this->load->view('auth/templates/auth_footer');
        } else {
            //Berhasil login
            $this->_login();
        }
    }

    private function _login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');

        $user = $this->db->get_where('user', ['username' => $username])->row_array();

        if ($user) {
            if (password_verify($password, $user['password'])) {
                $data = [
                    'unique_id' => $user['unique_id'],
                    'username' => $user['username'],
                    'role_id' => $user['role_id']
                ];
                $this->session->set_userdata($data);
                if ($user['role_id'] == 1) {
                    redirect('admin');
                } else {
                    redirect('home');
                }
            } else {

                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert" > 
                Sepertinya ada salah dengan password atau username anda.</div>');
                redirect('auth');
            }
        }
    }

    public function registrasi()
    {

        $unique_id = substr(md5(microtime()), rand(0, 25), 6);
        $user_status = 'active';


        $this->form_validation->set_rules('username', 'Username', 'required|trim');
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[8]|matches[password2]');
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');

        if ($this->form_validation->run() == false) {
            $this->load->view('auth/templates/auth_header');
            $this->load->view('auth/registrasi');
            $this->load->view('auth/templates/auth_footer');
        } else {

            $data = [
                'unique_id' => $unique_id,
                'username' => htmlspecialchars($this->input->post('username', true)),
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),

                'user_status' => $user_status,
                'role_id' => 2,
                'date_created' => time()
            ];

            $this->db->insert('user', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert" > 
            Selamat Anda Berhasil Mendaftar. Silahkan Login!</div>');
            redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('username');
        $this->session->unset_userdata('role_id');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert" > 
        Kamu telah berhasil Log out.</div>');
        redirect('auth');
    }
}
