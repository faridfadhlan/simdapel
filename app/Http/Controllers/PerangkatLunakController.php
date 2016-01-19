<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Chumper\Datatable\Datatable;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class PerangkatLunakController extends Controller
{
    //
    public function index() {
        $pl_data = \App\PerangkatLunak::with('company','license')->paginate(10);
        return view('perangkat_lunak.index', compact('pl_data'));
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
    
    public function update($id) {    
        $perangkatlunak = \App\PerangkatLunak::find($id);       
        $perangkatlunak->update(array(
            'kode'=>  Input::get('kode'),
            'nama'=>  Input::get('nama'),
            'jumlah_media'=>  Input::get('jumlah_media'),
            'manual'=>  Input::get('manual'),
            'tgl_terima'=>  Input::get('tgl_terima'),
            'media_id'=>  Input::get('media_id'),
            'license_id'=>  Input::get('license_id'),
            'jenis_id'=>  Input::get('jenis_id'),
            'company_id'=>  Input::get('company_id'),
            'tgl_expired'=>  Input::get('tgl_expired'),
            'ket'=>  Input::get('ket'),
            'operator_id'=>  Input::get('operator_id'),
        ));
        return redirect('perangkatlunak');
    }
    
    public function save() {    
        $perangkatlunak = new \App\PerangkatLunak;       
        $perangkatlunak->kode = Input::get('kode');
        $perangkatlunak->nama = Input::get('nama');
        $perangkatlunak->jumlah_media = Input::get('jumlah_media');
        $perangkatlunak->manual = Input::get('manual');
        $perangkatlunak->tgl_terima = Input::get('tgl_terima');
        $perangkatlunak->media_id = Input::get('media_id');
        $perangkatlunak->license_id = Input::get('license_id');
        $perangkatlunak->jenis_id = Input::get('jenis_id');
        $perangkatlunak->company_id = Input::get('company_id');
        $perangkatlunak->tgl_expired = Input::get('tgl_expired');
        $perangkatlunak->ket =  Input::get('ket');
        $perangkatlunak->operator_id = '1';
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
    
    public function getDatatable()
    {
        return \Chumper\Datatable\Datatable::collection(\App\PerangkatLunak::all(array('id','nama')))
        ->showColumns('id', 'nama')
        ->searchColumns('nama')
        ->orderColumns('id','nama')
        ->make();
    }
}
