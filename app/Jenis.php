<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jenis extends Model
{
    protected $table = 'pl_jenis';
    public $timestamps = false;
    protected $primaryKey='id';
    protected $fillable = array('nama_jenis');
    
    public function perangkatlunak(){
        return $this->hasMany('App\PerangkatLunak', 'jenis_id', 'id');
    }
}
