<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Guru;
use App\Siswa;
use App\Absensi;
use Carbon\Carbon;

class GuruController extends Controller
{
    public function index(Request $request)
    {
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
    	return view('guru.dashboard', $data);
    }

    public function daftarSiswa(Request $request)
    {
        // STATIS
        // $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
        // $data['siswa'] = Siswa::where('id_guru',$request->session()->get('user'))->get();
        // $data['count'] = 1;



        date_default_timezone_set('Asia/Jakarta');

        $siswanya = Siswa::where('id_guru',$request->session()->get('user'))->first();
        $harinya = Absensi::where('id_siswa', $siswanya->id)->first();
        $data['siswa'] = null;
        if($harinya != null)
        {
            $nowDay = substr($harinya->created_at, 24, 2);
        

        $dayNow = date("d");

        $query = "SELECT a.id, a.nama, a.kelas, b.kehadiran, b.keterangan
                    FROM siswas a, absensis b 
                    WHERE a.id = b.id_siswa and a.id_guru=". $request->session()->get('user') ." and ". $nowDay ."=". $dayNow ."";
        $respon = \DB::select(\DB::raw($query));

        $data['siswa'] = $respon;
        
        // dd($data);
        }
        else
        // $data['siswa'] = array();
        $data['count'] = 1;
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();

    	return view('guru.daftar_siswa', $data);
    }

    public function absensiSiswa(Request $request)
    {
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
        $data['siswa'] = Siswa::where('id_guru',$request->session()->get('user'))->get();
        $data['count'] = 0;
    	return view('guru.absensi', $data);
    }

    public function formLaporan(Request $request)
    {
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
    	return view('guru.form_laporan', $data);
    }

    public function daftarLaporan(Request $request)
    {
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
    	return view('guru.daftar_laporan', $data);
    }

    public function formNilai(Request $request)
    {
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
    	return view('guru.form_nilai', $data);
    }

    public function cekGuru(Request $request)
    {
        $tabelGuru = Guru::where('email',$request->input('login-email'))->first();
        if($tabelGuru!=null){
            $request->session()->put('user', $tabelGuru->id);
            return redirect('/guru');
        }else{
            return redirect()->back();
        }
    }
    public function inputAbsen(Request $request)
    {
        $data = $request->input();
        foreach($data['siswa'] as $key => $value)
        {
            $absen = new Absensi;
            $absen->id_siswa = $data['siswa'][$key];
            $absen->kehadiran = $data['kehadiran'][$key];
            $absen->created_at = Carbon::now();
            $absen->save();
        }
        return redirect('/guru/daftar_siswa');
    }
}
