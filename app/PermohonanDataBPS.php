<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PermohonanDataBPS extends Model
{
    protected $table = 'permohonan_data_nonbps';
    protected $primaryKey = 'id';
    public $timestamps = false;
    
    public function peminjam_bps() {
        return $this->belongsTo('\App\User', 'pegawai_id', 'id');
    }
    
    public function data_inventori() {
        return $this->belongsTo('\App\DataInventori', 'data_inventori_id', 'id');
    }
}
