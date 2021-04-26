<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Tymon\JWTAuth\Contracts\JWTSubject;

class usuario extends Model implements JWTSubject
{
    protected $table = 'users';
    protected $fillable  = ['id', 'correo', 'username', 'password', 'tipouser', 'fecha_reg', 'flag'];
    public $timestamps = false;

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }
    public function getJWTCustomClaims()
    {
        return [];
    }
}
