<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Laporan extends Model
{
    //
    protected $table = 'laporans';
    protected $fillable = ['id_siswa', 'judul','detail', 'waktu'];
    protected $primaryKey = 'id';


    public function komentar()
    {
        return $this->hasMany('App\Komentar', 'id_laporan');
    }

    public function siswa()
    {
        return $this->belongsTo('App\Siswa', 'id_siswa');
    }
}
