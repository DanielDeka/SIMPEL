<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Guru;
use App\Siswa;
use App\Absensi;
use App\Laporan;
use App\Komentar;
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
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
        $data['siswa'] = Siswa::where('id_guru',$request->session()->get('user'))->get();
        $data['count'] = 1;


        // $query = "SELECT a.id, a.nama, a.kelas, b.kehadiran, b.keterangan
        //             FROM siswas a, absensis b 
        //             WHERE a.id = b.id_siswa and a.id_guru=". $request->session()->get('user') ."";
        // $respon = \DB::select(\DB::raw($query));
        // dd($respon)
        // $data['siswa'] = Siswa::where('id_guru',$request->session()->get('user'))->get();


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
        $data['siswas'] = Siswa::where('id_guru',$request->session()->get('user'))->get();
        foreach ($data['siswas'] as $siswa) {
            $data['siswas'] = Siswa::where('id_guru',$request->session()->get('user'))->get();
        }
        // dd($data['siswas']);
    	return view('guru.form_laporan', $data);
    }

    public function daftarLaporan(Request $request)
    {
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
        $data['siswas'] = Siswa::where('id_guru',$request->session()->get('user'))->get();
        //dd($data['siswas']);
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
            $absen->save();
        }
        // dd($absen);
        return redirect('/guru/daftar_siswa');
    }

    public function createLaporan(Request $request)
    {
        $data = $request->input();
        $create = Laporan::create([
                'id_siswa' => $data['contact2-subject'],
                'judul' => $data['judul_kejadian'],
                'detail' => $data['detail_kejadian'],
                'waktu' => Carbon::now(),
            ]);
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
        return view('guru.daftar_laporan', $data);
    }

    public function comment($id)
    {
        $data['komentars'] = Komentar::where('id_laporan', $id)->get();
        $data['laporan'] = Laporan::where('id', $id)->first();
        //dd($data['komentars']);
        return view('guru.komentar_laporan', $data);
    }
}
