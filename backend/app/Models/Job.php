<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Domain;
use App\Models\City;
use App\Models\Job_type;
use App\Models\Featured_job;
use App\Models\Company;

class Job extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = [
        "name",
        "description",
        "poste",
        "salary",
        "currency",
        "types",
        "job_type_id",
        "number_person",
        "company_id",
        "domain_id",
        "city_id"
    ];

    public function featured_job(){
        return $this->hasOne(Featured_job::class,'job_id');
    }

    public function job_type(){
        return $this->belongsTo(Job_type::class, 'job_type_id');
    }
    public function city(){
        return $this->belongsTo(City::class, 'city_id');
    }

    public function company(){
        return $this->belongsTo(Company::class, 'company_id');
    }

    public function domain(){
        return $this->belongsTo(Domain::class, 'domain_id');
    }
    

}
