<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home | Web Programming with AFD',
            'test' => ['one', 'two', 'three']
        ];
        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About AFD'
        ];
        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Me',
            'address' => [
                [
                    'type' => 'House',
                    'address' => 'ABC Street No.123',
                    'city' => 'Bandung'
                ],
                [
                    'type' => 'Office',
                    'address' => 'DEF Street No.456',
                    'city' => 'Jakarta'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }

    //--------------------------------------------------------------------

}
