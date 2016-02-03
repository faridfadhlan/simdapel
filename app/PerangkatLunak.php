<?php

namespace App;
use DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Model;
use Nicolaslopezj\Searchable\SearchableTrait;

class PerangkatLunak extends Model
{
    use SearchableTrait;
    
    protected $searchable = [
        'columns' => [
            'kode' => 10,
            'nama' => 10
        ],
    ];
    
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
    
    public function get_new_kode() {
        $tertinggi = DB::table($this->table)
                     ->select(DB::raw('substring(max(kode),-3) as kode'))
                     ->where('jenis_id', '=', $this->jenis_id)
                     ->first();
        $angkanol = array(0 => '000', 1=>'00', 2=>'0');
        $next_kode = (intval($tertinggi->kode)+1);
        return $this->jenis_id.$angkanol[strlen($next_kode)].$next_kode;     
    }
    
    public function get_current_kode($jenis_id_old) {
        if($jenis_id_old == $this->jenis_id) {
            return $this->kode;
        }
        else {
            return $this->get_new_kode();
        }
    }
    
    public function hapus_manual() {
        if(Storage::disk('manual')->has($this->manual) && $this->manual!=NULL) {
            Storage::disk('manual')->delete($this->manual);
            //print_r(Storage::disk('manual')->get($this->manual));
            
        }
    }


    public function need_rename($manual_old) {        
        if($manual_old != $this->manual && $manual_old != NULL) {
            Storage::disk('manual')->move($manual_old, $this->manual);
            return true;
        }
        return false;
    }
    /*
    public function subjek() {
        return $this->belongsTo(DataSubjek::class);
    }
     * 
     */
}
