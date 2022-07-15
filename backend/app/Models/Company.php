<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = [
        "name",
        "description",
        "email",
        "phone",
        "location",
        "fax",
        "website",
        "linkedin",
        "youtube",
        "facebook",
        "twitter",
        "logo",
        "city_id"
    ];

    public function featured_company(){
        return $this->hasOne(Featured_company::class,'company_id');
    }

    public function city(){
        return $this->belongsTo(City::class,'city_id');
    }

    public function job(){
        return $this->hasMany(Job::class, 'company_id');
    }
}
