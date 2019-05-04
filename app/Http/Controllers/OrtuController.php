<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OrtuController extends Controller
{
    public function index()
    {
    	return view('ortu.dashboard');
    }
    public function absensi()
    {
        return view('ortu.absensi');
    }
    public function laporan()
    {
        return view('ortu.laporan');
    }
    public function raport()
    {
        return view('ortu.raport');
    }
}
