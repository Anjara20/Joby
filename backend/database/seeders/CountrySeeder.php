<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Country;

class CountrySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    
    public function run()
    {
        $countries = [
            ["name" =>"Diana"],
            ["name"=>"Sava"],
            ["name"=>"Itasy"],
            ["name" =>"Analamanga"],
            ["name" =>"Vakinankaratra"],
            ["name" =>"Bongolava"],
            ["name" =>"Sofia"],
            ["name"=>"Boeny"],
            ["name"=>"Betsiboka"],
            ["name"=>"Melaky"],
            ["name" =>"Alaotra-Mangoro"],
            ["name"=>"Atsinanana"],
            ["name"=>"Analanjirofo"],
            ["name" =>"Amoron'i Mania"],
            ["name"=>"Haute Matsiatra"],
            ["name"=>"Vatovavy"],
            ["name"=>"Fitovinany"],
            ["name"=>"Atsimo-Atsinanana"],
            ["name"=>"Ihorombe"],
            ["name"=>"Atsimo-Andrefana"],
            ["name"=>"Androy"],
            ["name"=>"Anosy"]
        ];
        foreach($countries as $c){
            Country::factory()->create($c);
        }
    }
}
