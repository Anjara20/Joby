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
        "logo"
    ];
}
