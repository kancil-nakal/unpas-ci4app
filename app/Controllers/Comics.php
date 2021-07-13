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
		// $comics = $this->comicsModel->findAll();

		$data = [
			'title' => 'Data Comics',
			'comics' => $this->comicsModel->getComics()
		];

		return view('comics/index', $data);
	}

	public function detail($slug)
	{
		$data = [
			'title' => 'Detail Komik',
			'comics' => $this->comicsModel->getComics($slug)
		];

		if (empty($data['comics'])) {
			throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug .  ' tidak ditemukan');
		}

		return view('comics/detail', $data);
	}

	public function create()
	{
		$data = [
			'title' => 'Form Tambah Data',
			'validation' => \Config\Services::validation()
		];

		return view('comics/create', $data);
	}

	public function save()
	{
		//validasi input
		if (!$this->validate([
			'judul' => [
				'rules' => 'required|is_unique[comics.judul]',
				'errors' => [
					'required' => '{field} komik harus diisi.',
					'is_unique' => '{field} komik sudah ada.'
				]
			]
		])) {
			$validation = \Config\Services::validation();
			return redirect()->to('/comics/create')->withInput()->with('validation', $validation);
		}

		$slug = url_title($this->request->getVar('judul'), '-', true);

		$this->comicsModel->save([
			'judul' => $this->request->getVar('judul'),
			'slug' => $slug,
			'penulis' => $this->request->getVar('penulis'),
			'penerbit' => $this->request->getVar('penerbit'),
			'sampul' => $this->request->getVar('sampul')
		]);

		session()->setFlashdata('pesan', 'Data berhasil ditambahkan!');

		return redirect()->to('/comics');
	}

	public function delete($id)
	{
		$this->comicsModel->delete($id);
		session()->setFlashdata('pesan', 'Data berhasil dihapus!');
		return redirect()->to('/comics');
	}

	public function edit($slug)
	{
		$data = [
			'title' => 'Form Ubah Data',
			'validation' => \Config\Services::validation(),
			'comics' => $this->comicsModel->getComics($slug)
		];

		return view('comics/edit', $data);
	}

	public function update($id)
	{
		if (!$this->validate([
			'judul' => [
				'rules' => 'required|is_unique[comics.judul,id,' . $id . ']',
				'errors' => [
					'required' => '{field} komik harus diisi.',
					'is_unique' => '{field} komik sudah ada.'
				]
			]
		])) {
			$validation = \Config\Services::validation();
			return redirect()->to('/comics/edit')->withInput()->with('validation', $validation);
		}
		$slug = url_title($this->request->getVar('judul'), '-', true);

		$this->comicsModel->save([
			'id' => $id,
			'judul' => $this->request->getVar('judul'),
			'slug' => $slug,
			'penulis' => $this->request->getVar('penulis'),
			'penerbit' => $this->request->getVar('penerbit'),
			'sampul' => $this->request->getVar('sampul')
		]);

		session()->setFlashdata('pesan', 'Data berhasil diubah!');

		return redirect()->to('/comics');
	}
}
