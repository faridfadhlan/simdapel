<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $table = 'pl_company';
    public $timestamps = false;
    protected $primaryKey='id';
    protected $fillable = array('nama_company');
    
    public function perangkatlunak(){
        return $this->hasMany('App\PerangkatLunak', 'company_id', 'id');
    }
    
}
