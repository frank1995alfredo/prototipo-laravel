<?php

namespace App\Http\Controllers;

use App\tbllogin;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;

class UserController extends Controller
{
    public function authenticate(Request $request)
    {

        $credentials = $request->only('email', 'password');
        try {
            if (!$token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'invalid_credentials'], 400);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'could_not_create_token'], 500);
        }

        $rol = DB::table('users')->join('tipousuario', 'users.idtipouser', '=', 'tipousuario.id')->select('tipousuario.tipouser')
            ->where('users.email', '=', $request->input('email'))->get();

        //al hacer login, se guardan datos en la tabla login
        $login = new tbllogin();
        $login->idusuario = Auth::id();
        $login->Fecha = Carbon::now()->format('Y-m-d');
        $login->Horai = Carbon::now()->format('h:i:s');

        //me da la data de mi conexion, ip publica, pais, ciudad
        $ip = json_decode(file_get_contents('https://api64.ipify.org/?format=json'), true);


        //me da datos de geolocalizacion mas especificos dependiendo de la ip
        $latitud = json_decode(file_get_contents('https://api.ipgeolocation.io/ipgeo?apiKey=95b00e4192ee4232bb5a254f9c370999&ip=' . strval($ip['ip'])), true);

        $login->Latitud = $latitud['latitude'];
        $login->Longitud = $latitud['longitude'];

        $login->addip = $ip['ip'];
        $login->Estado = 1;
        $login->save();

        return response()->json([compact('token'), $rol], 200);
    }

    
    public function tipoUser() 
    {
        $user  = DB::table('users')->join('tipousuario', 'users.idtipouser', '=', 'tipousuario.id')->select('users.name')
        ->where('users.id', '=', Auth::id())->get();

        return response()->json([
              'res' => 'ok',
              'data' => $user
        ], 200);
    }


    public function logout() 
    {
        $fecha2 = Carbon::now()->format('Y-m-d');
        $horas = Carbon::now()->format('h:i:s');

        //busco el ultimo login
        $userlog = tbllogin::all();
        $login = $userlog->last();

        //me da la data de mi conexion, ip publica, pais, ciudad
        $ip = json_decode(file_get_contents('https://api64.ipify.org/?format=json'), true);
        //me da datos de geo.  localizacion mas especificos dependiendo de la ip
        $latitud = json_decode(file_get_contents('https://api.ipgeolocation.io/ipgeo?apiKey=95b00e4192ee4232bb5a254f9c370999&ip='.strval($ip['ip'])), true);

        $login->Latitud2 = $latitud['latitude'];
        $login->Longitud2 = $latitud['longitude'];
        $login->Fecha2 = $fecha2;
        $login->Horas = $horas;
        $login->addip = $ip['ip'];
        $login->save();

        return response()->json([
            'res' => 'ok'
      ], 200);
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'idtipouser' => 'required|integer'

        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors()->toJson(), 400);
        }
        $user = User::create([
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'password' => Hash::make($request->get('password')),
            'idtipouser' => $request->get('idtipouser'),
        ]);
        $token = JWTAuth::fromUser($user);

        return response()->json(compact('user', 'token'), 201);
    }
    public function getAuthenticatedUser()
    {
        try {
            if (!$user = JWTAuth::parseToken()->authenticate()) {
                return response()->json(['user_not_found'], 404);
            }
        } catch (TokenExpiredException $e) {
            return response()->json(['token_expired'], $e->getCode());
        } catch (TokenInvalidException $e) {
            return response()->json(['token_invalid'], $e->getCode());
        } catch (JWTException $e) {
            return response()->json(['token_absent'], $e->getCode());
        }
        return response()->json(compact('user'));
    }
}
