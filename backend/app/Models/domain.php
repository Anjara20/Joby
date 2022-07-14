<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class domain extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = [
        "name"
    ];

    public function Jobs(){
        return $this->hasOne(Job::class,"domains_id");
    }
}
