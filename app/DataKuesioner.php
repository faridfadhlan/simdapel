<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DataKuesioner extends Model
{
    //
    protected $table = 'data_kuesioner';
    public $timestamps = false;
    protected $fillable = ['nama_kuesioner'];
    
    public function subjek() {
        return $this->belongsTo(DataSubjek::class);
    }
    
}
