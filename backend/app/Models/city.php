<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = [
        "name",
        "country_id"
    ];

    public function country(){
        return $this->belongsTo(Country::class,'country_id');
    }

    public function company(){
        return $this->hasOne(Company::class,'city_id');
    }

    public function job(){
        return $this->hasOne(Job::class, 'city_id');
    }
}
