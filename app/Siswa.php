<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    //

    protected $table = 'siswas';
    protected $fillable = ['nama', 'id_ortu', 'id_guru', 'kelas'];
    protected $primaryKey = 'id';


    public function guru()
    {
        return $this->belongsTo('App\Guru', 'id_guru');
    }
    public function ortu()
    {
        return $this->belongsTo('App\Ortu', 'id_ortu');
    }
    public function rapor()
    {
        return $this->hasMany('App\Rapor', 'id_rapor');
    }
    public function absensi()
    {
        return $this->hasMany('App\Absensi', 'id_siswa');
    }
    public function laporan()
    {
        return $this->hasMany('App\Laporan', 'id_siswa');
    }

}
