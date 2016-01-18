<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class License extends Model
{
    //
    protected $table = 'pl_license';
    public $timestamps = false;
    protected $primaryKey='id';
    protected $fillable = array('nama_license');
    
    public function perangkatlunak(){
        return $this->hasMany('App\PerangkatLunak', 'license_id', 'id');
    }
}
