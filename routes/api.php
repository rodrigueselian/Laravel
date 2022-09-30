<?php

use App\Http\Controllers\Api\EmpresasController;
use App\Http\Controllers\Api\PessoaController;
use App\Http\Controllers\Api\TelefoneController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/pessoa',[PessoaController::class,'index']);
Route::get('/pessoa/{id}',[PessoaController::class,'show']);

Route::get('/empresa',[EmpresasController::class,'index']);
Route::get('/empresa/{id}',[EmpresasController::class,'show']);

Route::get('/telefone',[TelefoneController::class,'index']);
Route::get('/telefone/{id}',[TelefoneController::class,'show']);