<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ortu;
use App\Laporan;
use App\Siswa;
use App\Komentar;

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
        $data['laporans'] = Laporan::where('id_siswa', 21)->get();
        foreach ($data['laporans'] as $laporan) {
            $laporan->name = Siswa::where('id', $laporan->id_siswa)->first()->nama;
        }
        
       // dd($data['laporans']);
        return view('ortu.laporan', $data);
    }

    public function raport()
    {
        return view('ortu.raport');
    }

    public function comment($id)
    {
        $data['komentars'] = Komentar::where('id_laporan', $id)->get();
        $data['laporan'] = Laporan::where('id', $id)->first();
        //dd($data['comment']);
        return view('ortu.komentar_laporan', $data);
    }
}
