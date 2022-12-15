<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Manager extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('email')) {
            redirect('auth');
        }
    }

    public function index()
    {
        $data2 = array(
            'judul' => 'Barang',
            'page' => 'manager/barang',
            'admin' => $this->M_admin->tampil_data_barang(),
            'isiKategori' => $this->M_admin->tampil_data_kategori(),
        );
        $this->load->view('manager/index', $data2, false);
    }

    public function delete_barang($id_barang)
    {
        $barang = $this->M_admin->get_barang($id_barang);
        if ($barang->gambar_barang != "") {
            unlink('./uploads/' . $barang->gambar_barang);
        }
        $data = array(
            'id_barang' => $id_barang,
        );
        $this->M_admin->hapus_barang($data);
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger">Data Barang Berhasil Dihapus !!</div>');
        redirect('manager');
    }

    public function detail_barang($id_barang)
    {
        $data = array(
            'judul' => 'Detail Barang',
            'page' => 'manager/detail_barang',
            'manager' => $this->M_admin->detail_barang($id_barang)
        );
        $this->load->view('manager/index', $data, false);
    }

    public function hero()
    {
        $data2 = array(
            'judul' => 'Hero',
            'page' => 'manager/hero',
            'hero' => $this->M_hero->tampil_data(),
        );
        $this->load->view('manager/index', $data2, false);
    }

    public function hapus_hero($id_hero)
    {
        $barang = $this->M_hero->get_hero($id_hero);
        if ($barang->gambar_hero != "") {
            unlink('./gambar/hero/' . $barang->gambar_hero);
        }
        $data = array(
            'id_hero' => $id_hero,
        );
        $this->M_hero->hapus_hero($data);
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger">Data Hero Berhasil Dihapus !!</div>');
        redirect('manager/hero');
    }

    public function setujui($id_hero)
    {

        $data = array(
            'id_hero' => $id_hero,
            'status_hero' => 'disetujui',
        );

        $this->M_hero->edit_setujui($data);
        $this->session->set_flashdata('pesan',  '<div class="alert alert-success">Berhasil Diubah !!</div>');
        redirect('manager/hero');
    }

    public function tahan_hero($id_hero)
    {

        $data = array(
            'id_hero' => $id_hero,
            'status_hero' => 'BS',
        );

        $this->M_hero->edit_setujui($data);
        $this->session->set_flashdata('pesan',  '<div class="alert alert-success">Berhasil Diubah !!</div>');
        redirect('manager/hero');
    }

    public function setujui_produk($id_barang)
    {

        $data = array(
            'id_barang' => $id_barang,
            'status_produk' => 'disetujui',
        );

        $this->M_hero->edit_setujui_produk($data);
        $this->session->set_flashdata('pesan',  '<div class="alert alert-success">Berhasil Diubah !!</div>');
        redirect('manager');
    }
    public function tahan_produk($id_barang)
    {

        $data = array(
            'id_barang' => $id_barang,
            'status_produk' => 'BS',
        );

        $this->M_hero->edit_setujui_produk($data);
        $this->session->set_flashdata('pesan',  '<div class="alert alert-success">Berhasil Diubah !!</div>');
        redirect('manager');
    }
}
