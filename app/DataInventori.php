<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DataInventori extends Model
{
    protected $table = 'data_inventori';
    public $timestamps = false;
    protected $primaryKey='id';
    protected $fillable = array(
        'no_cd', 
        'label_cd', 
        'nama_data', 
        'tahun',
        'rincian',
        'format',
        'jumlah_rec',
        'file_size',
        'file_size_unit',
        'keterangan',
        'nama_layout',
        'subjek_id',
        'operator_id'
    );
    
    public function subjek(){
        return $this->belongsTo('\App\Subjek', 'subjek_id', 'id');
    }
    
    
}
