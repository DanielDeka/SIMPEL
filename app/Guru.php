<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Guru extends Model
{
    //

    protected $table = 'gurus';
    protected $fillable = ['nama', 'email', 'password', 'contact', 'updated_at'];
    protected $primaryKey = 'id';

    public function siswa()
    {
        return $this->hasMany('App\Siswa', 'id_guru');
    }

}
