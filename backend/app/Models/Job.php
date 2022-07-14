<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
        "number_person",
        "company_id",
        "domain_id"
    ];

    public function domain(){
        return $this->belongsTo(Domain::class,"domains_id");
    }

    public function company(){
        return $this->belongsTo(Company::class,"companies_id");
    }

    

}
