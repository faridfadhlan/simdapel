<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class JenisController extends Controller
{
    public function index() {
        return view('jenis.index', ['jenises'=> \App\Jenis::all()]);
    }
    
    public function edit($id) {
        $jenis = \App\Jenis::find($id);
        return view('jenis.edit', ['jenis'=> $jenis]);
    }
    
    public function save($id) {        
        $jenis = \App\Jenis::find($id);       
        $jenis->update(array(
            'nama_jenis'=>Input::get('nama_jenis')
        ));
        return redirect('jenis');
    }
    
    public function remove( $id, Request $request ) {
        $jenis = Product::findOrFail( $id );

        if ( $request->ajax() ) {
            $company->delete( $request->all() );
            return response(['msg' => 'Company deleted', 'status' => 'success']);
        }
        return response(['msg' => 'Failed deleting the company', 'status' => 'failed']);
    }
}
