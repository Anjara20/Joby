<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Arr;

class CompanyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "description" => $this->faker->text(100),
            "email" =>$this->faker->email(),
            "phone" => "+26133856789",
            "location" => "Street name road",
            "fax" => "+441619998888", 
            "website" => $this->faker->url(),
            "linkedin" => $this->faker->url(),
            "youtube" => $this->faker->url(),
            "facebook" => $this->faker->url(),
            "twitter" =>$this->faker->url(),
            "logo" =>$this->faker->imageUrl(),
            "city_id" =>$this->faker->numberBetween(0,12)
        ];
    }
}
