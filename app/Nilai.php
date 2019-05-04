<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Nilai extends Model
{
    //
    protected $table = 'nilais';
    protected $fillable = ['nama', 'nilai','tipe', 'id_pelajaran'];
    protected $primaryKey = 'id';


    public function pelajaran()
    {
        return $this->belongsTo('App\Pelajaran');
    }
}
