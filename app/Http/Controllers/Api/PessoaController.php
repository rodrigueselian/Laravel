<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Pessoa;
use Illuminate\Http\Request;
use App\Http\Requests\PessoaRequest;


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

    public function store(PessoaRequest $request){
        try {
            $newPessoa = $request->all();
            $pessoa = Pessoa::create($newPessoa);

            return response()->json([
                'msg' => 'Pessoa cadastrada com sucesso!',
                'pessoa' => $pessoa,
            ]);
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Erro ao cadastrar pessoa!",
                'Exception' => $error->getMessage()
            ];

            if ($error instanceof QueryException)
                $statusHttp = 500;
            else $statusHttp = 400;
            return response()->json($responseError, $statusHttp);
        }
    }

    public function update(PessoaRequest $request, $id){
        try {
            $newPessoa = Pessoa::findOrfail($id);
            $newPessoa->update($request->all());
            return response()->json([
                'msg' => 'Pessoa atualizado com sucesso!',
                'Pessoa' => $newPessoa
            ]);
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Erro ao atualizar Pessoa!",
                'Exception' => $error->getMessage()
            ];
            $statusHttp = 404;
            return response()->json($responseError, $statusHttp);
        }
    }

    public function delete($id){
        try {
            if (Pessoa::findOrfail($id)->delete())
                return response()->json([
                    "msg" => "Pessoa com id:$id removida!"
                ]);
            else throw new Exception("Erro ao deletar pessoa com id:$id.");
        } catch (\Exception $error) {
            $responseError = [
                'Erro' => "Pessoa com id:$id não foi removida!",
                'Exception' => $error->getMessage()
            ];
            $statusHttp = 500;
            return response()->json($responseError, $statusHttp);
        }
    }

    public function telefones(Pessoa $pessoa){
        return response()->json($pessoa->load('telefones'));
    }
}
