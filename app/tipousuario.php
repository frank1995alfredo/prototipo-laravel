<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tipousuario extends Model
{
    protected $table = 'tipousuario';
    protected $fillable = ['id', 'tipouser'];

    public $timestamps = false;
}
