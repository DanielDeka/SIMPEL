<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ortu;

class OrtuController extends Controller
{
    public function index()
    {
        return view('ortu.dashboard');
    }
    
    public function cekOrtu(Request $request)
    {
        $tabelOrtu = Ortu::where('email',$request->input('login-email'))->first();
        if($tabelOrtu!=null){
            return view('ortu.dashboard');
        }else{
            return redirect()->back();
        }
    }
}
