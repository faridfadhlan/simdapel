<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Auth;
use Datatables;
use URL;
use App\Http\Controllers\Controller;

class PerangkatLunakController extends Controller
{
    //
    
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index() {
        //$pl_data = \App\PerangkatLunak::with('company','license')->paginate(10);
        return view('perangkat_lunak.index');
    }
    
    public function create() {
        $pl_data = new \App\PerangkatLunak;
        $medias = \App\Media::lists('nama_media', 'id');
        $licenses = \App\License::lists('nama_license', 'id');
        $jenises = \App\Jenis::lists('nama_jenis', 'id');
        $companies = \App\Company::lists('nama_company', 'id');
        return view(
                'perangkat_lunak.create', 
                [
                    'pl_data'=> $pl_data, 
                    'medias'=>$medias,
                    'licenses'=>$licenses,
                    'jenises'=>$jenises,
                    'companies'=>$companies
                ]);
    }
    
    public function edit($id) {
        $pl_data = \App\PerangkatLunak::find($id);
        $medias = \App\Media::lists('nama_media', 'id');
        $licenses = \App\License::lists('nama_license', 'id');
        $jenises = \App\Jenis::lists('nama_jenis', 'id');
        $companies = \App\Company::lists('nama_company', 'id');
        return view(
                'perangkat_lunak.edit', 
                [
                    'pl_data'=> $pl_data, 
                    'medias'=>$medias,
                    'licenses'=>$licenses,
                    'jenises'=>$jenises,
                    'companies'=>$companies
                ]);
    }
    
    public function update(Request $request, $id) {  
        
        $perangkatlunak = \App\PerangkatLunak::find($id);
        
        $jenis_id_old = $perangkatlunak->jenis_id;
        $manual_old = $perangkatlunak->manual;
        
        $manual = NULL;
        
        $perangkatlunak->jenis_id = $request->input('jenis_id');
        $perangkatlunak->kode = $perangkatlunak->get_current_kode($jenis_id_old);
        
        if ($request->hasFile('manual')) {
            $perangkatlunak->hapus_manual();
            $filenya = $request->file('manual');
            $manual = $perangkatlunak->kode.'.'.$filenya->getClientOriginalExtension();
            $filenya->move('storage/manual', $manual);
            $perangkatlunak->manual = $manual;
        }
        
        else {
            $perangkatlunak->need_rename($manual_old);
        }
        
        
        $perangkatlunak->nama = $request->input('nama');
        $perangkatlunak->jumlah_media = $request->input('jumlah_media');
        $perangkatlunak->tgl_terima = $request->input('tgl_terima');
        $perangkatlunak->media_id = $request->input('media_id');
        $perangkatlunak->license_id = $request->input('license_id');
        $perangkatlunak->company_id = $request->input('company_id');
        $perangkatlunak->tgl_expired = $request->input('tgl_expired');
        $perangkatlunak->ket =  $request->input('ket');
        $perangkatlunak->operator_id = Auth::user()->id;
        $perangkatlunak->save();
        return redirect('perangkatlunak');
    }
    
    public function save(Request $request) {    
        $perangkatlunak = new \App\PerangkatLunak;     
        $perangkatlunak->jenis_id = $request->input('jenis_id');  
        $perangkatlunak->kode = $perangkatlunak->get_new_kode();
        $perangkatlunak->nama = $request->input('nama');
        $perangkatlunak->jumlah_media = $request->input('jumlah_media');
        $perangkatlunak->tgl_terima = $request->input('tgl_terima');
        $perangkatlunak->media_id = $request->input('media_id');
        $perangkatlunak->license_id = $request->input('license_id');
        $perangkatlunak->company_id = $request->input('company_id');
        $perangkatlunak->tgl_expired = $request->input('tgl_expired');
        $perangkatlunak->ket =  $request->input('ket');
        $perangkatlunak->operator_id = Auth::user()->id;
        
        if ($request->hasFile('manual')) {
            $filenya = $request->file('manual');
            $manual = $perangkatlunak->kode.'.'.$filenya->getClientOriginalExtension();
            $filenya->move('storage/manual', $manual);
            $perangkatlunak->manual = $manual;
        }
        
        $perangkatlunak->save();
        return redirect('perangkatlunak');
    }
    
    public function search() {
        $keyword = Input::get($keyword);
        $perangkatlunak = \App\PerangkatLunak::search(Input::get($keyword))->get();
        print_r($perangkatlunak);
    }
    
    public function test() {
        return view('perangkat_lunak.test');
    }
    
    public function get_ajax_data()
    {
        //$pl = \App\PerangkatLunak::select(['kode','nama','jumlah_media','company_id','license_id','manual']);
        //pl = DB::table('pl_data')->select('kode','nama','jumlah_media','company_id','license_id','manual')->get();
        $datas = \App\PerangkatLunak::join('pl_company', 'pl_data.company_id', '=', 'pl_company.id')
                ->join('pl_license', 'pl_data.license_id', '=', 'pl_license.id')
                ->select(['pl_data.id','kode', 'nama', 'jumlah_media', 'pl_company.nama_company', 'pl_license.nama_license', 'manual']);
        return Datatables::of($datas)
                ->editColumn('manual', '<a href="#">{{ $manual }}</a>')
                ->addColumn('action', function ($data) {
                        return '<a href="'.URL::to('perangkatlunak/edit/'.$data->id).'"><i class="fa fa-edit"></i></a><a href="#"><i class="fa fa-remove"></i></a>';
                    })
                ->make(true);
    }
}
