<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class DataInventoriController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        
    }
    
    public function index() {
        $data_inventoris = \Illuminate\Support\Facades\DB::table('data_inventori')->paginate(10);
        return view('data_inventori.index', compact('data_inventoris'));
    }
    
    public function edit($id) {
        $data = \App\DataInventori::find($id);
        $subjeks = \App\Subjek::lists('nama_subjek', 'id');
        return view('data_inventori.edit', ['data'=> $data, 'subjeks'=> $subjeks]);
    }
    
    public function update($id) {        
        $jenis = \App\Jenis::find($id);       
        $jenis->update(array(
            'nama_jenis'=>Input::get('nama_jenis')
        ));
        return redirect('jenis');
    }
    
    public function create() {
        $data = new \App\DataInventori;
        $subjeks = \App\Subjek::lists('nama_subjek', 'id');
        return view(
                'data_inventori.create', 
                [
                    'data'=> $data,
                    'subjeks' => $subjeks
                ]);
    }
    
    public function save() {        
        $jenis = new \App\Jenis;       
        $jenis->nama_jenis = Input::get('nama_jenis');
        $jenis->save();
        return redirect('jenis');
    }
}