<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Nilai extends Model
{
    //
    protected $table = 'nilais';
    protected $fillable = ['nama', 'nilai','tipe', 'id_pelajaran', 'id_rapor'];
    protected $primaryKey = 'id';


    public function pelajaran()
    {
        return $this->belongsTo('App\Pelajaran', 'id_pelajaran');
    }

    public function rapor()
    {
        return $this->belongsTo('App\Rapor', 'id_rapor');
    }
}
