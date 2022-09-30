<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Telefone;
use Illuminate\Http\Request;

class TelefoneController extends Controller
{
    public function index(){
        return response()->json(Telefone::all());
    }

    public function show($id){
        try {
            return response()->json(Telefone::find($id));
        } catch(\Exception $error){
            $responseError = [
                'Erro' => "Telefone com id:$id não encontrada!",
                'Exception' => $error->getMessage(),
            ];
            $statusHttp = 404;
            return response()->json($responseError, $statusHttp);
        }
    }
}
