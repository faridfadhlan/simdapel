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
        $datas = \App\PermohonanDataBPS::paginate(10);
        return view('permohonandata.index', ['datas'=>$datas]);
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
        return redirect('permohonan_data/index');
    }
    
    public function simpan_individu(Request $request) {
        $permohonandatabps = new \App\PermohonanDataBPS;
        $permohonandatabps->jenis_identitas = $request->input('jenis_identitas');
        $permohonandatabps->no_identitas = $request->input('no_identitas');
        $permohonandatabps->nama = $request->input('nama');
        $permohonandatabps->umur = $request->input('umur'); 
        $permohonandatabps->jk = $request->input('jk');
        $permohonandatabps->pendidikan_terakhir = $request->input('pendidikan_terakhir');
        $permohonandatabps->alamat = $request->input('alamat');
        $permohonandatabps->telp = $request->input('telp');
        $permohonandatabps->pekerjaan = $request->input('pekerjaan');
        $permohonandatabps->nama_instansi = $request->input('nama_instansi');
        $permohonandatabps->email = $request->input('email');
        $permohonandatabps->data_diminta = $request->input('data_diminta');
        $permohonandatabps->pnbp = $request->input('pnbp');
        
            $permohonandatabps->proses_data = $request->input('proses_data');
            $permohonandatabps->size = $request->input('size');
        
        $permohonandatabps->status_id = '1';
        $permohonandatabps->operator_id = '17';
        $permohonandatabps->data_inventori_id = $request->input('data_inventori_id');
        $permohonandatabps->save();
        return redirect('permohonan_data/index');
    }
    
    public function simpan_instansi(Request $request) {
        
        $permohonandatabps = new \App\PermohonanDataBPS;
        $permohonandatabps->no_surat= $request->input('no_surat');
        $permohonandatabps->nama_instansi = $request->input('nama_instansi');
        $permohonandatabps->kategori_instansi = $request->input('kategori_instansi'); ;
        $permohonandatabps->alamat = $request->input('alamat');
        $permohonandatabps->telp = $request->input('telp');
        $permohonandatabps->nama_kepala = $request->input('nama_kepala');
        $permohonandatabps->data_diminta = $request->input('data_diminta');
        $permohonandatabps->pnbp = $request->input('pnbp');
        $permohonandatabps->proses_data = $request->input('proses_data');
        $permohonandatabps->size = $request->input('size');
        
        $permohonandatabps->status_id = '1';
        $permohonandatabps->operator_id = '17';
        $permohonandatabps->data_inventori_id = $request->input('data_inventori_id');
        $permohonandatabps->save();
        
         
        return redirect('permohonan_data/index');
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
