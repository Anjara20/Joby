<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Job_type;

class JobTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $kinds = [
            ["name"=>"full-time"],
            ["name"=>"part-time"],
            ["name"=>"internship"],
            ["name"=>"freelancing"],
            ["name"=>"remote-job"]
        ];
        foreach($kinds as $k){
            Job_type::factory()->create($k);
        };
    }
}
