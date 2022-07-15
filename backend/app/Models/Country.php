<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;

    protected $guarded =[];

    protected $fillable = [
        "name"
    ];

    public function city(){
        return $this->hasOne(City::class,'country_id');
    }



}
