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
			],
			'sampul' => [
				'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
				'errors' => [
					'max_size' => 'Ukuran gambar terlalu besar',
					'is_image' => 'yang ada pilih bukan gambar',
					'mime_in' => 'yang ada pilih bukan gambar'
				]
			]
		])) {
			// $validation = \Config\Services::validation();
			// return redirect()->to('/comics/create')->withInput()->with('validation', $validation);
			return redirect()->to('/comics/create')->withInput();
		}

		//ambil gambar
		$fileSampul = $this->request->getFile('sampul');
		//apakah tidak ada gambar yang diupload
		if ($fileSampul->getError() == 4) {
			$namaSampul = 'default.jpg';
		} else {
			//generate nama sampul random
			$namaSampul = $fileSampul->getRandomName();
			//pindahkan ke folder img
			$fileSampul->move('img', $namaSampul);
		}

		$slug = url_title($this->request->getVar('judul'), '-', true);

		$this->comicsModel->save([
			'judul' => $this->request->getVar('judul'),
			'slug' => $slug,
			'penulis' => $this->request->getVar('penulis'),
			'penerbit' => $this->request->getVar('penerbit'),
			'sampul' => $namaSampul
		]);

		session()->setFlashdata('pesan', 'Data berhasil ditambahkan!');

		return redirect()->to('/comics');
	}

	public function delete($id)
	{
		//cari gambar berdasarkan id
		$comics = $this->comicsModel->find($id);

		//cek juga file gambar default
		if ($comics['sampul'] != 'default.jpg') {
			//hapus gambar
			unlink('img/' . $comics['sampul']);
		}

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
			],
			'sampul' => [
				'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
				'errors' => [
					'max_size' => 'Ukuran gambar terlalu besar',
					'is_image' => 'yang ada pilih bukan gambar',
					'mime_in' => 'yang ada pilih bukan gambar'
				]
			]
		])) {
			return redirect()->to('/comics/edit' . $this->request->getVar('slug'))->withInput();
		}

		$fileSampul = $this->request->getFile('sampul');

		//cek gambar apakah tetap pakai gambar lama
		if ($fileSampul->getError() == 4) {
			$namaSampul = $this->request->getVar('sampulLama');
		} else {
			//generate file random
			$namaSampul = $fileSampul->getRandomName();
			//pindahkan gambar
			$fileSampul->move('img', $namaSampul);
			//hapus file lama
			unlink('img/' . $this->request->getVar('sampulLama'));
		}

		$slug = url_title($this->request->getVar('judul'), '-', true);

		$this->comicsModel->save([
			'id' => $id,
			'judul' => $this->request->getVar('judul'),
			'slug' => $slug,
			'penulis' => $this->request->getVar('penulis'),
			'penerbit' => $this->request->getVar('penerbit'),
			'sampul' => $namaSampul
		]);

		session()->setFlashdata('pesan', 'Data berhasil diubah!');

		return redirect()->to('/comics');
	}
}
