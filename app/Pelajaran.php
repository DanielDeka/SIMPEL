<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelajaran extends Model
{
    //
    protected $table = 'pelajarans';
    protected $fillable = ['nama'];
    protected $primaryKey = 'id';


    public function nilai()
    {
        return $this->hasMany('App\Nilai', 'id_pelajaran');
    }
}
