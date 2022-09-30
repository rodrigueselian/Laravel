<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Empresas;
use Illuminate\Http\Request;

class EmpresasController extends Controller
{
    public function index(){
        return response()->json(Empresas::all());
    }

    public function show($id){
        try {
            return response()->json(Empresas::find($id));
        } catch(\Exception $error){
            $responseError = [
                'Erro' => "Empresa com id:$id não encontrada!",
                'Exception' => $error->getMessage(),
            ];
            $statusHttp = 404;
            return response()->json($responseError, $statusHttp);
        }
    }
}
