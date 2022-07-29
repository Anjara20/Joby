<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Job;

class Featured_job extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = [
        'is_active',
        'job_id'
    ];

    public function job(){
        return $this->belongsTo(Job::class,'job_id');
    }

}
