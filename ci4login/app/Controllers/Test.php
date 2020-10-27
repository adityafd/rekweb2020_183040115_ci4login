<?php

namespace App\Controllers;

class Test extends BaseController
{
    public function index()
    {
        echo 'This is controller "Test", method "index"';
    }

    public function about($fullname = '')
    {
        echo "Hello there, my name is $fullname.";
        echo "<br>";
        echo "This is just a test, hehe...";
    }

    //--------------------------------------------------------------------

}
