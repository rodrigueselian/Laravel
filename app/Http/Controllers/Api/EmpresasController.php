<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Empresas;
use Illuminate\Http\Request;
use App\Http\Requests\EmpresasRequest;

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

    public function store(EmpresasRequest $request){
        try {
            $newEmpresa = $request->all();
            $Empresa = Empresas::create($newEmpresa);

            return response()->json([
                'msg' => 'Empresas cadastrada com sucesso!',
                'Empresa' => $Empresa,
            ]);
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Erro ao cadastrar Empresas!",
                'Exception' => $error->getMessage()
            ];

            if ($error instanceof QueryException)
                $statusHttp = 500;
            else $statusHttp = 400;
            return response()->json($responseError, $statusHttp);
        }
    }

    public function update(EmpresasRequest $request, $id){
        try {
            $newEmpresa = Empresas::findOrfail($id);
            $newEmpresa->update($request->all());
            return response()->json([
                'msg' => 'Empresa atualizado com sucesso!',
                'Empresa' => $newEmpresa
            ]);
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Erro ao atualizar Empresa!",
                'Exception' => $error->getMessage()
            ];
            $statusHttp = 404;
            return response()->json($responseError, $statusHttp);
        }
    }

    public function delete($id){
        try {
            if (Empresas::findOrfail($id)->delete())
                return response()->json([
                    "msg" => "Empresa com id:$id removida!"
                ]);
            else throw new Exception("Erro ao deletar Empresa com id:$id.");
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Empresa com id:$id não foi removida!",
                'Exception' => $error->getMessage()
            ];
            $statusHttp = 500;
            return response()->json($responseError, $statusHttp);
        }
    }
}
