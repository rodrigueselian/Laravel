<?php

namespace Database\Factories;

use App\Models\Telefone;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Telefone>
 */
class TelefoneFactory extends Factory
{
    protected $model = Telefone::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'pessoa_id'=> $this->faker->numberBetween($min = 1, $max = 10),
            'number'=> $this->faker->e164PhoneNumber()
        ];
    }
}
