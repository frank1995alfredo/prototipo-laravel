<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class cliente extends Model
{
    protected $table = 'cliente';
    protected $fillable = ['id', 'nomcliente', 'cedularuc', 'direccion', 'pais', 'ciudad', 
    'telefono1', 'telefono2', 'correoelec', 'comentario', 'fechareg', 'flag'];

    public $timestamps = false;
}
