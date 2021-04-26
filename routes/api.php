<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('register', 'UserController@register');
 Route::post('login', 'UserController@authenticate');

Route::group(['middleware' => ['jwt.verify']], function () {
    Route::get('user', 'UserController@getAuthenticatedUser');


    /* CATEGORIAS */
    Route::get('/listaTipoUsuario', 'tipousuarioController@index');
    Route::post('/agregarTipoUsuario', 'tipousuarioController@store');
    Route::get('/buscarTipoUsuario/{tipouser}', 'tipousuarioController@show');
    Route::put('/actualizarTipoUsuario/{id}', 'tipousuarioController@update');
    Route::delete('/eliminarTipoUsuario/{tipouser}', 'tipousuarioController@destroy');

    /* CLIENTE */
    Route::get('/listaCliente', 'clienteController@index');
    Route::post('/agregarCliente', 'clienteController@store');
    Route::get('/buscarCliente/{cedula}', 'clienteController@show');
    Route::put('/actualizarCliente/{id}', 'clienteController@update');
    Route::delete('/eliminarCliente/{id}', 'clienteController@destroy');
});
