<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ortu;
use App\Siswa;
use App\Komentar;
use App\Nilai;
use App\Pelajaran;
use App\Laporan;

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
            $request->session()->put('user', $tabelOrtu->id);
            return redirect('/ortu');
        }else{
            return redirect()->back();
        }
    }

    public function laporan(Request $request)
    {
        $siswa = Siswa::where('id_ortu', $request->session()->get('user'))->first();
        $data['laporans'] = Laporan::where('id_siswa', $siswa->id)->get();
        foreach ($data['laporans'] as $laporan) {
            $laporan->name = Siswa::where('id', $laporan->id_siswa)->first()->nama;
        }
        
       // dd($data['laporans']);
        return view('ortu.laporan', $data);
    }

    public function raport(Request $request)
    {
        // dd($request->input('select2'));
        $ortu = Ortu::where('id',$request->session()->get('user'))->first();
        $siswa=Siswa::where('id_ortu',$ortu->id)->get();
        if($request->input('select2') == null) {
            $nilai = Nilai::where('id_rapor',1)->get();
        }
        else {
            $nilai = Nilai::where('id_rapor',$request->input('select2'))->get();
        }
        
        $pelajaran = Pelajaran::all();
        return view('ortu.raport', compact('nilai','pelajaran','siswa'));
    }

    public function comment($id)
    {
        $data['komentars'] = Komentar::where('id_laporan', $id)->get();
        $data['laporan'] = Laporan::where('id', $id)->first();
        //dd($data['komentars']);
        return view('ortu.komentar_laporan', $data);
    }
}
