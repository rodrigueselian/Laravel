<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Telefone extends Model
{
    use HasFactory;
    protected $fillable = ['pessoa_id','number'];

    public function pessoas(){
        return $this->belongsTo(Pessoa::class);
    }
}
