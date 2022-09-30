<?php

namespace Database\Factories;

use App\Models\Pessoa;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pessoa>
 */
class PessoaFactory extends Factory
{
    protected $model = Pessoa::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'nome'=> $this->faker->firstName($gender = null),
            'cpf'=> $this->faker->numberBetween($min= 10000000000,$max=20000000000 ),
            'email'=> $this->faker->email()
        ];
    }
}
