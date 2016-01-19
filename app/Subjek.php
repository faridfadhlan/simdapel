<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subjek extends Model
{
    protected $table = 'data_subjek';
    public $timestamps = false;
    protected $primaryKey='id';
    protected $fillable = array('nama_subjek');
    
    public function data_inventori(){
        return $this->hasMany('App\DataInventori', 'subjek_id', 'id');
    }
}
