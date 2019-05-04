<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelajaran extends Model
{
    //
    protected $table = 'pelajaran';
    protected $fillable = ['nama'];
    protected $primaryKey = 'id';


    public function nilai()
    {
        return $this->hasMany('App\Nilai');
    }
}
