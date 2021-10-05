<?php

namespace App;

class Database
{
    public $link;
    public function __construct()
    {
        $this->link = mysqli_connect('localhost','root','','xn--80acbb4a1cwczg');
    }
}