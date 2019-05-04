<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Absensi extends Model
{
    //
    protected $table = 'absensis';
    protected $fillable = ['id_siswa', 'kehadiran', 'keterangan', 'created_at'];
    protected $primaryKey = 'id';
    

    public function siswa()
    {
        return $this->belongsTo('App\Siswa', 'id_siswa');
    }

}
