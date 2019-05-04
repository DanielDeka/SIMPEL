<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GuruController extends Controller
{
    public function index()
    {
    	return view('guru.dashboard');
    }

    public function daftarSiswa()
    {
    	return view('guru.daftar_siswa');
    }
}
