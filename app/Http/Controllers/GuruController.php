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
            $nowDay = $harinya->created_at->format('d');
            
            $dayNow = date('d');
            // dd($dayNow);

            $query = "SELECT a.id, a.nama, a.kelas, b.kehadiran, b.keterangan
                        FROM siswas a, absensis b 
                        WHERE a.id = b.id_siswa and a.id_guru=". $request->session()->get('user') ." and ". $nowDay ."=". $dayNow ."";
            $respon = \DB::select(\DB::raw($query));

            $data['siswa'] = $respon;

        }

        $data['count'] = 1;
        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();

    	return view('guru.daftar_siswa', $data);
    }

    public function absensiSiswa(Request $request)
    {

        $data['guru'] = Guru::where('id',$request->session()->get('user'))->first();
        $data['siswa'] = Siswa::where('id_guru',$request->session()->get('user'))->get();
        $data['count'] = 0;
        if($data['guru']->updated_at->format('d') == Carbon::now('Asia/Jakarta')->format('d'))
        $data['status'] = 1;
        else 
        $data['status'] = 0;
        // dd($data['status']);
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
            $absen->created_at = Carbon::now('Asia/Jakarta');
            $absen->save();
        }
        $guru = Guru::find($request->session()->get('user'));
        $guru->updated_at = Carbon::now('Asia/Jakarta');
        $guru->save();
        return redirect('/guru/daftar_siswa');
    }

    public function createLaporan(Request $request)
    {
        $data = $request->input();
        $create = Laporan::create([
                'id_siswa' => $data['contact2-subject'],
                'judul' => $data['judul_kejadian'],
                'detail' => $data['detail_kejadian'],
                'waktu' => Carbon::now('Asia/Jakarta'),
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
