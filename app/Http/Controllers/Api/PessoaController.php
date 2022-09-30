<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Pessoa;
use Illuminate\Http\Request;


class PessoaController extends Controller
{
    public function index(){
        return response()->json(Pessoa::all());
    }

    public function show($id){
        try {
            return response()->json(Pessoa::find($id));
        } catch(\Exception $error){
            $responseError = [
                'Erro' => "Pessoa com id:$id não encontrada!",
                'Exception' => $error->getMessage(),
            ];
            $statusHttp = 404;
            return response()->json($responseError, $statusHttp);
        }
    }
}
