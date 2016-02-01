<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seksi extends Model
{
    //
    protected $table = 'seksi';
    protected $prmaryKey = 'id';
    public $timestamps = false;
    
    public function bidang(){
        return $this->belongsTo('\App\Bidang', 'bidang_id', 'id');
    }
}
