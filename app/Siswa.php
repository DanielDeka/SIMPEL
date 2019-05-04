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
        return $this->belongsTo('App\Guru');
    }
    public function ortu()
    {
        return $this->belongsTo('App\Ortu');
    }
    public function rapor()
    {
        return $this->belongsTo('App\Rapor');
    }
    public function absensi()
    {
        return $this->hasMany('App\Absensi');
    }
    public function laporan()
    {
        return $this->hasMany('App\Laporan');
    }

}
