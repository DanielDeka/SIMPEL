<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Guru;

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

    public function absensiSiswa()
    {
    	return view('guru.absensi');
    }

    public function formLaporan()
    {
    	return view('guru.form_laporan');
    }

    public function daftarLaporan()
    {
    	return view('guru.daftar_laporan');
    }

    public function formNilai()
    {
    	return view('guru.form_nilai');
    }

    public function cekGuru(Request $request)
    {
        $tabelGuru = Guru::where('email',$request->input('login-email'))->first();
        if($tabelGuru!=null){
            return view('guru.dashboard');
        }else{
            return redirect()->back();
        }
    }
}
