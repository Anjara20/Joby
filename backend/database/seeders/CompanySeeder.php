<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Company;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $company_name = ["NogaeDev", "EDev", "TechMania", "Tecko", "ShareIT"];
        foreach($company_name as $c){
            Company::factory()->create([
                "name"=>$c
            ]);
        }
    }
}
