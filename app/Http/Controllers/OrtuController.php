<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ortu;
use App\Siswa;
use App\Nilai;
use App\Pelajaran;

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

    public function cekOrtu(Request $request)
    {
        $tabelOrtu = Ortu::where('email',$request->input('login-email'))->first();
        if($tabelOrtu!=null){
            return redirect('/ortu');
        }else{
            return redirect()->back();
        }
    }

    public function laporan()
    {
        return view('ortu.laporan');
    }

    public function raport()
    {
        $nilai = Nilai::where('id_rapor',1)->get();
        $pelajaran = Pelajaran::all();
        return view('ortu.raport', compact('nilai','pelajaran'));
    }
}
