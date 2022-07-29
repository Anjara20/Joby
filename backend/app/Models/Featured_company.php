<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Company;

class Featured_company extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = [
        'is_active'
    ];

    public function company(){
        return $this->belongsTo(Company::class, 'company_id');
    }
}
