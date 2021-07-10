<?php

namespace App\Controllers;

use App\Models\ComicsModel;

class Comics extends BaseController
{
	protected $comicsModel;

	public function __construct()
	{
		$this->comicsModel = new ComicsModel();
	}

	public function index()
  {

		// $comicsModel = new \App\Models\ComicsModel();
		$comics = $this->comicsModel->findAll();

		$data = [
      'title' => 'Data Comics',
			'comics' => $comics
		];


    return view('comics/index', $data);
	}

}
