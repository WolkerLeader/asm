<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Banner>
 */
class BannerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name_banner'=>fake()->name(),
            'image'=>'https://tse4.mm.bing.net/th?id=OIP.1z6T0CoDDbF4JaK9Nx814QHaE5&pid=Api&P=0&h=180',
        ];
    }
}
