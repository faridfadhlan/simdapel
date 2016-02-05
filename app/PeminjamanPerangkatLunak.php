<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PeminjamanPerangkatLunak extends Model
{
    protected $table = 'pl_transaksi';
    public $timestamps = false;
    protected $primaryKey='id';
    protected $fillable = [
        'tgl_pinjam', 
        'tgl_targetkembali',
        'tgl_kembali',
        'user_id',
        'operator_id',
        'keterangan',
        'pl_data_id',
    ];
    
    public function perangkatlunak(){
        return $this->belongsTo('\App\PerangkatLunak', 'pl_data_id', 'id');
    }
    
    public function peminjam(){
        return $this->belongsTo('\App\User', 'user_id', 'id');
    }
    
    public function operator(){
        return $this->belongsTo('\App\User', 'operator_id', 'id');
    }
}
