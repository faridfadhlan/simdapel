<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class SubjekController extends Controller
{
    //
    
    public function index() {
        return view('subjek.index', ['subjeks'=>  \App\DataSubjek::all()]);
    }
    
    public function view($id){
        return view('subjek.view', ['subjek'=> \App\DataSubjek::findOrFail($id)]);
    }
}