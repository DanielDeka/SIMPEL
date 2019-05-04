<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ortu extends Model
{
    //
    protected $table = 'ortus';
    protected $fillable = ['nama', 'email','password', 'contact', 'alamat'];
    protected $primaryKey = 'id';


    public function siswa()
    {
        return $this->hasMany('App\Siswa', 'id_ortu');
    }
}
