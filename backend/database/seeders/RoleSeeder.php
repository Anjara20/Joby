<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Role;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [
            ["role" => "admin"],
            ["role"=> "candidate"],
            ["role" => "employee"]
        ];
        foreach($roles as $r){
            Role::factory()->create($r);
        }
    }
}
