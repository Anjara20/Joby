<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Arr;


class CityFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $cities = ['Mahajanga', 'Antananarivo', 'Antsirabe', 'Fianarantsoa', 'Morondava', 'Taolagnaro', 'Diego', 'Manakara', 'Morondava', 'Maintirano', 'Tamatave'];
        return [
            "name" => Arr::random($cities),
            "country_id" => rand(1,22)
        ];
    }
}
