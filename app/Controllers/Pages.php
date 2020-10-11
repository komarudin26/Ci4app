<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        // variabel data untuk <title></title>
        $data = [
            'title' => 'Home | WebProgrammingCom'
        ];

        //untuk memanggil view
        echo view('pages/home', $data);
    }

    public function about()
    {
        // variabel data untuk <title></title>
        $data = [
            'title' => 'About Me'
        ];

        //untuk memanggil view
        echo view('pages/about', $data);
    }

    public function contact()
    {
        //variabel data untuk <title></title>
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl. Veteran II Damc Desa Wiyono',
                    'kota' => 'Palembang'
                ],
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl. Veteran II Damc Desa Wiyono',
                    'kota' => 'Palembang'
                ]
            ]
        ];

        //untuk memanggil view
        echo view('pages/contact', $data);
    }
    //--------------------------------------------------------------------

}
