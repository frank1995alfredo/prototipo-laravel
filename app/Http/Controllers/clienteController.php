<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\cliente;
use Illuminate\Support\Carbon;
use Psr\Http\Message\ResponseInterface;

class clienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cliente = cliente::select('id', 'nomcliente', 'cedularuc', 'direccion', 
        'telefono1','fechareg', 'correoelec')->where('flag', '=', 1)->get(); 

        return response()->json([
            'res' => 'ok',
            'data' => $cliente
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
        $cliente =  new cliente();
        $nomcliente = $request->input('nomcliente');
        $cedularuc = $request->input('cedularuc');
        $direccion = $request->input('direccion');
        $telefono1 = $request->input('telefono1');
        $telefono2 = $request->input('telefono2');
        $correoelec = $request->input('correoelec');
        $comentario = $request->input('comentario');
        
        $cliente->nomcliente = $nomcliente;
        $cliente->cedularuc = $cedularuc;
        $cliente->direccion = $direccion;
        $cliente->telefono1 = $telefono1;
        $cliente->telefono2 = $telefono2;
        $cliente->correoelec = $correoelec;
        $cliente->comentario = $comentario;
        
        $cliente->fechareg = Carbon::now()->format('Y-m-d');

        $cliente->save();

        return response()->json([
            'res' => 'ok',
            'data' => $cliente
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($cedula)
    {
        $cliente = cliente::select('id', 'nomcliente', 'cedularuc', 'direccion', 
        'telefono1','fechareg')->where('cedularuc', 'like', $cedula)->count();
        
        if($cliente == 0) {
            return response()->json([
                'res' => 'bad',
                'data' => 'No existe este cliente'
            ], 422);
        } else {
            $cliente = cliente::select('id', 'nomcliente', 'cedularuc', 'direccion', 
            'telefono1','fechareg')->where('cedularuc', 'like', $cedula)->get();

            return response()->json([
                'res' => 'ok',
                'data' => $cliente
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
        $cliente = cliente::find($id);

        $nomcliente = $request->input('nomcliente');
        $cedularuc = $request->input('cedularuc');
        $direccion = $request->input('direccion');
        $telefono1 = $request->input('telefono1');
        $telefono2 = $request->input('telefono2');
        $correoelec = $request->input('correoelec');
        $comentario = $request->input('comentario');
        
        $cliente->nomcliente = $nomcliente;
        $cliente->cedularuc = $cedularuc;
        $cliente->direccion = $direccion;
        $cliente->telefono1 = $telefono1;
        $cliente->telefono2 = $telefono2;
        $cliente->correoelec = $correoelec;
        $cliente->comentario = $comentario;
        
        $cliente->save();

        return response()->json([
            'res' => 'ok',
            'data' => 'Cliente actualizado correctamente'
        ]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $id = cliente::find($id);
        $id->flag = 0;
        $id->save();
        return response()->json([
            'res' => 'ok',
            'data' => 'Resgistro eliminado correctamente'
        ],200);
    }
}
