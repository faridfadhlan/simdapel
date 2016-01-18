<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class LicenseController extends Controller
{
    public function index() {
        return view('license.index', ['licenses'=> \App\License::all()]);
    }
    
    public function edit($id) {
        $company = \App\License::find($id);
        return view('license.edit', ['license'=> $company]);
    }
    
    public function save($id) {    
        $license = \App\License::findOrNew($id);       
        $license->update(array(
            'nama_license'=>Input::get('nama_license')
        ));
        return redirect('license');
    }
}
