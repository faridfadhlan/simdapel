<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PeminjamanPerangkatLunak;
use App\PerangkatLunak;
use App\Http\Requests;
use Auth;
use Form;
use Illuminate\Support\Facades\Cookie;
use App\Http\Controllers\Controller;

class PeminjamanPerangkatLunakController extends Controller
{
    public function index() {
        $transaksis = PeminjamanPerangkatLunak::all();
        return view('peminjaman_pl.index', ['transaksis'=>$transaksis]);
    }
    
    public function pilihdulu() {
        
    }
    
    public function get_seksi_from_bidang($bidang_id){
        $seksis = \App\Seksi::where('bidang_id', '=', $bidang_id)->lists('nama_seksi', 'id');
        return Form::select('seksi_id', $seksis, $value=null, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Seksi Peminjam...', 'id'=>'seksi'));
    }
    
    public function get_user_from_seksi($seksi_id){
        $users = \App\User::where('seksi_id', '=', $seksi_id)->lists('nama', 'id');
        return Form::select('user_id', $users, $value=null, $attributes=array('class'=>'form-control','placeholder'=>'Pilih Nama Peminjam...', 'id'=>'user'));
    }
    
    public function create() {
        $peminjaman = new PeminjamanPerangkatLunak;
        //Cookie::forget('pl_id');
        $pl_id = Cookie::get('pl_id');
        $bidangs = \App\Bidang::lists('nama_bidang', 'id');
        $seksis = \App\Seksi::lists('nama_seksi','id');
        //$seksis = \App\Seksi::lists('nama_seksi','id');
        //if($pl_id != NULL) {
            //$pl_data = 
            //print_r($pl_data->id);exit;
            
            return view('peminjaman_pl.create',[
                'peminjaman'=>$peminjaman,
                'pl_data'=>($pl_id == NULL?$pl_id:PerangkatLunak::find($pl_id)),
                'seksis'=>$seksis,
                'bidangs'=>$bidangs
            ]);
        //}
        //else {
        //    echo 'Cookie kosong';
        //}
        //else {
        //    $this->pilihdulu();
        //}
    }
    
    public function save(Request $request) {
        Cookie::queue('pl_id', NULL);
        
        $peminjaman_pl = new PeminjamanPerangkatLunak;
        $peminjaman_pl->tgl_pinjam = $request->input('tgl_pinjam');
        $peminjaman_pl->tgl_targetkembali = $request->input('tgl_targetkembali');
        $peminjaman_pl->user_id = $request->input('user_id');
        $peminjaman_pl->operator_id = Auth::user()->id;
        $peminjaman_pl->keterangan = $request->input('keterangan');
        $peminjaman_pl->pl_data_id = $request->input('pl_data_id');
        $peminjaman_pl->save();
        
        return redirect('peminjaman_perangkatlunak/index');
    }
}
