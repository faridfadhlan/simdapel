<?php

namespace App\Http\Controllers;

use App\Subjek;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class SubjekController extends Controller
{
    //
    
    public function index() {
        return view('subjek.index', ['subjeks'=>  Subjek::paginate(10)]);
    }

    public function create() {
        $subjek = new Subjek;
        return view('subjek.create', ['subjek'=>$subjek]);
    }

    public function save() {
        $subjek = new Subjek();
        $subjek->nama_subjek = Input::get('nama_subjek');
        $subjek->save();
        return redirect('subjek');
    }

    public function edit($id) {
        $subjek = Subjek::find($id);
        return view('subjek.edit', ['subjek'=> $subjek]);
    }

    public function update($id) {
        $subjek = Subjek::find($id);
        $subjek->update(array(
            'nama_subjek'=>Input::get('nama_subjek')
        ));
        return redirect('subjek');
    }
}