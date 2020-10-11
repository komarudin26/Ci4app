<?php

namespace App\Controllers;

use App\Models\KomikModel;
use CodeIgniter\HTTP\Files\UploadedFile;
use Generator;

class Komik extends BaseController
{
    protected $komikmodel;
    // fungsi ini digunakan untuk memasukin database
    public function __construct()
    {
        $this->komikmodel = new KomikModel();
    }


    public function index()
    {
        // $komik = $this->komikmodel->findAll();

        $data = [
            'title' => 'Daftar Komik',
            'komik' => $this->komikmodel->getKomik()
        ];
        // $komikmodel = new App\Models\KomikModel

        return view('komik/index', $data);
    }

    //detail data
    public function detail($slug)
    {
        $data = [
            'title' => 'Daftar Komik',
            'komik' => $this->komikmodel->getKomik($slug)
        ];

        // jika komik tidak ada ditabel
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . ' Tidak 
            ditemukan.');
        }

        return view('komik/detail', $data);
    }

    //tambah data
    public function create()
    {
        $data = [
            'title' => 'From Tambah Data',
            'validation' => \Config\Services::validation()
        ];

        return view('komik/create', $data);
    }

    public function save()
    {
        //Validasi input
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} komik harus diisi.',
                    'is_unique' => '{field} komik sudah terdaftar.'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/png,image/jpeg]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]

        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
            return redirect()->to('/komik/create')->withInput();
        }
        //End validasi

        //ambil gambar
        $fileSampul = $this->request->getFile('sampul');
        // apakah tidak ada gambar yang diupload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            // ambil nama file sampul
            $namaSampul = $fileSampul->getRandomName();
            //pindahkan file ke folder img
            $fileSampul->move('img', $namaSampul);
        }

        //insert
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikmodel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' =>  $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan.');

        return redirect()->to('/komik');
    }

    public function delete($id)
    {
        //cari gambar berdasarkan id
        $komik = $this->komikmodel->find($id);

        if ($komik['sampul'] != 'default.jpg') {
            //hapus gambar difolder
            unlink('img/' . $komik['sampul']);
        }

        // delete
        $this->komikmodel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil dihapus.');
        return redirect()->to('/komik');
    }

    public function edit($slug)
    {
        $data = [
            'title' => 'From Ubah Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikmodel->getKomik($slug)
        ];

        return view('komik/edit', $data);
    }

    public function update($id)
    {
        //cek judul
        $komiklama = $this->komikmodel->getKomik($this->request->getVar('slug'));
        if ($komiklama['judul'] == $this->request->getVar('judul')) {
            $rules_judul = 'required';
        } else {
            $rules_judul = 'required|is_unique[komik.judul]';
        }
        //Validasi input
        if (!$this->validate([
            'judul' => [
                'rules' => $rules_judul,
                'errors' => [
                    'required' => '{field} komik harus diisi.',
                    'is_unique' => '{field} komik sudah terdaftar.'
                ]
            ],

            'penulis' => 'required',
            'penerbit' => 'required',

            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/png,image/jpeg]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]

        ])) {

            // $validation = \Config\Services::validation();
            // return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput()->with('validation', $validation);
            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
        }
        //End validasi

        $fileSampul = $this->request->getFile('sampul');

        // cek gambar, apakah tetep gambar lama
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            // Generate gambar file random
            $namaSampul = $fileSampul->getRandomName();
            // Pindahkan gambar
            $fileSampul->move('img', $namaSampul);
            // hapus file yang lama
            unlink('img/' . $this->request->getVar('sampulLama'));
        }

        //insert
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikmodel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data berhasil diubah.');

        return redirect()->to('/komik');
    }
}
