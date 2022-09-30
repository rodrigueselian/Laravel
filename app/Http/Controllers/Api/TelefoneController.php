<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Telefone;
use Illuminate\Http\Request;
use App\Http\Requests\TelefoneRequest;

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

    public function store(TelefoneRequest $request){
        try {
            $newFone = $request->all();
            $fone = Telefone::create($newFone);

            return response()->json([
                'msg' => 'telefone cadastrado com sucesso!',
                'telefone' => $fone,
            ]);
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Erro ao cadastrar telefone!",
                'Exception' => $error->getMessage()
            ];

            if ($error instanceof QueryException)
                $statusHttp = 500;
            else $statusHttp = 400;
            return response()->json($responseError, $statusHttp);
        }
    }

    public function update(TelefoneRequest $request, $id){
        try {
            $newFone = Telefone::findOrfail($id);
            $newFone->update($request->all());
            return response()->json([
                'msg' => 'Telefone atualizado com sucesso!',
                'Telefone' => $newFone
            ]);
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Erro ao atualizar Telefone!",
                'Exception' => $error->getMessage()
            ];
            $statusHttp = 404;
            return response()->json($responseError, $statusHttp);
        }
    }

    public function delete($id){
        try {
            if (Telefone::findOrfail($id)->delete())
                return response()->json([
                    "msg" => "Telefone com id:$id removida!"
                ]);
            else throw new Exception("Erro ao deletar Telefone com id:$id.");
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Telefone com id:$id não foi removida!",
                'Exception' => $error->getMessage()
            ];
            $statusHttp = 500;
            return response()->json($responseError, $statusHttp);
        }
    }
}
