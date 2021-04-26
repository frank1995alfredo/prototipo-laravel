<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\tipousuario;
use Illuminate\Support\Facades\DB;


class tipousuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tipousuario = DB::table('tipousuario')
        ->select('id', 'tipouser', 'flag as estado')
        ->where('flag', '=', 1)
        ->get();

        return response()->json([
            'res' => 'ok',
            'data' => $tipousuario
        ], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tipousuario = new tipousuario();
        $tipouser = $request->input('tipouser');


        if ($tipouser == "" or $tipouser == null) {
            return response()->json([
                'res' => 'bad',
                'data' => 'Ingrese un tipo de usuario'
            ], 422);
        }

        $tipousuario->tipouser = $tipouser;
        $tipousuario->save();

        return response()->json([
            'res' => 'ok',
            'data' => $tipousuario
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($tipouser)
    {
        $tipousuario = tipousuario::select('id', 'tipouser')->where('tipouser','like',$tipouser)->count();

         if($tipousuario == 0) {
            return response()->json([
                'res' => 'bad',
                'data' => 'No existe este usuario'
            ], 422);
         } else {
            $tipousuario = tipousuario::select('id', 'tipouser')->where('tipouser','like',$tipouser)->get(); 
            return response()->json([
                'res' => 'ok',
                'data' => $tipousuario
            ], 200);
         }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tipouser = tipousuario::find($id);
        
        $tipou = $request->input('tipouser');
        $flag = $request->input('flag');

        if($tipou == "" or $tipou ==  null) {
            return response()->json([
                'res' => 'bad',
                'data' => 'Ingrese un tipo de usuario.'
            ], 422);
        }

        $tipouser->tipouser = $tipou;
        $tipouser->flag  = $flag;
        $tipouser->save();
   
        return response()->json([
            'res' => 'ok',
            'data' => $tipouser
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($tipouser)
    {
        $id = tipousuario::find($tipouser);
        $id->flag = 0;
        $id->save();
        return response()->json([
            'res' => 'ok',
            'data' => $id
        ],200);
    }
}
