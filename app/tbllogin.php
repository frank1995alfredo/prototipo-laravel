<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tbllogin extends Model
{
    protected $table = 'tbllogin';
    
    protected $fillable = ['id', 'idusuario', 'Fecha', 'Horai', 
    'Fecha2', 'Horas', 'Latitud', 'Longitud', 'Latitud2', 'Longitud2', 
    'addip', 'asistencia', 'Estado', 'flag'];

    public $timestamps = false;
}
