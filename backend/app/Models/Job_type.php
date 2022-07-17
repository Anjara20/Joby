<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Job_type extends Model
{
    use HasFactory;
    
    protected $guarded = [];

    protected $fillable = [
        'name'
    ];

    public function job(){
        return $this->hasOne(Job::class, 'job_type_id');
    }
}
