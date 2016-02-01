<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Datatables;
use Input;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class PermohonanDataBPSController extends Controller
{
    /*
    public function __construct(){
        $this->middleware('operator');
    }*/
    
    public function index() {
        
    }
    
    public function create() {
        $data = new \App\PermohonanDataBPS;
        $users = \App\User::all();
        $datas = \App\DataInventori::all();
        return view('permohonandata.create', ['data'=>$data, 'users'=>$users, 'datas'=>$datas]);
    }
    
    public function simpan(Request $request) {
        $permohonandatabps = new \App\PermohonanDataBPS;
        $permohonandatabps->no_surat = $request->input('no_surat');
        $permohonandatabps->pegawai_id = $request->input('pegawai_id');
        $permohonandatabps->data_inventori_id = $request->input('data_inventori_id');
        $permohonandatabps->data_diminta = $request->input('data_diminta');        
        $permohonandatabps->operator_id = '17';
        $permohonandatabps->save();
        return redirect('permohonan_data/create');
    }
    
    public function get_ajax_data() {
        $datas = \App\DataInventori::select(['id','no_cd','label_cd','nama_data','rincian','tahun']);
        return Datatables::of($datas)
            ->addColumn('action', function ($data) {
                return '<a href="#" onclick="pilih_data(\''.$data->id.'\',\''.$data->nama_data.'\',\''.$data->tahun.'\')" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Pilih Data</a>';
            })
            ->make(true);
        
        
        //return Datatables::of($datas)->make();
        /*$datas = \App\DataInventori::paginate(10);
        return view('permohonandata.ajax_data', ['datas'=>$datas]);*/
    }
    
    public function get_modal_data() {
        return view('permohonandata.modal_data');
    }
    
    
}
