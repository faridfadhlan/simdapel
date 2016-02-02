<?php

namespace App;
use DB;
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
    
    public function get_this_kode() {
        $tertinggi = DB::table($this->table)
                     ->select(DB::raw('max(kode) as kode'))
                     ->where('jenis_id', '=', $this->jenis_id)
                     ->get();
        //$angkanol = array(0 => '000', 1=>'00', 2=>'0');
        //$next_kode = intval($tertinggi->kode)+1;
        return $tertinggi;//.':'.  intval($tertinggi);//->kode;
        //return $tertinggi;
        //$next_kode = intval($tertinggi->kode)+1;
        //return $angkanol[strlen($next_kode)].$next_kode;
    }
    
    /*
    public function subjek() {
        return $this->belongsTo(DataSubjek::class);
    }
     * 
     */
}
