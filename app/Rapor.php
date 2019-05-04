<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rapor extends Model
{
    //
    protected $table = 'rapors';
    protected $fillable = ['id_siswa', 'semester'];
    protected $primaryKey = 'id';


    public function nilai()
    {
        return $this->hasMany('App\Nilai', 'id_rapor');
    }

    public function siswa()
    {
        return $this->belongsTo('App\Siswa', 'id_siswa');
    }
}
