<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Media extends Model
{
    protected $table = 'pl_media';
    public $timestamps = false;
    protected $primaryKey='id';
    protected $fillable = array('nama_media');
    
    public function perangkatlunak(){
        return $this->hasMany('App\PerangkatLunak', 'media_id', 'id');
    }
}
