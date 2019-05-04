<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Guru extends Model
{
    //

    protected $table = 'gurus';
    protected $fillable = ['nama', 'email', 'password', 'contact'];
    protected $primaryKey = 'id';


}
