<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Domain extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = [
        "name"
    ];

    public function job(){
        return $this->hasMany(Job::class, 'domain_id');
    }
}
