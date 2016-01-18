<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PerangkatLunak extends Model
{
    //
    protected $table = 'pl_data';
    public $timestamps = false;
    protected $primaryKey='id';
    protected $fillable = ['kode', 'nama', 'jumlah_media', 'manual', 'tgl_terima', 'media_id', 'license_id', 'jenis_id', 'company_id', 'tgl_expired', 'ket', 'create_time', 'operator_id'];
    
    public function company(){
        return $this->belongsTo('\App\Company', 'company_id', 'id');
    }
    
    public function license(){
        return $this->belongsTo('\App\License', 'license_id', 'id');
    }
    
    public function media(){
        return $this->belongsTo('\App\Media', 'media_id', 'id');
    }
    
    public function jenis() {
        return $this->belongsTo('\App\Jenis', 'jenis_id', 'id');
    }
    
    /*
    public function subjek() {
        return $this->belongsTo(DataSubjek::class);
    }
     * 
     */
}
