<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Komentar extends Model
{
    //

    protected $table = 'komentars';
    protected $fillable = ['isi', 'id_laporan'];
    protected $primaryKey = 'id';


    public function laporan()
    {
        return $this->belongsTo('App\Laporan');
    }
}
