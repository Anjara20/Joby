<?php

namespace Database\Seeders;

use App\Models\Domain;
use Illuminate\Database\Seeder;

class DomainSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $array_of_domain=[
            "Architecture and engineering",
            "Arts, culture and entertainment",
            " Business, management and administration",
            "Communications",
            "Community and social services",
            " Education",
            "Science and technology",
            "Installation, repair and maintenance",
            "Farming, fishing and forestry",
            "Government",
            "Health and medicine",
            "Law and public policy",
        ];
       collect($array_of_domain)->each(function($array_of_domain){
           Domain::factory()->create([
                "name" => $array_of_domain
           ]);
       });
    }
}
