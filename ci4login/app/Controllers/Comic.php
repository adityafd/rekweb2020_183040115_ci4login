<?php

namespace App\Controllers;

use App\Models\ComicModel;

class Comic extends BaseController
{
    protected $comicModel;
    public function __construct()
    {
        $this->comicModel = new ComicModel();
    }
    public function index()
    {
        //$comic = $this->comicModel->findAll();
        $data = [
            'title' => 'Comic List',
            'comic' => $this->comicModel->getComic()
        ];

        // how to connect the database without model
        // $db = \Config\Database::connect();
        // $comic = $db->query("SELECT * FROM comic");
        // foreach($comic->getResultArray() as $row) {
        //     d($row);
        // }

        // how to connect the database with a model
        //$comicModel = new \App\Models\ComicModel();

        return view('comic/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'title' => 'Comic Detail',
            'comic' => $this->comicModel->getComic($slug)
        ];

        // if comic is not inside the table
        if (empty($data['comic'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Comic Title ' . $slug . ' Not Found!');
        }

        return view('comic/detail', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Add Comic Data Form',
            'validation' => \Config\Services::validation()
        ];
        return view('comic/add', $data);
    }

    public function save()
    {
        // validasi input
        if (!$this->validate([
            'title' => [
                'rules' => 'required|is_unique[comic.title]',
                'errors' => [
                    'required' => '{field} comic must be filled!',
                    'is_unique' => '{field} comic already registered!'
                ]
            ],
            'cover' => [
                'rules' => 'max_size[cover, 1024]|is_image[cover]|mime_in[cover,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Image size is too large!',
                    'is_image' => 'What you choose is not an image!',
                    'mime_in'  => 'What you choose is not an image!'
                ]
            ]
        ])) {
            //$validation = \Config\Services::validation();
            //return redirect()->to('/comic/add')->withInput()->with('validation', $validation);
            return redirect()->to('/comic/add/')->withInput();
        }

        // take the image
        $fileCover = $this->request->getFile('cover');
        // no image uploaded
        if ($fileCover->getError() == 4) {
            $nameCover = 'default.jpg';
        } else {
            // generate the name of "cover" randomly
            $nameCover = $fileCover->getRandomName();
            // move the file to folder "images"
            $fileCover->move('images', $nameCover);
        }

        // take the name of file "cover"
        //$nameCover = $fileCover->getName();

        $slug = url_title($this->request->getVar('title'), '-', true);
        $this->comicModel->save([
            'title' => $this->request->getVar('title'),
            $slug => $slug,
            'author' => $this->request->getVar('author'),
            'publisher' => $this->request->getVar('publisher'),
            'cover' => $nameCover
        ]);

        session()->setFlashdata('message', 'Data added successfully.');

        return redirect()->to('/comic');
    }

    public function delete($id)
    {
        // search for images by id
        $comic = $this->comicModel->find($id);

        // check if the image cover file is default
        if ($comic['cover'] != 'default.jpg') {
            // delete image
            unlink('images/' . $comic['cover']);
        }

        $this->comicModel->delete($id);
        session()->setFlashdata('message', 'Data deleted successfully.');
        return redirect()->to('/comic');
    }

    public function edit($slug)
    {
        $data = [
            'title' => 'Edit Comic Data Form',
            'validation' => \Config\Services::validation(),
            'comic' => $this->comicModel->getComic($slug)
        ];
        return view('comic/edit', $data);
    }

    public function update($id)
    {
        // check title
        $oldComic = $this->comicModel->getComic($this->request->getVar('slug'));
        if ($oldComic['title'] == $this->request->getVar('title')) {
            $rule_title = 'required';
        } else {
            $rule_title = 'required|is_unique[comic.title]';
        }

        if (!$this->validate([
            'title' => [
                'rules' => $rule_title,
                'errors' => [
                    'required' => '{field} comic must be filled!',
                    'is_unique' => '{field} comic already registered!'
                ]
            ],
            'cover' => [
                'rules' => 'max_size[cover, 1024]|is_image[cover]|mime_in[cover,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Image size is too large!',
                    'is_image' => 'What you choose is not an image!',
                    'mime_in'  => 'What you choose is not an image!'
                ]
            ]
        ])) {
            return redirect()->to('/comic/edit/' . $this->request->getVar('slug'))->withInput();
        }

        $fileCover = $this->request->getFile('cover');

        // check image, is it still the old one
        if ($fileCover->getError() == 4) {
            $nameCover = $this->request->getVar('oldCover');
        } else {
            // generate the name of "cover" randomly
            $nameCover = $fileCover->getRandomName();
            // move the file to folder "images"
            $fileCover->move('images', $nameCover);
            // delete the old one
            unlink('images/' . $this->request->getVar('oldCover'));
        }

        $slug = url_title($this->request->getVar('title'), '-', true);
        $this->comicModel->save([
            'id' => $id,
            'title' => $this->request->getVar('title'),
            $slug => $slug,
            'author' => $this->request->getVar('author'),
            'publisher' => $this->request->getVar('publisher'),
            'cover' => $nameCover
        ]);

        session()->setFlashdata('message', 'Data changed successfully.');

        return redirect()->to('/comic');
    }
}
