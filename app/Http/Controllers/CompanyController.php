<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class CompanyController extends Controller
{
    public function index() {
        return view('company.index', ['companies'=> \App\Company::all()]);
    }
    
    public function edit($id) {
        $company = \App\Company::find($id);
        return view('company.edit', ['company'=> $company]);
    }
    
    
    
    public function update($id) {        
        $company = \App\Company::find($id);       
        $company->update(array(
            'nama_company'=>Input::get('nama_company')
        ));
        return redirect('company');
    }
    
    public function create() {
        $company = new \App\Company;
        return view(
                'company.create', 
                [
                    'company'=> $company,
                ]);
    }
    
    public function save() {        
        $company = new \App\Company;       
        $company->nama_company = Input::get('nama_company');
        $company->save();
        return redirect('company');
    }
    
    public function remove( $id, Request $request ) {
        $company = Product::findOrFail( $id );

        if ( $request->ajax() ) {
            $company->delete( $request->all() );
            return response(['msg' => 'Company deleted', 'status' => 'success']);
        }
        return response(['msg' => 'Failed deleting the company', 'status' => 'failed']);
    }
}
