<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ortu;

class TestController extends Controller
{
    //
    public function getAllOrtu(){
        return Ortu::All();
    }


}
