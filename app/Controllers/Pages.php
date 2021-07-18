<?php

namespace App\Controllers;


class Pages extends BaseController
{

  public function index()
  {
    $data = [
      'title' => 'Home | KancilNakal'
    ];
    return view('pages/home', $data);
  }

  public function about()
  {
    $data = [
      'title' => 'About Me'
    ];
    return view('pages/about', $data);
  }

  public function contact()
  {
    $data = [
      'title' => 'Contact',
      'alamat' => [
        [
          'tipe' => 'rumah',
          'alamat' => 'Jl. terus',
          'kota' => 'jakarta'
        ],
        [
          'tipe' => 'kantor',
          'alamat' => 'terus aja jalan',
          'kota' => 'jaksel'
        ]
      ]
    ];
    return view('pages/contact', $data);
  }
}
