<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Ortu;
use App\Admin;
use App\Guru;
use App\Absensi;
use App\Komentar;
use App\Laporan;
use App\Nilai;
use App\Pelajaran;
use App\Rapor;
use App\Siswa;

class TestController extends Controller
{
    //


    public function createDummyAdmins(){
        for ($x = 0; $x <= 10; $x++) {
            $create = Admin::create([
                'nama' => "admin".$x,
                'email' => "admin".$x."@gmail.com",
                'password' => "12345678",
            ]);
        } 
        return "Success";

    }
    public function createDummyGuru(){
        for ($x = 0; $x <= 10; $x++) {
            $create = Guru::create([
                'nama' => "guru ".$x,
                'email' => "guru".$x."@gmail.com",
                'password' =>"12345678",
                'contact' => "+6281234568975",
            ]);
        } 
        return "Success";

    }
    public function createDummyOrtu(){
        for ($x = 51; $x <= 150; $x++) {
            $create = Ortu::create([
                'nama' => "ortu ".$x,
                'email' => "ortu".$x."@gmail.com",
                'password' =>"12345678",
                'contact' => "+6281234568975",
                'alamat' => "Jalan Teknik Kimia",
            ]);
        } 
        return "Success";

    }
    public function createDummyPelajaran(){
        for ($x = 0; $x <= 10; $x++) {
            $create = Pelajaran::create([
                'nama' => "Pelajaran ".$x,
                'nilai' => "Pelajaran ".$x,
                'tipe' => "Pelajaran ".$x,
                'id_pelajaran' => "Pelajaran ".$x,
                'nama' => "Pelajaran ".$x,
            ]);
        } 
        return "Success";

    }
   
    public function createDummySiswa(){
        for ($x = 1; $x <= 150; $x++) {
            $create = Siswa::create([
                'nama' => "Siswa ".$x,
                'id_ortu' => $x,
                'id_guru' => 1,
                'kelas' => "1.A",
            ]);
            $x++;
            $create = Siswa::create([
                'nama' => "Siswa ".$x,
                'id_ortu' => $x,
                'id_guru' => 2,
                'kelas' => "1.B",
            ]);
            $x++;
            $create = Siswa::create([
                'nama' => "Siswa ".$x,
                'id_ortu' => $x,
                'id_guru' => 3,
                'kelas' => "1.C",
            ]);
            $x++;
            $create = Siswa::create([
                'nama' => "Siswa ".$x,
                'id_ortu' => $x ,
                'id_guru' => 4,
                'kelas' => "2.A",
            ]);
            $x++;
            $create = Siswa::create([
                'nama' => "Siswa ".$x,
                'id_ortu' => $x,
                'id_guru' => 5,
                'kelas' => "2.B",
            ]);
            $x++;
            $create = Siswa::create([
                'nama' => "Siswa ".$x,
                'id_ortu' => $x,
                'id_guru' => 6,
                'kelas' => "2.C",
            ]);
            $x++;
            $create = Siswa::create([
                'nama' => "Siswa ".$x,
                'id_ortu' => $x,
                'id_guru' => 7,
                'kelas' => "3.A",
            ]);
            $x++;
            $create = Siswa::create([
                'nama' => "Siswa ".$x,
                'id_ortu' => $x,
                'id_guru' => 8,
                'kelas' => "3.B",
            ]);
            $x++;
            $create = Siswa::create([
                'nama' => "Siswa ".$x,
                'id_ortu' => $x,
                'id_guru' => 9,
                'kelas' => "3.C",
            ]);
        } 
        return "Success";
    }
    public function createDummyRapor(){
        for ($x = 1; $x <= 151; $x++) {
            $create = Rapor::create([
                'id_siswa' => $x,
                'semester' => 1,
            ]);
        } 
        return "Success";

    }

    public function createDummyNilai(){
        for ($x = 1; $x <= 10; $x++) {
            $create = Nilai::create([
                'nama' => "Tugas Menggambar ".$x,
                'nilai' => 50,
                'tipe' => 1,
                'id_pelajaran' => $x,
                'id_rapor' => $x,
            ]);
        } 
        return "Success";

    }
    public function createDummyAbsensi(){
        for ($x = 21; $x <= 40; $x++) {
            $create = Absensi::create([
                'id_siswa' => $x,
                'kehadiran' => 1,
            ]);
            $x++;
            $create = Absensi::create([
                'id_siswa' => $x,
                'kehadiran' => 2,
                'keterangan' => "DBD",
            ]);
            $x++;
            $create = Absensi::create([
                'id_siswa' => $x,
                'kehadiran' => 3,
                'keterangan' => "Lomba",
            ]);
        } 
        return "Success";
    }
    public function createDummyLaporan(){
        for ($x = 21; $x <= 30; $x++) {
            $create = Laporan::create([
                'id_siswa' => $x,
                'judul' => 'anak anda berkelahi',
                'detail' => 'berkelahi dengan temannya',
                'waktu' => '2019-04-05 08:00:00',
            ]);
            $x++;
            $create = Laporan::create([
                'id_siswa' => $x,
                'judul' => 'anak anda suka menabung',
                'detail' => 'suka sedekah',
                'waktu' => '2019-05-05 08:00:00',
            ]);
            $x++;
            $create = Laporan::create([
                'id_siswa' => $x,
                'judul' => 'anak anda nilainya bagus',
                'detail' => 'nilainya lebih dari 90',
                'waktu' => '2019-05-05 09:00:00',
            ]);
        } 
        return "Success";
    }
    public function createDummyKomentar(){
        for ($x = 1; $x <= 12; $x++) {
            $create = Komentar::create([
                'isi' => 'terima kasih atas laporannya',
                'id_laporan' => $x,
                'tipe' => 2
            ]);
            $x++;
            $create = Komentar::create([
                'isi' => 'saya mau protes',
                'id_laporan' => $x,
                'tipe' => 2
            ]);
        } 
        return "Success";
    }


    public function getAllOrtu(Request $request){
        $request->session()->put('user', 'username');
        return "success";
    }

    public function getAllOrtu3(Request $request){
        return "success";
    }
    
    public function getAllOrtu2(Request $request){
        return "berhasil yeay";
    }


}
